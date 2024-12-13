import psycopg2
from data_classes import Customer, Seller, Product, Order, ProductReview, State

def print_menu() -> int:
    """
    Displays the menu options and returns the user's choice as an integer.
    """
    # Display the menu options
    print("\nSelect an option:")
    print("0. Exit the program.")
    print("1. Display all records from all tables in all databases.")
    print("2. Find the cheapest product across all databases.")
    print("3. Get all products from a database.")
    print("4. Get reviews by product name")

    # Get the user's choice
    choice = input("Enter your choice: ")

    # check if choice is integer and in range of the menu
    if choice.isdigit():
        return int(choice)
    
    return -1


def get_db_data(conn_strs: list[str]) -> tuple[list[Customer], list[Seller], list[Product], list[Order], list[ProductReview]]:
    """
    Get all data from all databases and store them in objects.
    """

    # Initialize lists to store data
    customers = []
    sellers = []
    products = []
    orders = []
    product_reviews = []


    for origin, conn_str in enumerate(conn_strs):

        # Connect to the database
        conn = psycopg2.connect(conn_str)
        cur = conn.cursor()

        # get all customers
        cur.execute("SELECT * FROM customers")
        res = cur.fetchall()
        customers.extend([Customer(*r, origin=origin) for r in res])

        # get all sellers
        cur.execute("SELECT * FROM sellers")
        res = cur.fetchall()
        sellers.extend([Seller(*r, origin=origin) for r in res])

        # get all products
        cur.execute("SELECT * FROM products")
        res = cur.fetchall()
        for r in res: 
            products.append(Product(r[0], r[1], r[2], [s for s in sellers if s.id == r[3]][0], origin))
        
        # get all orders
        cur.execute("SELECT * FROM orders")
        res = cur.fetchall()
        for r in res:
            orders.append(Order(r[0], [p for p in products if p.id == r[1]][0], [c for c in customers if c.id == r[2]][0], origin))
        
        # get all product reviews
        cur.execute("SELECT * FROM ProductReviews")
        res = cur.fetchall()
        for r in res:
            product_reviews.append(ProductReview(r[0], [p for p in products if p.id == r[1]][0], [c for c in customers if c.id == r[2]][0], r[3], origin))
        
        cur.close()
        conn.close()
    
    return customers, sellers, products, orders, product_reviews

def save_data(conn_strs: list[str] ,customers: list[Customer], sellers: list[Seller], products: list[Product], orders: list[Order], product_reviews: list[ProductReview]) -> None:
    """
    Save all data to the databases.
    """

    success = True

    try:
        for c in customers:
            # if no changes, skip
            if c.state == State.UNCHANGED:
                continue
            
            conn = psycopg2.connect(conn_strs[c.origin])
            cur = conn.cursor()

            # if new customer, insert
            if c.state == State.NEW:
                cur.execute("INSERT INTO customers (id, name, email, address, location) VALUES (%s, %s, %s, %s, %s)", (c.id, c.name, c.email, c.address, c.location))
            
            # if customer is deleted, delete
            elif c.state == State.DELETED:
                cur.execute("DELETE FROM customers WHERE id = %s", (c.id,))
            
            # if customer is updated, update
            elif c.state == State.UPDATED:
                cur.execute("UPDATE customers SET name = %s, email = %s, address = %s, location = %s WHERE id = %s", (c.name, c.email, c.address, c.location, c.id))

            cur.close()
            conn.commit()
    except Exception as e:
        print(f"Could not save customers")
        success = False


    try:
        for s in sellers:
            # if no changes, skip
            if s.state == State.UNCHANGED:
                continue
            
            conn = psycopg2.connect(conn_strs[s.origin])
            cur = conn.cursor()
        
            # if new seller, insert
            if s.state == State.NEW:
                cur.execute("INSERT INTO sellers (id, name, email, location) VALUES (%s, %s, %s, %s)", (s.id, s.name, s.email, s.location))
            
            # if seller is deleted, delete
            elif s.state == State.DELETED:
                cur.execute("DELETE FROM sellers WHERE id = %s", (s.id,))
            
            # if seller is updated, update
            elif s.state == State.UPDATED:
                cur.execute("UPDATE sellers SET name = %s, email = %s, location = %s WHERE id = %s", (s.name, s.email, s.location, s.id))
            
            cur.close()
            conn.commit()
    except Exception as e:
        print(f"Could not save sellers")
        success = False

    try:
        for p in products:
            # if no changes, skip
            if p.state == State.UNCHANGED:
                continue
            
            conn = psycopg2.connect(conn_strs[p.origin])
            cur = conn.cursor()
        
            # if new product, insert
            if p.state == State.NEW:
                cur.execute("INSERT INTO products (id, name, price, seller_id) VALUES (%s, %s, %s, %s)", (p.id, p.name, p.price, p.seller.id))    

            # if product is deleted, delete
            elif p.state == State.DELETED:
                cur.execute("DELETE FROM products WHERE id = %s", (p.id,))
            
            # if product is updated, update
            elif p.state == State.UPDATED:
                cur.execute("UPDATE products SET name = %s, price = %s, seller_id = %s WHERE id = %s", (p.name, p.price, p.seller.id, p.id))
            
            cur.close()
            conn.commit()
    except Exception as e:
        print(f"Could not save products")
        success = False

    try: 
        for o in orders:

            if o.state == State.UNCHANGED:
                continue

            conn = psycopg2.connect(conn_strs[o.origin])
            cur = conn.cursor()

            # if new order, insert
            if o.state == State.NEW:
                cur.execute("INSERT INTO orders (id, product_id, customer_id) VALUES (%s, %s, %s)", (o.id, o.product.id, o.customer.id))
            
            elif o.state == State.DELETED:
                cur.execute("DELETE FROM orders WHERE id = %s", (o.id,))

            # should not be possible to update an order but just in case
            elif o.state == State.UPDATED:
                cur.execute("UPDATE orders SET product_id = %s, customer_id = %s WHERE id = %s", (o.product.id, o.customer.id, o.id))

            cur.close()
            conn.commit()
    except Exception as e:
        print(f"Could not save orders")
        success = False

    try:
        for pr in product_reviews:

            if pr.state == State.UNCHANGED:
                continue

            conn = psycopg2.connect(conn_strs[pr.origin])
            cur = conn.cursor()

            # if new product review, insert
            if pr.state == State.NEW:
                cur.execute("INSERT INTO productreviews (id, product_id, customer_id, review) VALUES (%s, %s, %s, %s)", (pr.id, pr.product.id, pr.customer.id, pr.review))
            
            elif pr.state == State.DELETED:
                cur.execute("DELETE FROM productreviews WHERE id = %s", (pr.id,))

            # should not be possible to update a product review but just in case
            elif pr.state == State.UPDATED:
                cur.execute("UPDATE productreviews SET product_id = %s, customer_id = %s, review = %s WHERE id = %s", (pr.product.id, pr.customer.id, pr.review, pr.id))

            cur.close()
            conn.commit()
    except Exception as e:
        print(f"Could not save product reviews")
        success = False

    if success:
        print("Data saved successfully.")
    else: 
        print("Could not save data.")

    return
import psycopg2
from data_classes import Customer, Seller, Product, Order, ProductReview

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
        product_reviews = []
        for r in res:
            product_reviews.append(ProductReview(r[0], [p for p in products if p.id == r[1]][0], [c for c in customers if c.id == r[2]][0], r[3], origin))
        
        cur.close()
        conn.close()
    
    return customers, sellers, products, orders, product_reviews
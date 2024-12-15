from data_classes import Customer, Seller, Product, Order, ProductReview, State


def get_products(products: list[Product]) -> None:
    """
    Allows user to select a database and displays all products from that database.
    """
    db_selection = input("Enter the database number (1, 2, or 3): ")
    if db_selection not in ["1", "2", "3"]:
        print("Invalid database number.")
        return

    prod = [x for x in products if x.origin == int(db_selection) - 1 and x.state != State.DELETED]
    print("\n{:<30} | {:>10} | {:<30}".format("Product Name", "Price", "Seller Name"))
    print("-" * 70)
    for p in prod:
        print(f"{p.name:<30} | {p.price:>9}€ | {p.seller.name:<30}")
    
def get_reviews_by_product(product_review: list[ProductReview]) -> None:
    """
    Allows user to select a product by name and displays all reviews for that product.
    """
    db_selection = input("Enter database you want to search in (1, 2, or 3): ")
    if db_selection not in ["1", "2", "3"]:
        print("Invalid database number.")
        return
    
    product_name = input("Enter the product name: ")
    for x in product_review:
        print(f"Origin: {x.origin}, Product Name: {x.product.name}, Product Origin: {x.product.origin}")

    prod = [x for x in product_review if x.origin == (int(db_selection) - 1) and x.state != State.DELETED and x.product.name.lower().strip() == product_name.lower().strip() and x.origin == x.product.origin]

    print("\n{:<30} | {:<30} | {:<30}".format("Customer Name", "Product Name", "Review"))
    print("-" * 90)
    for p in prod:
        print(f"{p.customer.name:<30} | {p.product.name:<30} | {p.review}")
    
def get_5_cheapest_products(products: list[Product]) -> None:
    """
    Get 5 cheapest products from the list of products and prints them.
    """
    cheapest = sorted([p for p in products if p.state != State.DELETED], key=lambda x: x.price)[:5]
    print("\n{:<3} | {:<30} | {:>10} | {:<30}".format("","Product Name", "Price", "Database"))
    print("-" * 73)

    for i, p in enumerate(cheapest):
        print(f"{i+1:<3} | {p.name:<30} | {p.price:>9}€ | {p.origin + 1:<3}")

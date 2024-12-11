def get_products() -> None:
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
    
def get_reviews_by_product() -> None:
    """
    Allows user to select a product by name and displays all reviews for that product.
    """
    db_selection = input("Enter database you want to search in (1, 2, or 3): ")
    if db_selection not in ["1", "2", "3"]:
        print("Invalid database number.")
        return
    
    product_name = input("Enter the product name: ")
    
    prod = [x for x in product_review if x.origin == (int(db_selection) - 1) and x.state != State.DELETED and x.product.name.lower() == product_name.lower()]

    print("\n{:<30} | {:<30} | {:<30}".format("Customer Name", "Product Name", "Review"))
    print("-" * 90)
    for p in prod:
        print(f"{p.customer.name:<30} | {p.product.name:<30} | {p.review}")
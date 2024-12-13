from data_classes import Product, State


def edit_product_price(products: list[Product]) -> None:
    """
    Allows the user to edit the price of a product.
    """
    db_selection = input("Enter the database number (1, 2, or 3): ")
    product_name = input("Enter the product name: ")
    
    # get the selected product
    product = [p for p in products if p.origin == int(db_selection) - 1 and p.name.lower() == product_name.lower() and p.state != State.DELETED]
    
    if not product:
        print("Product not found.")
        return
    
    product = product[0]
    new_price = input("Enter the new price: ")

    if not new_price.isdigit():
        print("Invalid price.")
        return

    # set new price and update state
    product.price = float(new_price)
    product.state = State.UPDATED

    print("Price updated.")
    
    return
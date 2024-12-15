
def delete_product(products: list[Product]) -> None:
    """
    Allows the user to delete a product.
    """
    db_selection = input("Enter the database number (1, 2, or 3): ")
    product_name = input("Enter the product name: ")
    
    # get the selected product
    product = [p for p in products if p.origin == int(db_selection) - 1 and p.name.lower() == product_name.lower() and p.state != State.DELETED]
    
    if not product:
        print("Product not found.")
        return
    
    product = product[0]
    product.state = State.DELETED

    print("Product deleted.")
    
    return
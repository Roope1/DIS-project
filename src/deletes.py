from data_classes import Product, ProductReview, State

def delete_product(products: list[Product], product_reviews: list[ProductReview]) -> None:
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

    # delete all reviews for the product
    for pr in product_reviews:
        if pr.product == product and pr.origin == product.origin:
            pr.state = State.DELETED


    print("Product deleted.")
    
    return
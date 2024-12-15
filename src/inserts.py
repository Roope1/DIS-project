from data_classes import Customer, Seller, Product, Order, ProductReview, State

def new_id(x: list()) -> int:
    """
    Creates a new id for the object
    """
    return max([i.id for i in x]) + 1

def create_order(customers: list[Customer], products: list[Product], orders: list[Order]) -> Order:
    # db selection
    db = input("Which database do you want to order from? (1, 2 or 3)")

    # check if db is valid
    if db not in ["1", "2", "3"]:
        print("Invalid database")
        return
    
    item = input("Give the product name you want to order: ")

    # check if product exists
    if item not in [p.name for p in products]:
        print("Product does not exist")
        return

    customer = input("Give your account name: ")

    # check if customer exists
    if customer.strip() not in [c.name.strip() for c in customers]:
        print([c.name for c in customers], customer)
        print("Customer does not exist")
        return
    
    # get the product object
    product = [p for p in products if p.name == item][0]

    # get the customer object
    customer = [c for c in customers if c.name.lower() == customer.lower()][0]

    # create the order
    order = Order(id=new_id(orders), product=product, customer=customer, origin=int(db)-1, state=State.NEW)

    return order
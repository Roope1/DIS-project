from data_classes import Customer, Seller, Product, Order, ProductReview, State

def new_id(x: list()) -> int:
    """
    Creates a new id for the object
    """
    return max([i.id for i in x]) + 1

def create_order(customers: list[Customer], products: list[Product], orders: list[Order]) -> Order:
    """ 
    Creates a new order and returns an Order object
    """
    # db selection
    db = input("Which database do you want to order from? (1, 2 or 3): ")

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

def create_product(products: list[Product], sellers: list[Seller]) -> Product:
    """
    Creates a new product
    """
    # db selection
    db = input("Which database do you want to add the product to? (1, 2 or 3): ")

    # check if db is valid
    if db not in ["1", "2", "3"]:
        print("Invalid database")
        return
    
    pSeller = input("Give your account name: ")
    pName = input("Enter the name of the product: ")
    pPrice = float(input("Enter the price: "))


    # get the seller object by name
    sellerObject = [s for s in sellers if s.name.lower() == pSeller.lower()][0]

    # create new product
    product = Product(id=new_id(products), name=pName, price=pPrice, seller=sellerObject, origin=int(db)-1, state=State.NEW)

    return product


def create_customer(customers: list[Customer]) -> Customer:
    """
    Creates a new customer
    """
    # db selection
    db = input("Which database do you want to add the customer to? (1, 2 or 3): ")

    # check if db is valid
    if db not in ["1", "2", "3"]:
        print("Invalid database")
        return
    
    # Ask for customer details
    cName = input("Give the customers name: ")

    # check if customer already exists
    if cName.strip() in [c.name.strip() for c in customers]:
        print("Customer with this name already exists.")
        return
    
    cEmail = input("Give the customers email:")
    cAddress = input("Give the customers address:")
    cLocation = input("Give the customers location (e.g. 'Springfield, IL'): ")

    # create a new customer
    customer = Customer(id=new_id(customers), name=cName, email=cEmail, address=cAddress, location=cLocation, origin=int(db)-1, state=State.NEW)

    return customer

def create_seller(sellers: list[Seller]) -> Seller:
    """
    Creates a new seller
    """
    # db selection
    db = input("Which database do you want to add the seller to? (1, 2 or 3): ")

    # check if db is valid
    if db not in ["1", "2", "3"]:
        print("Invalid database")
        return

    # Ask for seller details
    sName = input("Give the sellers name: ")

    # check if seller already exists
    if sName.strip() in [s.name.strip() for s in sellers]:
        print("Seller with this name already exists.")
        return

    sEmail = input("Give the sellers email:")
    sLocation = input("Give the sellers location (e.g. 'Springfield, IL'): ")

    # Create a seller
    seller = Seller(id=new_id(sellers), name=sName, email=sEmail, location=sLocation, origin=int(db)-1, state=State.NEW)

    return seller
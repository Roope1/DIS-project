import psycopg2
from utils import print_menu, get_db_data, save_data
from data_classes import Customer, Seller, Product, Order, ProductReview, State
from searches import get_products, get_reviews_by_product, get_5_cheapest_products
from inserts import create_order, create_customer, create_seller, create_product
from edits import edit_product_price

# These are used to connect to the databases
CONN_STR_DB1 = "postgresql://postgres:password@127.0.0.1:8432/postgres"
CONN_STR_DB2 = "postgresql://postgres:password@127.0.0.1:8433/postgres"
CONN_STR_DB3 = "postgresql://postgres:password@127.0.0.1:8434/postgres"


def main() -> None:
    """
    Main loop to display the menu and process user's choice
    """
    # get all data from all databases to objects
    global customers, sellers, products, orders, product_review # these are global for easier access
    customers, sellers, products, orders, product_review = get_db_data([CONN_STR_DB1, CONN_STR_DB2, CONN_STR_DB3])
    while True:
        choice = print_menu()
        match choice:
            case 0:
                save_data([CONN_STR_DB1, CONN_STR_DB2, CONN_STR_DB3],customers, sellers, products, orders, product_review)
                exit(0) 
            case 1:
                get_5_cheapest_products(products)
            case 2:
                get_products(products)
            case 3:
                get_reviews_by_product(product_review)
            case 4:
                orders.append(create_order(customers, products, orders))
            case 5:
                edit_product_price(products)
            case 6:
                customers.append(create_customer(customers))   
            case 7:
                sellers.append(create_seller(sellers))
            case 8:
                products.append(create_product(products, sellers))
            case _:
                print("Invalid choice.")
                continue            

if __name__ == "__main__":
    main()

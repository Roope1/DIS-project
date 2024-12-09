import psycopg2

# These are used to connect to the databases
CONN_STR_DB1 = "postgresql://postgres:password@127.0.0.1:8432/postgres"
CONN_STR_DB2 = "postgresql://postgres:password@127.0.0.1:8433/postgres"
CONN_STR_DB3 = "postgresql://postgres:password@127.0.0.1:8434/postgres"

def get_all_records(conn_str: str) -> None:
    """
    This function connects to a database and prints all records from all tables.
    """
    try:
        # Establish the connection
        conn = psycopg2.connect(conn_str)
        cur = conn.cursor()

        # Get the list of all tables in the database
        cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'")
        tables = cur.fetchall()

        # Loop through all tables and fetch all records
        for table in tables:
            table_name = table[0]
            print(f"Records from table: {table_name}")
            cur.execute(f"SELECT * FROM {table_name}")
            rows = cur.fetchall()
            for row in rows:
                print(row)
            print("-" * 40)

        # Close the cursor and connection
        cur.close()
        conn.close()

    except Exception as e:
        print(f"Error: {e}")

def get_cheapest_product(conn_str: str) -> dict:
    """
    This function connects to a database, retrieves the cheapest product
    from the products table, and returns the product details.
    """
    try:
        # Establish the connection
        conn = psycopg2.connect(conn_str)
        cur = conn.cursor()

        # Query to find the cheapest product
        cur.execute("SELECT id, name, price FROM products ORDER BY price ASC LIMIT 1")
        result = cur.fetchone()

        # If a product is found, return it as a dictionary
        if result:
            cheapest_product = {
                'id': result[0],
                'name': result[1],
                'price': result[2]
            }
        else:
            cheapest_product = None
        
        # Close the cursor and connection
        cur.close()
        conn.close()

        return cheapest_product

    except Exception as e:
        print(f"Error: {e}")
        return None

def main() -> None:
    # Display the menu options
    print("Select an option:")
    print("1. Display all records from all tables in all databases.")
    print("2. Find the cheapest product across all databases.")

    # Get the user's choice
    choice = input("Enter your choice (1 or 2): ")

    if choice == '1':
        # Option 1: Display all records from all tables in all databases
        print("Displaying all records from DB1:")
        get_all_records(CONN_STR_DB1)
        print("\nDisplaying all records from DB2:")
        get_all_records(CONN_STR_DB2)
        print("\nDisplaying all records from DB3:")
        get_all_records(CONN_STR_DB3)

    elif choice == '2':
        # Option 2: Find the cheapest product across all databases
        # Get the cheapest product from each database
        cheapest_db1 = get_cheapest_product(CONN_STR_DB1)
        cheapest_db2 = get_cheapest_product(CONN_STR_DB2)
        cheapest_db3 = get_cheapest_product(CONN_STR_DB3)

        # Collect the products from all databases
        all_products = []
        if cheapest_db1:
            all_products.append({'database': 'DB1', 'product': cheapest_db1})
        if cheapest_db2:
            all_products.append({'database': 'DB2', 'product': cheapest_db2})
        if cheapest_db3:
            all_products.append({'database': 'DB3', 'product': cheapest_db3})

        # Find the overall cheapest product
        if all_products:
            cheapest_product = min(all_products, key=lambda x: x['product']['price'])

            # Extract product info
            db = cheapest_product['database']
            product = cheapest_product['product']

            # Print the result
            print(f"Cheapest product across all databases:")
            print(f"Database: {db}")
            print(f"Product ID: {product['id']}, Name: {product['name']}, Price: {product['price']}")
        else:
            print("No products found in any database.")

    else:
        print("Invalid choice. Please select 1 or 2.")

if __name__ == "__main__":
    main()

def print_menu() -> int:
    """
    Displays the menu options and returns the user's choice as an integer.
    """
    # Display the menu options
    print("\nSelect an option:")
    print("1. Display all records from all tables in all databases.")
    print("2. Find the cheapest product across all databases.")

    # Get the user's choice
    choice = input("Enter your choice (1 or 2): ")

    # check if choice is integer and in range of the menu
    if choice.isdigit():
        choice = int(choice)
        if choice >= 0 and choice <= 2:
            return int(choice)
    
    return -1

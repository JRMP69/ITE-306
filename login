login_details = {}

while True:
    print("\nMenu:")
    print("1. Edit login details")
    print("2. Show login details")
    print("3. Clear login details")
    print("4. Test program")
    print("4. Exit")

    choice = input("Enter your choice: ")

    if choice == '1':
        username = input("Enter username: ")
        password = input("Enter password: ")
        login_details[username] = password
        print("Login details updated.")
    elif choice == '2':
        if login_details:
            print("Login Details:")
            for username, password in login_details.items():
                print(f"Username: {username}, Password: {password}")
        else:
            print("No login details available.")
    elif choice == '3':
        login_details.clear()
        print("Login details cleared.")
    elif choice == '4':
        username = input("Enter username: ")
        password = input("Enter password: ")
        if username in login_details and login_details[username] == password:
            print("Login successful!")
        else:
            print("Login failed.")
    elif choice == '5':
        print("Exiting the program.")
        break
    else:
        print("Invalid choice. Please select a valid option.")

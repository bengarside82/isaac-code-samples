# Isaac Computer Science
# Usage licensed under the Open Government Licence v3.0

def greet_user():
    """Demonstration of string concatenation"""
    first_name = input("Please enter your name ")
    print("Hello " + first_name)
    last_name = input("Please enter your last name ")
    user_name = first_name + " " + last_name
    print("Hello " + user_name)

if __name__ == "__main__":
    greet_user()

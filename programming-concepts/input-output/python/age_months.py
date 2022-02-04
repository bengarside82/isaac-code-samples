# Isaac Computer Science
# Usage licensed under the Open Government Licence v3.0


def main():
    print("How old are you?")
    user_response = input()
    age = int(user_response)
    months = age * 12
    print(f"Wow, you have been alive for around {months} months!")


if __name__ == '__main__':
    main()    

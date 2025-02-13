# Isaac Computer Science
# Usage licensed under the Open Government Licence v3.0


def sum_to_n(n):
    """Recursively calculates and returns the sum of all natural numbers from 1 to n inclusive"""
    if n == 1:
        return 1
    else:
        return n + sum_to_n(n-1)

    
if __name__ =='__main__':
    n = 6
    result = sum_to_n(n)
    print(f"The sum of 1 to {n} is: {result}")

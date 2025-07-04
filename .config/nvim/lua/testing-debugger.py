# debugger_test.py

def add(a, b):
    return a + b

def multiply(a, b):
    return a * b

def divide(a, b):
    # Intentional bug: doesn't check for division by 
    return a / b

def factorial(n):
    # Intentional bug: incorrect base case
    if n == 0:
        return 0  # Should be 1
    else:
       return n * factorial(n - 1)

def main():
    x = 10
    y = 0

    print("Addition:")
    print(add(x, 5))  # Expected: 15

    print("\nMultiplication:")
    print(multiply(x, 3))  # Expected: 30

    print("\nDivision:")
    try:
        print(divide(x, y))  # Division by zero
    except ZeroDivisionError as e:
        print("Caught an exception:", e)

    print("\nFactorial:")
    print(factorial(5))  # Expected: 120, will give 0 due to bug

if __name__ == "__main__":
    main()


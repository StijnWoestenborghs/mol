def fibonacci_cy(int n):
    if n <= 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibonacci_cy(n - 1) + fibonacci_cy(n - 2)
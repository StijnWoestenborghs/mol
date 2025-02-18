import timeit
from testmol import fibonacci_py, fibonacci_cpp_from_py, fibonacci_cy_from_py


def validate():
    equal = fibonacci_py(30) == fibonacci_cpp_from_py(30) == fibonacci_cy_from_py(30)
    print(f"Equal: {equal}")

def benchmark():
    setup = "from __main__ import fibonacci_py, fibonacci_cy_from_py, fibonacci_cpp_from_py;"
    py_time = timeit.timeit("fibonacci_py(30)", setup=setup, number=10)
    cy_time = timeit.timeit("fibonacci_cy_from_py(30)", setup=setup, number=10)
    cpp_time = timeit.timeit("fibonacci_cpp_from_py(30)", setup=setup, number=10)
    
    print(f"Python fibonacci: {py_time:.6f} seconds")
    print(f"Cython fibonacci: {cy_time:.6f} seconds")
    print(f"C++ fibonacci: {cpp_time:.6f} seconds")

if __name__ == "__main__":
    validate()
    benchmark()

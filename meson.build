project(
    'testmol',
    'cpp', 'cython', # language(s)
    version: '0.1',
    default_options: [
        'cpp_std=c++17',
        'buildtype=release',
    ]
)

py = import('python').find_installation(pure: false)

# Cython
py.extension_module(
    'fibonacci_cy',
    sources: ['testmol/fibonacci_cy.pyx'],
    install: true,
)

# Cpp
py.extension_module(
    'fibonacci_cpp',
    sources: ['testmol/fibonacci_cpp.cpp'],
    install: true,
)

# Python
py.install_sources(
    ['testmol/__init__.py', 'testmol/fibonacci_py.py'],
    pure: false,
    preserve_path: true
)
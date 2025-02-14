project(
    'testmol',
    'cython', 'cpp', 'c', # language(s)
    version: '0.1',
    default_options: [
        'cpp_std=c++17',
        'buildtype=release',
    ]
)

py3 = import('python').find_installation(pure: false)

# Cython
py3.extension_module(
    'fibonacci_cy',
    sources: ['testmol/pyx/fibonacci_cy.pyx'],
    install: true,
)


py3.extension_module(
    'fibonacci_cpp',
    sources: ['testmol/cpp/fibonacci_cpp.cpp'],
    install: true,
)
project(
    'testmol',
    'cpp', 'cython', # language(s)
    default_options: [
        'cpp_std=c++17',
        'buildtype=release',
    ]
)

py = import('python').find_installation(pure: false)

# Python
install_subdir(
    'testmol',
    install_dir: py.get_install_dir(),
)

# Cython
py.extension_module(
    'fibonacci_cy',
    sources: ['testmol/fibonacci_cy.pyx'],
    install: true,
    install_dir: py.get_install_dir() / 'testmol',
)

# Cpp
py.extension_module(
    'fibonacci_cpp',
    sources: ['testmol/fibonacci_cpp.cpp'],
    install: true,
    install_dir: py.get_install_dir() / 'testmol',
)

project(
    'modlib',
    'cpp', 'cython', # language(s)
    default_options: [
        'cpp_std=c++17',
        'buildtype=release',
    ]
)

py = import('python').find_installation(pure: false)

# Python
install_subdir(
    'modlib',
    install_dir: py.get_install_dir(),
)

# Cython
py.extension_module(
    'fibonacci_cy',
    sources: ['modlib/fibonacci_cy.pyx'],
    install: true,
    install_dir: py.get_install_dir() / 'modlib',
)

# Cpp
py.extension_module(
    'fibonacci_cpp',
    sources: ['modlib/fibonacci_cpp.cpp'],
    install: true,
    install_dir: py.get_install_dir() / 'modlib',
)

project(
    'testmol',
    'cpp', 'cython', # language(s)
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
    install_dir: py.get_install_dir() / 'testmol',
)

# Cpp
py.extension_module(
    'fibonacci_cpp',
    sources: ['testmol/fibonacci_cpp.cpp'],
    install: true,
    install_dir: py.get_install_dir() / 'testmol',
)

# Python
# py.install_sources(
#     meson.project_source_root() / 'testmol',
#     pure: false,
#     preserve_path: true
# )

install_subdir(
    'testmol',
    install_dir: py.get_install_dir(),
)
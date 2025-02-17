project(
    'fibonacci_cy',
    'cython', # language(s)
    version: '0.1',
    default_options: [
        'buildtype=release',
    ]
)

py = import('python').find_installation(pure: false)

# Cython
py.extension_module(
    'fibonacci_cy',
    sources: ['fibonacci_cy.pyx'],
    install: true,
)
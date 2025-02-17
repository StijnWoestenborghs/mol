project(
    'fibonacci_cpp',
    'cpp', # language(s)
    version: '0.1',
    default_options: [
        'cpp_std=c++17',
        'buildtype=release',
    ]
)

py = import('python').find_installation(pure: false)

# C++
py.extension_module(
    'fibonacci_cpp',
    sources: ['fibonacci_cpp.cpp'],
    install: true,
)
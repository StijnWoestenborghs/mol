project(
    'some_project',
    'cython', 'cpp', # language(s)
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
    sources: ['mol/pyx/fibonacci_cy.pyx'],
    install: true,
)

# C++
# # Define your target architecture
# host_arch = host_machine.cpu_family()
# if host_arch == 'x86_64'
#     target_name = 'some_amd64'
# elif host_arch == 'aarch64'
#     target_name = 'some_arm64'
# else
#     error('Unsupported architecture: ' + host_arch)
# endif

# # Compiler settings
# cpp_args = [
#     '-W', '-Wall', '-Wextra', '-O3', '-fPIC'
# ]


# # Define the shared library build
# libsome = shared_library(
#     target_name,
#     'mol/some/somefile.cpp',
#     include_directories: 'mol/some',
#     cpp_args: cpp_args,
#     install: true,
#     install_dir: py.get_install_dir() / 'mol'
# )
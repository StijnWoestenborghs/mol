import ctypes
import os
import platform
from typing import List


arch = platform.machine()
system = platform.system()

if system == "Windows" and arch == "AMD64":
    lib_name = "libsome_win64.dll"
elif system == "Linux" and arch == "x86_64":
    lib_name = "libsome_amd64.so"
elif system == "Linux" and arch == "aarch64":
    lib_name = "libsome_arm64.so"
else:
    raise RuntimeError(f"Unsupported system-architecture combination: {system}-{arch}")

lib = ctypes.CDLL(os.path.join(os.path.dirname(os.path.realpath(__file__)), lib_name))
lib.add_from_c.argtypes = [
    ctypes.c_float,
    ctypes.c_float,
    ctypes.POINTER(ctypes.c_float),
]
lib.add_from_c.restype = None


def add_from_c(a: float, b: float) -> float:
    c = ctypes.c_float()
    lib.add_from_c(a, b, ctypes.byref(c))
    return c.value
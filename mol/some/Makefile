.ONESHELL:
SHELL := /bin/bash

SRC_CPP := somefile.cpp

CXXFLAGS := \
	-W \
	-Wall \
	-Wextra \
	-O3 \
	-std=c++17 \
	-shared \
	-I . \

# Detect Windows
ifeq ($(OS),Windows_NT)
   	ARCH := $(PROCESSOR_ARCHITEW6432)
    ifeq ($(ARCH),AMD64)
        TARGET := libsome_win64.dll
    else
        $(error Unsupported architecture: $(ARCH))
    endif
	CXX := C:/mingw64/bin/g++.exe
	CXXFLAGS += -Wl,--add-stdcall-alias
	CXXFLAGS += -static
else
    ARCH := $(shell dpkg --print-architecture)
    ifeq ($(filter $(ARCH),amd64 arm64),)
        $(error Unsupported architecture: $(ARCH))
    endif
    TARGET := libsome_$(ARCH).so
	CXX	:= g++
	CXXFLAGS += -fPIC
endif


all: clean $(TARGET)

$(TARGET): $(SRC_CPP)
	$(CXX) $(CXXFLAGS) -o $@ $^

clean:
	if [ -f $(TARGET) ]; then rm -f $(TARGET); fi
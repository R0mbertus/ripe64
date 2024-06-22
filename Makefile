CXX=clang
# # Disable stack protection, make the stack executable and add debug info
CFLAGS=-g -fsanitize=shadow-call-stack

# CXX=gcc
# # # Disable stack protection, make the stack executable and add debug info
# CFLAGS=-g -fcf-protection=full

# CXX=clang
# # Disable stack protection, make the stack executable and add debug info
# CFLAGS=-g -fsanitize=shadow-call-stack -O0 -fpass-plugin=../../policies/custom/build/lib/libControlFlowIntegrity.so

# CXX=clang
# # Disable stack protection, make the stack executable and add debug info
# CFLAGS=-g -fsanitize=shadow-call-stack -O0 -fpass-plugin=../../policies/custom/build/lib/libOpaqueControlFlowIntegrity.so

# CXX=clang
# # # Disable stack protection, make the stack executable and add debug info
# CFLAGS=-g -fsanitize=shadow-call-stack

# CXX=/root/MCFI/toolchain/bin/clang
# # Disable stack protection, make the stack executable and add debug info
# CFLAGS=-g

# CXX=/root/MCFI/toolchain/bin/clang
# # Disable stack protection, make the stack executable and add debug info
# CFLAGS=-g -Xclang -mdisable-picfi

all: build/clang_attack_gen

build/clang_attack_gen: ./source/attack_gen.c
	mkdir -p build
	${CXX} ${CFLAGS} ./source/attack_gen.c -o ./build/clang_attack_gen

clean:
	rm -f ./build/*

.PHONY: clean

libpkcs11_exported.a: pkcs11_exported.o
	ar cru libpkcs11_exported.a pkcs11_exported.o
pkcs11_exported.o: spec
	${CC} ${CFLAGS} ${PACKED_CFLAGS} -c pkcs11_exported.c

spec:
	mkdir -p spec/
	cp $(shell go env GOPATH)/src/github.com/miekg/pkcs11/*.h spec/

clean:
	rm -vf libpkcs11_exported.a pkcs11_exported.o spec/*.h
	rmdir spec || true

all: clean libpkcs11_exported.a

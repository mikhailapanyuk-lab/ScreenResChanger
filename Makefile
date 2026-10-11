PACKAGE_NAME := com.mikhailapanyuk.screenreschanger
VERSION := 1.0
ARCH := iphoneos-arm
OUTPUT := build/$(PACKAGE_NAME)_$(VERSION)_$(ARCH).deb

all: $(OUTPUT)

$(OUTPUT):
	@mkdir -p build
	@rm -rf build/$(PACKAGE_NAME)
	@cp -a package build/$(PACKAGE_NAME)
	@dpkg-deb --build build/$(PACKAGE_NAME) $(OUTPUT)
	@echo "Built: $(OUTPUT)"

clean:
	@rm -rf build

.PHONY: all clean

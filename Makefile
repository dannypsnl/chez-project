OBJS := $(patsubst %.ss, %.so, $(shell ls *.ss))
%.so: %.ss
	@echo '(compile-file "$<")' | scheme

.PHONY: build run test clean
build: $(OBJS)
	@echo '(make-boot-file "app.boot" (list "petite") "app.so")' | scheme
run:
	@scheme --program app.ss
test:
	@scheme --program test.ss
clean:
	@rm *.so *.boot

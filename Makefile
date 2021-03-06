OBJS := $(patsubst %.ss, %.so, $(shell ls *.ss))
%.so: %.ss
	@echo '(compile-file "$<")' | scheme

.PHONY: build clean
build: $(OBJS)
	@echo '(make-boot-file "app.boot" (list "petite") "app.so")' | scheme
run:
	@scheme --program app.ss
clean:
	@rm *.so
	@rm *.boot

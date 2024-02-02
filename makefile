CXXSOURCE = expr.cpp cmdline.cpp main.cpp Test.cpp
OBJSOURCE = expr.o cmdline.o main.o Test.o

msdscript: $(OBJSOURCE)
	clang++ *.o -o msdscript

main.o: main.cpp
	clang++ -c -std=c++17 main.cpp

cmdline.o: cmdline.h cmdline.cpp
	clang++ -c -std=c++17 cmdline.cpp

expr.o: expr.h expr.cpp
	clang++ -c -std=c++17 expr.cpp

Test.o: Test.cpp
	clang++ -c -std=c++17 Test.cpp

test:
	./msdscript --test

clean:
	rm -f *.o msdscript

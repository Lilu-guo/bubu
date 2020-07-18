OBJECT = main.o
CXX = g++
CC = gcc
# CFLAGS = -O3 -Wall
# LIB = -I /usr/local/include -L /usr/local/lib -lsdsl -ldivsufsort

out.exe:$(OBJECT)
	# $(CXX) $(CFLAGS) -o out.exe $(OBJECT)
	$(CXX) -o out.exe $(OBJECT)

%.o:%.c *.h
	# $(CXX) -c $(CFLAGS) $< -o $@
	$(CXX) -c $< -o $@

clean:
	rm *.exe *.o
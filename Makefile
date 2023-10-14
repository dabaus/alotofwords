.PHONY: all clean

CC = clang++
CFLAGS = -O3 -arch arm64
CXXFLAGS = -stdlib=libc++

all: clean alotofwords
	chmod +x alotofwords

debug: CFLAGS = -g -O0 -arch arm64
debug: all
	
alotofwords.o: main.cpp
	$(CC) $(CFLAGS) -std=c++20 -Wall -c  $< -o $@

alotofwords: alotofwords.o
	$(CC) $(CFLAGS) $(CXXFLAGS) -std=c++20 -Wall $< -o $@

clean:
	rm -rf alotofwords alotofwords.o

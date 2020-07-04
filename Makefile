CC=g++
Z3INCLUDE= /home/bctan/anaconda3/lib/python3.7/site-packages/z3/include
CXXFLAGS=-I$(Z3INCLUDE) -std=c++11

src = $(wildcard src/*.cpp)
obj = $(src:.cpp=.o)

LDFLAGS = -L/home/bctan/anaconda3/lib/python3.7/site-packages/z3/lib -lz3 -lboost_system

%.o: %.c
	$(CC) $(CXXFLAGS) -o $@ -c $<

triq: $(obj)
	$(CC) -o $@ $^ $(LDFLAGS) 

.PHONY: clean
clean:
	rm -f $(obj) triq

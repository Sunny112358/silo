CXXFLAGS := -Wall -g
LDFLAGS  := -lpthread

all: btree

btree: btree.cc static_assert.h util.h
	$(CXX) $(CXXFLAGS) -o btree btree.cc $(LDFLAGS)

.PHONY: clean
clean:
	rm -f btree

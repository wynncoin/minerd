

all:
	$(CC)  -c sha256tx.c  -o sha256tx.o
	$(CC)  -c util.c  -o util.o
	$(CC)  -c cpu-miner.c  -o miner.o
	$(CC)  miner.o sha256tx.o util.o   -o minerd -lcurl -ljansson -lpthread

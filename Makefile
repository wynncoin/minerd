
WINCC=x86_64-w64-mingw32-gcc -Iwindows/win/include -Lwindows/win/lib 
WINLD=x86_64-w64-mingw32-gcc -Lwindows/win/lib  

all:
	$(CC)  -c sha256tx.c  -o sha256tx.o
	$(CC)  -c util.c  -o util.o
	$(CC)  -c cpu-miner.c  -o miner.o
	$(CC)  miner.o sha256tx.o util.o   -o minerd -lcurl -ljansson -lpthread
	./minerd  -o stratum+tcp://10.10.164.60:3032  -DP  -O WiiTSie3m867xTZLeXRXFTSgfi8XvXqpt7:abc -t 1


win:
	$(WINCC)  -c util.c  -o util.o
	$(WINCC)  -c sha256tx.c  -o sha256tx.o
	$(WINCC)  -c cpu-miner.c  -o miner.o
	$(WINLD)  miner.o sha256tx.o util.o   -o minerd.exe  -lcurl -ljansson -lpthread -lws2_32 -lwsock32
	x86_64-w64-mingw32-strip minerd.exe

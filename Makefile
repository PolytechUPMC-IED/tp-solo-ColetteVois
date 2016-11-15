# options de compilation
ID3 = /home/sasl/shared/main3/env/tools/lib
TP = /home/sasl/eleves/main/3415249/InformatiqueGenerale/TP_solo/
CC = g++
CFLAGS = -Wall
LDLIBS = -DIVERSION="\"${VERSION}\""
CLIBS = -lid3 -lz
LDFLAGS = -lm

# fichiers du projet
OBJ = convert.o list.o id3v2.o genre.o 
EXEC = id3v2

# règle initiale
all: $(EXEC)

# règles de compilation
%.o: %.cpp
	$(CC) -I $(ID3)/../include $(LDLIBS) -c -o $@ $<

# règles d'édition de liens
$(EXEC) : $(OBJ)
	$(CC) -L$(ID3) $(CFLAGS) -o id3v2 $(OBJ) $(CLIBS)

# règles supplémentaires
install:
	cd $(TP)
	mkdir -p bin
	mkdir -p man/man1/
	nroff -man /home/sasl/eleves/main/3415249/InformatiqueGenerale/TP_solo/EnvDev/tp-solo-ColetteVois/id3v2-0.1.11/id3v2.1 > $(TP)man/man1/id3v2.1
disclean:
	cd /home/sasl/eleves/main/3415249/InformatiqueGenerale/TP_solo/EnvDev/tp-solo-ColetteVois/id3v2-0.1.11
	rm -f id3v2.1
	rm -f id3v2

clean:
	rm -f *.o
rmproper:
	rm -f $(EXEC) *.o

#export LD_LIBRARY_PATH=/home/sasl/shared/main3/env/tools/lib















































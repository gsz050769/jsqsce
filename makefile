objects = msg_script.o


all: msg_script

msg_script: $(objects)
	gcc -o msg_script  $(objects) jsqlib.a -pthread 

msg_script.o: msg_script.c libjson.h
	gcc -c msg_script.c

clean:
	rm $(objects)



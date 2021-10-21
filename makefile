objects = msg_script.o msg_status.o
objects_logger = msg_logger.o msg_status.o

all: msg_script msg_logger

msg_script: $(objects)
	gcc -o msg_script  $(objects) jsqlib.a -pthread 

msg_logger: $(objects_logger)
	gcc -o msg_logger $(objects_logger) jsqlib.a -pthread 

msg_script.o: msg_script.c msg_status.h libjson.h
	gcc -c msg_script.c

msg_logger.o: msg_logger.c msg_status.h libjson.h
	gcc -c msg_logger.c

msg_status.o: msg_status.c msg_status.h
	gcc -c msg_status.c

clean:
	rm -rf $(objects)
	rm -rf msg_script.tar
	rm -rf msg_script.tar.gz

deliver:
	tar -cf msg_script.tar msg_script msg.sce ./sce/*.* ./sce/msg/*.*
	gzip msg_script.tar


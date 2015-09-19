CC = gcc
LIBS = 
OBJS = uvc-ctrl.o
CFLAGS = -Wall -g
uvc-ctrl: ${OBJS}
	${CC} -o $@ ${OBJS} ${LIBS}
%.o: %.c
	${CC} -c $< ${CFLAGS} ${LIBS}
clean:
	rm -f uvc-ctrl *.o

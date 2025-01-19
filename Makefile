# Variablen
CC = gcc
CFLAGS = -Iinclude -Wall -std=c99 -O2
LDFLAGS = -Llib -lraylib -lm -lpthread -ldl -lX11
SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)
TARGET = CodeFighters

# Build-Regeln
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

clean:
	rm -f $(OBJ) $(TARGET)

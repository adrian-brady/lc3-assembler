CC = cc
CFLAGS = -Wall -Wextra -Iinclude -Isrc
SRCDIR = src
BUILDDIR = build
BINDIR = bin
TARGET = $(BINDIR)/lc3assembler

SOURCES = $(wildcard $(SRCDIR)/*.c)
OBJECTS = $(patsubst $(SRCDIR)/%.c, $(BUILDDIR)/%.o, $(SOURCES))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

$(BUILDDIR)/%.o: $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf $(BUILDDIR)/*.o $(TARGET)

ZLLIB = ../zlib/src
COLIB = ../core
SPLIB = ../core/libsparse
AR = ar rcs
OBJS = $(patsubst %.c,%.o,$(wildcard *.c))

all:make_ext4fs

make_ext4fs:
	$(CC) $(CFLAGS) -DHOST -DANDROID -I$(SPLIB)/include -I$(COLIB)/include/ -o make_ext4fs \
	make_ext4fs_main.c make_ext4fs.c ext4fixup.c ext4_utils.c allocate.c contents.c extent.c \
	indirect.c uuid.c sha1.c wipe.c crc16.c ext4_sb.c canned_fs_config.c \
	$(SPLIB)/libsparse.a -lz

clean:
	rm -f $(OBJS)
	rm -f make_ext4fs


SPLIB = core/libsparse
COLIB = core
MALIB = ext4_utils

all:
	$(MAKE) -C $(SPLIB) libsparse.a
	$(MAKE) -C $(MALIB) all
	mv $(MALIB)/make_ext4fs make_ext4fs

clean:
	$(MAKE) -C $(SPLIB) clean
	$(MAKE) -C $(MALIB) clean

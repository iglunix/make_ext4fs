# make_ext4fs
Utility to create ext4 file systems ported from Android.

## How to use

### Block devices
Simply run `make_ext4fs /dev/sdXy`

### Disk images
Due to some quirks, a loop back device is needed
```sh
losetup /dev/loop0 disk.img
make_ext4fs /dev/loop0
```

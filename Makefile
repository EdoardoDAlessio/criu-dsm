.PHONY: all vdso clean

all:
	make -C criu -j$(shell nproc)
	make -C criu/dsm_client
	make -C tools


clean:
	make -C criu clean
	make -C tools clean

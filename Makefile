MRUBY_COMMIT ?= 6b0299f72b23071342d3ab067db1abbf15253102

all: libmruby.a

test:
	./vendor/mruby/bin/mruby test/run_all.rb

clean:
	rm -rf vendor
	rm -f libmruby.a

libmruby.a: vendor/mruby
	cd vendor/mruby && ${MAKE}
	cp vendor/mruby/build/host/lib/libmruby.a .

vendor/mruby:
	mkdir -p vendor
	git clone https://github.com/mruby/mruby.git vendor/mruby
	cd vendor/mruby && git reset --hard && git clean -fdx
	cd vendor/mruby && git checkout ${MRUBY_COMMIT}
	cp build_config.rb vendor/mruby/

.PHONY: all clean libmruby.a test

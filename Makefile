CP = cp
MKDIR = mkdir

DIR_SITE = public
DIR_TOPICS = $(DIR_SITE)/topics

.PHONY: all build clean

all: build require

require:
	pip install --user -r topics/Deep-Into-RocksDB/requirements.txt
	git clone https://github.com/gohugoio/hugo.git
	cd hugo && go install --tags extended && cd ..

build: $(DIR_TOPICS) require
	hugo
	$(MKDIR) -p $(DIR_SITE)/assets/images
	$(CP) -r resources/_gen/images/posts $(DIR_SITE)/assets/images
	$(MAKE) -C topics/Deep-Into-RocksDB html
	$(CP) -r topics/Deep-Into-RocksDB/build/html $(DIR_SITE)/topics/deep-into-rocksdb

$(DIR_TOPICS):
	$(MKDIR) -p "$@"

clean:
	$(RM) -rf $(DIR_SITE)

CP = cp
MKDIR = mkdir

DIR_SITE = public
DIR_TOPICS = $(DIR_SITE)/topics

.PHONY: all build clean

all: build

require:
	pip install --user -r topics/Deep-Into-RocksDB/requirements.txt
	./.travis-ci/install-hugo.sh

build: $(DIR_TOPICS)
	hugo
	$(MKDIR) -p $(DIR_SITE)/assets/images
	$(CP) -r resources/_gen/images/posts $(DIR_SITE)/assets/images
	$(MAKE) -C topics/Deep-Into-RocksDB html
	$(CP) -r topics/Deep-Into-RocksDB/build/html $(DIR_SITE)/topics/deep-into-rocksdb
	$(MKDIR) -p $(DIR_SITE)/resume/zh
	wget https://github.com/Shylock-Hg/resume/releases/download/resume/resume-dist.tar.gz
	tar -xvzf resume-dist.tar.gz
	cp ./dist/zh.html $(DIR_SITE)/resume/zh/index.html

$(DIR_TOPICS):
	$(MKDIR) -p "$@"

clean:
	$(RM) -rf $(DIR_SITE)

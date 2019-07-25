CP = cp
MKDIR = mkdir

DIR_SITE = public
DIR_TOPICS = $(DIR_SITE)/topics

.PHONY: all build clean require require_apt

all: build require

require:
	./topics/resume/.ci/install-requirements.sh
	pip install --user -r topics/Deep-Into-RocksDB/requirements.txt
	./.travis-ci/install-hugo.sh

require_apt:
	./topics/resume/.ci/install-requirements.sh
	pip install --user -r topics/Deep-Into-RocksDB/requirements.txt
	./.travis-ci/install-hugo-apt.sh

build: $(DIR_TOPICS) require
	hugo
	$(MKDIR) -p $(DIR_SITE)/assets/images
	$(CP) -r resources/_gen/images/posts $(DIR_SITE)/assets/images
	$(MAKE) -C topics/Deep-Into-RocksDB html
	$(CP) -r topics/Deep-Into-RocksDB/build/html $(DIR_SITE)/topics/deep-into-rocksdb
	$(MAKE) -C topics/resume
	$(MKDIR) -p $(DIR_SITE)/resume/zh && $(CP) -r topics/resume/dist/zh.html $(DIR_SITE)/resume/zh/index.html

$(DIR_TOPICS):
	$(MKDIR) -p "$@"

clean:
	$(RM) -rf $(DIR_SITE)

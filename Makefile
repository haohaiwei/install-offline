KODO_VERSION = v2020.2.0813
DOCKER_VERSION = 19.03.9

.PHONY: all
all:
	if [ ! -e docker-$(DOCKER_VERSION).tgz ];then curl http://dl.echosoul.cn/docker-$(DOCKER_VERSION).tgz -o docker-$(DOCKER_VERSION).tgz && chmod +x install-docker.sh && ./install-docker.sh docker-$(DOCKER_VERSION).tgz;fi
	if [ ! -e harbor-$(KODO_VERSION).tgz ];then curl http://dl.echosoul.cn/harbor-$(KODO_VERSION).tgz -o harbor-$(KODO_VERSION).tgz && chmod +x install-harbor.sh && setenforce 0 && ./install-harbor.sh harbor-$(KODO_VERSION).tgz ;fi

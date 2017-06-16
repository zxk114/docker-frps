#
# MAINTAINER        xk.zhang <workbench@aliyun.com>
# DOCKER-VERSION    1.12.6
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
FROM       centos:centos7.1.1503
MAINTAINER xk.zhang <workbench@aliyun.com>

ENV TZ "Asia/Shanghai"
ENV TERM xterm

ADD aliyun-mirror.repo /etc/yum.repos.d/CentOS-Base.repo
ADD aliyun-epel.repo /etc/yum.repos.d/epel.repo

RUN yum install -y curl wget tar bzip2 unzip vim-enhanced passwd sudo 

ADD frps /root/frps
ADD frps.ini /root/frps.ini

EXPOSE 7000 6000 7500 8000 80

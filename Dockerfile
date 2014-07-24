# centos4.9 x86_64 with vault yum

FROM fatherlinux/centos4-base
MAINTAINER 2k0ri <esc13245@gmail.com>

RUN sed -ri 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Base.repo
RUN sed -ri 's/#baseurl=http:\/\/mirror\.centos\.org\/centos\/\$releasever/baseurl=http:\/\/vault\.centos\.org\/4\.9/g' /etc/yum.repos.d/CentOS-Base.repo

RUN yum update -y

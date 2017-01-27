FROM centos

MAINTAINER Jesús Marín Transvaal "robbiemay501@gmail.com"
LABEL Vendor="CentOS"
LABEL License=GPLv2



RUN yum -y update && yum clean all && \
yum -y install httpd && \ 
yum -y install net-tools && yum clean all

EXPOSE 80

ADD run-httpd.sh /run-httpd.sh
ADD c9.sh /c9.sh
RUN chmod -v +x /run-httpd.sh
RUN chmod -v +x /c9.sh

CMD ["/run-httpd.sh"]
CMD ["/c9.sh"]



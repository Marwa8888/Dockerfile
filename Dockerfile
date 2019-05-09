FROM centos:7 
RUN yum update -y && yum install -y epel-release 
RUN yum install -y nginx
ADD http://www.brainjar.com/java/host/test.html /usr/share/nginx/html/index.html
RUN chmod 777 -R /usr/share/nginx/html/
#VOLUME /usr/share/nginx/html/
EXPOSE 80
CMD ["/usr/sbin/nginx","-g","daemon off;"]




#FROM nginx:1.7
RUN chmod 777 /usr/share/nginx/html/index.html

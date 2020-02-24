FROM tomcat

ADD logicaldoc.war /usr/local/tomcat/webapps

WORKDIR /tmp
RUN apt -y update 
RUN apt -y upgrade
RUN apt-get -y install lsb-release
RUN wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb

RUN dpkg -i mysql-apt-config_0.8.13-1_all.deb
RUN apt update 
RUN apt install -y mariadb-server mariadb-client
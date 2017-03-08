FROM 192.168.251.222:5000/tomee-8-jdk-7.0.1-plus

MAINTAINER "le lab - Alain Dhennin <alain.dhennin@atos.net>"

# on expose le port 8080 de tomcat a l'exterieur du conteneur
EXPOSE 8080

# dossier de travail
WORKDIR /usr/local/tomee

# ajout du fichier de configuration des utilisateurs tomee
COPY tomcat-users.xml /usr/local/tomee/conf/tomcat-users.xml  

# ajout du fichier context.xml pour autoriser les acces aux outils d'administration de tomee
COPY context.xml /usr/local/tomee/conf/Catalina/localhost/manager.xml

# ajout du fichier de configuration tomee (datasources...)
COPY tomee.xml /usr/local/tomee/conf/tomee.xml  

# ajout du driver jdbc
COPY mysql-connector-java-5.1.35-bin.jar /usr/local/tomee/lib/

# ajout de l application web
# - Pas nécessaire depuis l'environneemnt de DEV, le war est déployé depuis Eclipse
# - via la plugin maven tomcat7-maven-plugin
#COPY opportunity.war /usr/local/tomee/webapps/opportunity.war

# commande par defaut
CMD ["catalina.sh","run"]
FROM registry.ocp4.local/jboss-webserver-5/jws56-openjdk8-openshift-rhel8:5.6.2-10

USER root

COPY target/demo.war /deployments/demo.war

RUN chmod 755 /deployments/demo.war    
RUN chown 185.root /deployments/demo.war    

USER jboss


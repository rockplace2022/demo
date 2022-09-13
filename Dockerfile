FROM registry.ocp4.local/jboss-eap-7/eap74-openjdk8-openshift-rhel7:7.4.6-7

USER root

COPY target/demo.war /deployments/demo.war

#RUN chmod 755 /deployments/demo.war    
#UN chown 185.root /deployments/demo.war    

USER jboss


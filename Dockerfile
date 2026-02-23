FROM aquasec/trivy:latest
#Update
COPY update.sh /

RUN sh /update.sh

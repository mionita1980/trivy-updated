FROM aquasec/trivy:latest

COPY update.sh /

RUN sh /update.sh

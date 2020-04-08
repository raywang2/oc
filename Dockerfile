FROM alpine:3.8

LABEL MAINTAINER="Ray Wang (raywang@exosite.com)"

WORKDIR /

RUN apk add --update \
  ca-certificates\ 
  libc6-compat \
  wget && \
  wget -q -O openshift.tar.gz \
  https://github.com/openshift/origin/releases/download/v1.5.1/openshift-origin-client-tools-v1.5.1-7b451fc-linux-64bit.tar.gz && \
  tar xvf openshift.tar.gz && \
  mv openshift-origin-client-tools-v1.5.1-7b451fc-linux-64bit/oc /bin/oc && \
  rm -rf openshift.tar.gz openshift-origin-client-tools-v1.5.1-7b451fc-linux-64bit && \
  apk del wget

VOLUME /root/.kube

ENTRYPOINT ["oc"]

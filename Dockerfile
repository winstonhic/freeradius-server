FROM freeradius/freeradius-server:latest

RUN export http_proxy=http://10.160.3.88:8080 \
&& export https_proxy=https://10.160.3.88:8080 \
&& echo 'Acquire::http::Proxy "http://10.160.3.88:8080";' > /etc/apt/apt.conf \
&& apt-get update \
&& apt-get install -y --no-install-recommends python

COPY raddb /etc/raddb

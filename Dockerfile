FROM m1k1o/neko:firefox

COPY russian_trusted_root_ca_pem.crt  russian_trusted_sub_ca_pem.crt /usr/local/share/ca-certificates/
COPY policies.json /usr/lib/firefox/distribution/


RUN apt-get install -y ca-certificates
RUN update-ca-certificates

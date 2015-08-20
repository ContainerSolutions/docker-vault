FROM progrium/busybox
MAINTAINER Container Solutions <info@container-solutions.com>
ENV REFRESHED_AT 2015-08-20

ADD https://dl.bintray.com/mitchellh/vault/vault_0.2.0_linux_amd64.zip /tmp/vault.zip
RUN cd /bin && unzip /tmp/vault.zip && chmod +x /bin/vault && rm /tmp/vault.zip

EXPOSE 8200
ENV VAULT_ADDR "http://127.0.0.1:8200"

ENTRYPOINT ["/bin/vault", "server"]
CMD ["-dev"]

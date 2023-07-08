FROM ubuntu/squid

COPY squid.conf /etc/squid/squid.conf
COPY passwords /etc/squid/passwords

EXPOSE 3128

CMD ["squid", "-N"]
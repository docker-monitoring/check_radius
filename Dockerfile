FROM ubuntu

RUN apt-get update && \
    apt-get -y install \
        perl \
    	curl \
    	freeradius-utils && \
    rm -rf /var/lib/apt/lists/* && \
    curl https://exchange.icinga.com/exchange/check_radius.pl/files/461/check_radius.pl -o /check_radius.pl && \
    chmod +x /check_radius.pl
    
ENTRYPOINT ["/check_radius.pl"]

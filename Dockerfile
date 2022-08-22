FROM ubuntu

RUN apt-get update && \
    apt-get -y install \
    	perl \
    	curl \
    	make \
    	g++ \
    	libssl-dev \
    	zlib1g-dev \
    	libexpat1-dev && \
    rm -rf /var/lib/apt/lists/* && \
    curl https://exchange.icinga.com/algbaer/check_ilo2_health/files/13211/check_ilo2_health.pl -o /check_ilo2_health.pl && \
    chmod +x /check_ilo2_health.pl
    
ENTRYPOINT ["/check_ilo2_health.pl"]

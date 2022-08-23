FROM ubuntu

RUN apt-get update && \
    apt-get -y install \
        perl \
    	curl \
    	freeradius-utils && \
    rm -rf /var/lib/apt/lists/* && \
    curl https://raw.githubusercontent.com/docker-monitoring/check_radius/main/check_radius.pl -o /check_radius.pl && \
    chmod +x /check_radius.pl
    
ENTRYPOINT ["/check_radius.pl"]

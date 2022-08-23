FROM ubuntu

RUN apt-get update && \
    apt-get -y install \
    	curl \
    	freeradius-utils && \
    rm -rf /var/lib/apt/lists/* && \
    curl https://raw.githubusercontent.com/ozzi-/check_radius/master/check_radius.sh -o /check_radius.sh && \
    chmod +x /check_radius.sh
    
ENTRYPOINT ["/check_radius.sh"]

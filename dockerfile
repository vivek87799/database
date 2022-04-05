FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.0

COPY create_index.sh  /usr/bin
RUN chmod +x  /usr/bin/create_index.sh
ENTRYPOINT [ "/bin/bash" ]

# For development is extraction is done manually
CMD ["create_index.sh"]
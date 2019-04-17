FROM python:latest

WORKDIR /usr/src/app
                                                                                                                                                    
COPY ./omdbapi.py /usr/src/app
COPY ./movie.sh /usr/src/app
                                                                                                                                                    
ENV OMDB_API_KEY 214665a5
                                                                                                                                                    
ENTRYPOINT ["/bin/sh"]
                                                                                                                                                    
CMD ["movie.sh"]




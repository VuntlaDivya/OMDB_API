echo "Enter movie name:"

read movie
                                                                                                                                                    
python /usr/src/app/omdbapi.py -t $movie --tomatoes

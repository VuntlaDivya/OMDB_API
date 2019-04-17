  
# Querying a favorite movie info through OMDB_API over network.


### Prerequisites:
You need to obtain your personal API key from the OMDb API website in order to be able to use the tool. Once you have it, you can either pass it via --apikey argument, or if you don't wish to pass it every time, you can set it as an environment variable OMDB_API_KEY through ENV in Dockerfile.


### Building an Image:
First Build a image for our program with Dockerfile(we have a dockerfile in our repo). 


Following are the arguments to get movie info from the OMDb.
optional arguments:
  -h, --help            show this help message and exit
  -t T                  Movie title
  -y Y                  Year of release
  -i I                  IMDb movie id
  -r {JSON,XML}         Return raw XML/JSON response
  --plot {short,full}   Length of plot summary
  --tomatoes            Include Rotten Tomatoes data too
  --type {movie,series,episode}
                        movie, series, episode
  --season SEASON       season number
  --episode EPISODE     episode number
  --format {html,markdown,csv}
                        Output formated in html, markdown or csv, leave out
                        for text
  --apikey APIKEY       Your API key (will try to use env var OMDB_API_KEY if
                        omitted)


 You can use any of these arguments and add to Dockerfile, it is based on how we want output.
 Then, to get the movie info written a script with the above arguments to execute the python file having in our repo.
 
 
 Finally, execute the following command to build an Image. 
 
         # docker build -t <reponame>:<tagname> .
         
         
###  Executing the program by running docker container to query a movie info.        
         
      # docker run -it <imagename>
      
      eg: # docker run -it movie_info:latest
      
 It will prompt for movie name as follows:
          Enter the movie name:
          Okkadu
          
      
      
      
### Output

title:
Okkadu

year:
2003

rated:
N/A

released:
15 Jan 2003

runtime:
170 min

genre:
Action, Romance

director:
Gunasekhar

writer:
Gunasekhar

actors:
Mahesh Babu, Bhoomika Chawla, Prakash Raj, Joy Badlani

plot:                                                                                                                                                                                    
A Kabbadi player rescues a young woman from an unwanted marriage and hides her in his home.                                                                                               
                                                                                                                                                                                                                                                                                                                        
country:                                                                                                                                                                                  
India                                                                                                                                                                                     
                                                                                                                                                                                          
                                                                                                                                                                                          
awards:                                                                                                                                                                                   
10 wins.                                                                                                                                                                                  
                                                                                                                                                                                          
                                                                                                                                                                                          
poster:                                                                                                                                                                                   
https://m.media-amazon.com/images/M/MV5BZmJiZTIwYzktZDQyMi00OWYzLTliZDEtOTAzYmNjNjZjNTllXkEyXkFqcGdeQXVyMjMyNjkwMTY@._V1_SX300.jpg                                                        
                                                                                                                                                                                          
                                                                                                                                                                                          
ratings:                                                                                                                                                                                  
  Internet Movie Database: 8.1/10
   

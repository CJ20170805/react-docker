## How to get the web application running on localhost:7775 (127.0.0.1:7775) 

### There are two ways to setup the server:

####  Run ``` docker-compose up --build ``` to setup the server and run the ```docker-compose down ``` to stop server 

### OR

#### Run ``` docker build -t cao_jiale_coding_assignment11 . ``` to build an image 
#### Run ``` docker run -d -p 7775:7775 cao_jiale_coding_assignment11 ```
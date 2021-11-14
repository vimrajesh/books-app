# Ruby On Rails Project
<bold> Submitted by Group 16 </bold>
Question
Develop a simple RoR MVC REST API to perform CRUD functions.
1. Fetch the data from the database and send the response in JSON.
2. Post the request to the API to perform the database operations. The post request
method must display the books newly added to the database collection.
3. Create a database to store the details of books.

[Code Link](https://github.com/vimrajesh/books-app)

Steps to get the code up and running:

1. Configure Ruby on Rails on your machine. [Check here](https://rubyonrails.org/)
2. Clone this repository and open the directory.
```
git clone https://github.com/vimrajesh/books-app.git
cd books-app
```
3. Install the gems. 
```
bundler install
```
4. Run the server.
rails server
5. To check the server status, run the following command:
```
curl http://localhost:3000
```
6. You can now use both the web interface as well the API to perform CRUD operations.
```
# Web Interface
http://localhost:3000/books
# To access API use the following URL:
http://localhost:3000/api/books
```
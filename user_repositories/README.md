Pre-requisite
Ruby on rails 5 stack is installed and working perfectly fine on your system.

Rails version 5.2.3
Ruby version 2.5.1

Steps to setup the application:
1. check out the code for the repository.
2. Open terminal and navigate to the parent folder in which you checked out the code, and then execute following cmds
    (a) bundle install
    (c) start the server - rails server
3. A rails server is running at localhost port 3000 => http://localhost:3000/

The features provided by the application are following,
1. First API fetches all the repositories of a user both public and private it requires only one parameter access_token i.e GITHUB personal access token with repo access, endpoint /repositories

2. Second API fetches all the repositories of a user both public and private in paginated format it requires following parameters access_token same as above, page 1 (page number), per_page 5 (number of records per page) endpoint /repositories/paginated


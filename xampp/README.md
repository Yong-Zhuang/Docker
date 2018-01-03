This image is intended for PHP+MySQL development. For convenience, it also runs SSH server to connect to. 

Both MySQL and phpmyadmin use default XAMPP password.

This image uses /www directory for your page files, so you need to mount it.

Running the image:
docker run -p 41061:22 -p 41062:80 -d -v 'pwd':/www jazz14jazz/web-development-docker:mysql

The command above will expose the SSH server on port 41061 and HTTP server on port 41062.

So to SSH on the server, use this command: ssh root@localhost -p 41061

default SSH password is 'root'.

To connect to your webpage, visit this URL: http://localhost:41062/www

And to open up the XAMPP interface: http://localhost:41062/

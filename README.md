# shweb - a simple one-line test webserver

This is a very lightweight docker container that I use for testing to make sure a container is accessible
over http.

It uses a very light `alpine` image and uses `nc` (aka netcat) to respond to requests, keeping the image
size small and is essentially a one-line shell script (hence the name `websh`)

it exposes port 80 although you can map that to whatever you like, such as:

```
docker run -d -p 8080:80 vvaidy/shweb
```

And then you should be able to hit the webserver on port 8080 (or whatever you set it to in the run command)

If you want to change the webserver response, edit the Dockerfile and then rebuild the image with a new name:

```
docker build -t mywebsh .
docker run -d -p 80:80 mywebsh
```

Enjoy.


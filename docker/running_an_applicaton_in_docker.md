## Running an Application

To run an application in docker it should be setup in a repo st just running one command runs the application (obviously).

### Choosing a base image

You will need to find a base image to run your application run. Think of this as declaring the OS and dependencies you need
to run your application.

`FROM alpine:3.12.0`

### Copying your files over

Now that you have your base environment to work from, you need to copy over the files that are necessary to run the application.

`ADD local_file_location file_destination_in_docker`

### Building your image

When you have a complete dockerfile, you can think of it as defining an image. We can build this image by running `docker build`

For example: `docker build . -t <image-name>`

### Seeing your images

Run `docker images` to see all of the images that you've built.


### Running your image in a container

`docker run` is the command you need to run containers. This command has quite a few flags... check the other files to see all those flags.

Generally you want to run like this:

`docker run --name <container-name> -d --rm <image-name>`
-d --rm means we're running it in detached mode and the container is removed when the container exits OR the docker daemon exits. Without
--rm, it will only exit when the root process used to run the container exits.
--name is used to name your container when it's running, otherwise the daemon will give it a random UUID to keep track of it.

### Cleaning up
To remove a CONTAINER, use docker rm

To remove an image, use docker rmi

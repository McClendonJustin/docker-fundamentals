FROM alpine:latest

# install bash since alpine only comes with standard sh
RUN apk add --no-cache bash

# create a working directory
WORKDIR /app

# copy my_shell.sh into the container
COPY my_shell.sh .

# run the script when the container starts
CMD ["./my_shell.sh"]
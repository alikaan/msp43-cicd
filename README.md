# Docker Image for Ubuntu with CCS

This project provides a Dockerfile to build a Docker image based on Ubuntu 22.04 with Code Composer Studio (CCS) installed.

## Prerequisites

- Docker installed on your machine. You can download it from [here](https://www.docker.com/products/docker-desktop).

## Building the Docker Image

To build the Docker image, follow these steps:

1. Clone this repository to your local machine.
2. Open a terminal and navigate to the directory containing the `Dockerfile`.
3. Run the following command to build the Docker image:

    ```sh
    docker build -t ti-ccs:0.1 .
    ```

    This command will create a Docker image with the tag `ti-ccs:0.1`.

## Running a Docker Container

To create and run a new Docker container from the built image, follow these steps:

1. Open a terminal.
2. Run the following command to create and start a new container:

    ```sh
    docker run -it ti-ccs:0.1
    ```

    This command will start a new container and open an interactive terminal session.

## Dockerfile Details

The [Dockerfile](http://_vscodecontentref_/1) performs the following steps:

1. Uses `ubuntu:22.04` as the base image.
2. Sets the timezone to Europe/Istanbul.
3. Installs necessary packages including `curl`, `wget`, `unzip`, `vim`, `git`, and others.
4. Downloads and installs Code Composer Studio (CCS) version 12.0.0.00009.
5. Cleans up the downloaded files.
6. Sets the default command to [bash](http://_vscodecontentref_/2).

## Additional Information

For more information about Docker, visit the [official Docker documentation](https://docs.docker.com/).

For more information about Code Composer Studio, visit the [official CCS documentation](https://www.ti.com/tool/CCSTUDIO).

## License

This project is licensed under the MIT License. See the LICENSE file for details.
# Dockerized FEniCs First Steps

This first code version is set with an initial tutorial of FEniCs Library and how to solve differential equations using finite elements method within Python.

This tutorial is already using a docker container definition, since FEniCs needs Linux kernel to run.

The image instructions are within the Dockerfile, and the folder app is set as a shared volume between the container and the host machine.
This means that if what is stored in this folder is accessible not only by the host machine(Windows, for example) but also by the container system(Linux).

The file DockerCommands.txt stores the commands that should be executed to build the image, run and start to the container. 
Usually we work on the code development within Visual Studio Code, which makes it much easier to build and run directly from its GUI.

This code is going to be evolved into the simulation of the multiphase flow within the RealWell Micronit Chip, a microfluid device, which simulates a porous media.

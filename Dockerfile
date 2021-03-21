# Load Base Image
FROM ubuntu:18.04

# Update apt and install python3.7
RUN apt-get update && apt-get install -y \
        software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y \
    python3.7 \
    python3-pip
RUN python3.7 -m pip install pip
RUN apt-get update && apt-get install -y \
    python3-distutils \
    python3-setuptools
RUN pip3 install --upgrade pip

# Install ssh and git
RUN apt-get install ssh -y
RUN apt-get install git -y

# COPY /Geometry/* /app/Geometry/
# COPY /app/res/* /app/res/

# Make Volume
VOLUME /app
WORKDIR /app

# ## Make requirements
COPY /app/requirements.txt /app/ 

# Install FEniCs
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:fenics-packages/fenics -y
RUN apt-get update -y
RUN apt-get install --no-install-recommends fenics -y

# Install final dependencies
RUN pip3 install -r requirements.txt
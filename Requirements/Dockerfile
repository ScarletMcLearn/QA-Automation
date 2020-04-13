docker run -it -p 8080:8080 -v ${PWD}:/Project -w /Project ubuntu bash


#################################################################

apt-get update --fix-missing && \
    apt-get install -y software-properties-common && \
    rm -rf /var/lib/apt/lists/* && \
add-apt-repository -y ppa:deadsnakes/ppa && \
apt update -y && \
apt upgrade -y && \
apt install -y python3.6 && \
apt install -y python3-pip && \
yes | python3 -m pip install --upgrade pip && \
yes | python3 -m pip install virtualenv pip && \
apt-get install -y python3-venv && \
yes | python3 -m venv my_py_venv && \
add-apt-repository -y ppa:git-core/ppa && \
apt update -y && \ 
apt install -y git && \
yes | python3 -m pip install --upgrade pip && \
yes | python3 -m pip install virtualenv && \
source my_py_venv/bin/activate && \ 
yes | pip3 install wheel && \
yes | pip3 install selenium && \
yes | pip3 install git+https://github.com/behave/behave && \ 
yes | pip3 install allure-behave && \ 
&& rm -rf /var/lib/apt/lists/*

#####################################################




# Final Product ! #



apt-get update --fix-missing; apt-get install -y software-properties-common; rm -rf /var/lib/apt/lists/* ; add-apt-repository -y ppa:deadsnakes/ppa; apt update -y; apt upgrade -y; apt install -y python3.6; apt install -y python3-pip; yes | python3 -m pip install --upgrade pip; yes | python3 -m pip install virtualenv pip; apt-get install -y python3-venv; yes | python3 -m venv my_py_venv; add-apt-repository -y ppa:git-core/ppa; apt update -y ; apt install -y git; yes | python3 -m pip install --upgrade pip; yes | python3 -m pip install virtualenv; source my_py_venv/bin/activate; yes | pip3 install wheel; yes | pip3 install selenium; yes | pip3 install git+https://github.com/behave/behave; yes | pip3 install allure-behave; rm -rf /var/lib/apt/lists/*;



#############################################






sudo docker commit CONTAINER_ID lss-container






############################################

FROM ubuntu:latest 

RUN apt-get update --fix-missing && \
    apt-get install -y software-properties-common && \
    rm -rf /var/lib/apt/lists/* && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt update -y && \
    apt upgrade -y && \
    apt install -y python3.6 && \
    apt install -y python3-pip && \
    yes | python3 -m pip install --upgrade pip && \
    yes | python3 -m pip install virtualenv pip && \
    apt-get install -y python3-venv && \
    yes | python3 -m venv my_py_venv && \
    add-apt-repository -y ppa:git-core/ppa && \
    apt update -y ; apt install -y git && \
    yes | python3 -m pip install --upgrade pip && \
    yes | python3 -m pip install virtualenv && \
    source my_py_venv/bin/activate && \ 
    yes | pip3 install wheel && \
    yes | pip3 install selenium && \
    yes | pip3 install git+https://github.com/behave/behave && \ 
    yes | pip3 install allure-behave && \ 
    rm -rf /var/lib/apt/lists/*



##################################################################


docker build -t ash/test:1.0 .



#####################################################################

python3 -m pip install (!!! --user !!!) --upgrade pip

python3 -m pip install (!!! --user !!!) virtualenv

apt-get install python3-venv

python3 -m venv my_py_venv

pip3 install selenium

add-apt-repository ppa:git-core/ppa

apt update; apt install git

pip3 install git+https://github.com/behave/behave

// pip3 install behave


##################################################################

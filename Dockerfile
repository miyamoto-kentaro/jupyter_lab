FROM continuumio/anaconda3:2021.11

RUN apt-get update && apt-get install -y \
    sudo \
    wget \
    vim \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 \
    libgl1-mesa-dev

# RUN conda update -y -n base -c defaults conda

# RUN conda create -y -n temp_env

# RUN conda install -y -c conda-forge -n temp_env opencv

# RUN pip install ipykernel
# RUN python -m ipykernel install --user --name=temp_env
#  jupyter kernelspec list
WORKDIR /
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]
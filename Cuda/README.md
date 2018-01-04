This is what you get from this image :

Ubuntu 14.04 + CUDA 8.0 + cuDNN v5 + Theano + Lasagne + iPython/Jupyter Notebook + Numpy, SciPy, Pandas, Scikit Learn, Matplotlib ... (A few common libraries used for deep learning)

Setup

Install Nvidia drivers on your machine either from Nvidia directly. Note that you don't have to install CUDA or cuDNN. These are included in the Docker container.
Install nvidia-docker: https://github.com/NVIDIA/nvidia-docker. This will install a replacement for the docker CLI. It takes care of setting up the Nvidia host driver environment inside the Docker containers and a few other things.
Run

sudo nvidia-docker run -it --name cuda-theano-lasagne -p 8888:8888 -p 6006:6006 -v pwd:/root/workspace jazz14jazz/cuda-theano-lasagne

In shell, enter the following command to run jupyter notebook:
jupyter notebook "$@"

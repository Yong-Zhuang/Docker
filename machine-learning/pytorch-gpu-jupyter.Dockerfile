FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-runtime
RUN pip install --upgrade pip
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

# Install and configure jupyter, set up password  1.6.0-cuda10.1-cudnn7-runtime
RUN pip install jupyter
RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.password = u'sha1:29add7157178:365482399ea9df01949adbbfb5807d84261926b2'" >> ~/.jupyter/jupyter_notebook_config.py
CMD ["bash", "-c", "jupyter notebook --notebook-dir=/workspace --ip 0.0.0.0 --no-browser --allow-root"]
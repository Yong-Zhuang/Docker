FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime

# Install and configure jupyter, set up password
RUN pip install jupyter
RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.password = u'sha1:29add7157178:365482399ea9df01949adbbfb5807d84261926b2'" >> ~/.jupyter/jupyter_notebook_config.py
CMD ["bash", "-c", "jupyter notebook --notebook-dir=/workspace --ip 0.0.0.0 --no-browser --allow-root"]
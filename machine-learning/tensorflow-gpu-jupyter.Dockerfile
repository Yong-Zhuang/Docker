FROM tensorflow/tensorflow:2.0.0-gpu-py3-jupyter
RUN pip install -r requirements.txt

# Configure jupyter, set up password
RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.password = u'sha1:29add7157178:365482399ea9df01949adbbfb5807d84261926b2'" >> ~/.jupyter/jupyter_notebook_config.py

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]
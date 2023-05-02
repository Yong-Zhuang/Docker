Here's an improved version of the README:

# Machine Learning Development Images

This repository contains Docker images intended for machine learning development.

## TensorFlow Image

This TensorFlow image uses the `/tf/workspace/` directory for your workspace, so you need to mount it. To run the image, use the following command:

```
docker run --runtime=nvidia --name container_name -it -v local_directory:/tf/workspace/ -p 666:8888 -p 667:6006 jazz14jazz/tutoring:tf.2.0
```

This will expose the Jupyter Notebook server on port 666 and the TensorBoard server on port 667. To access the notebook server, open the URL http://localhost:666/ in your browser. The initial notebook password is `xian`. All notebooks from your session will be saved in your `local_directory`.

## PyTorch Image

This PyTorch image uses the `/workspace/` directory for your workspace, so you need to mount it. To run the image, use the following command:

```
docker run --runtime=nvidia --name container_name -it -v local_directory:/workspace/ -p 555:8888 jazz14jazz/tutoring:torch.1.6
```

This will expose the Jupyter Notebook server on port 555. To access the notebook server, open the URL http://localhost:555/ in your browser. The initial notebook password is `xian`. All notebooks from your session will be saved in your `local_directory`.
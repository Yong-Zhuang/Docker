Thess images are intended for mechine learning development. For convenience, it also runs SSH server to connect to. 

***Tensorflow Image***

This tensorflow image uses /tf/workspace/ directory for your workspace, so you need to mount it.

Running the image:
docker run --runtime=nvidia  --name tf2.0 -it -v /data/:/tf/workspace/ -p 666:8888  -p 667:6006 jazz14jazz/tutoring-tensorflow:2.0

The command above will expose the jupyter-notebook server on port 666 and tensor-board server on port 667.
In your browser, open the URL http://localhost:666/. The initial notebook password is xian. All notebooks from your session will be saved in your local directory /data/. 


***Pytorch Image***

This tensorflow image uses /tf/workspace/ directory for your workspace, so you need to mount it.

Running the image:
docker run --runtime=nvidia  --name torch1.6 -it -v /data/:/tf/workspace/ -p 555:8888  jazz14jazz/tutoring-pytorch:1.6

The command above will expose the jupyter-notebook server on port 555.
In your browser, open the URL http://localhost:555/. The initial notebook password is xian. All notebooks from your session will be saved in your local directory /data/.

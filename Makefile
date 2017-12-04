run:
	docker run  -ti -v /home/dinne:/home/dinne --name tensorflow -p 8888:8888 -p 8889:8889 gcr.io/tensorflow/tensorflow:latest-devel-gpu-py3 /bin/bash

#   --user $(id -u) \
#   gcr.io/tensorflow/tensorflow:latest-devel-gpu-py3 \
#    --privileged=true \ 
nvidia-docker run -it \
    --privileged \
    --device=/dev/snd \
    --env="DISPLAY" \
    --volume="/run/dbus/:/run/dbus/:rw" \
    --volume="/dev/shm:/dev/shm" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/home/dinne:/home/dinne" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -p 8888:8888 -p 8889:8889 \
    tensorflow \
    bash


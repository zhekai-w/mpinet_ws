docker run --interactive --tty --rm \
	--gpus all \
	--network host \
	--privileged \
	--env DISPLAY=unix$DISPLAY \
	--env XAUTHORITY \
	--env NVIDIA_DRIVER_CAPABILITIES=all \
	--env "ACCEPT_EULA=Y" \
	--volume /home/zack/motion-policy-networks:/root/mpinets mpinets /bin/bash -c 'export PYTHONPATH=/root/mpinets:$PYTHONPATH; git config --global --add safe.directory /root/mpinets; /bin/bash'

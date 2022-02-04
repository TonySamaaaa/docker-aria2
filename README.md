# docker-aria2

### How to run

	docker run -d --restart always \
	  -p 127.0.0.1:6800:6800 -p 6881-6999:6881-6999 -p 6881-6999:6881-6999/udp \
	  -v /data/docker/aria2:/config \
	  -v /data/aria2:/downloads \
	  --network host --name aria2 tonysamaaaa/aria2

### or

	docker run -d --restart always \
	  -v /data/aria2:/downloads \
	  --name aria2 tonysamaaaa/aria2

### References

 - https://github.com/ngosang/trackerslist
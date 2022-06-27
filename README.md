# hololens_demo

```
roscore
roslaunch jsk_nao_startup jsk_nao_startup.launch network_interface:=ens33 launch_joy:=false
roslaunch naoqi_apps speech.launch
roslaunch ros_tcp_endpoint endpoint.launch
```

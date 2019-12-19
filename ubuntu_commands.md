#Finding out what package a command came from [duplicate]
 dpkg -S 'command name'
 
eg: <code> dpkg -S /bin/ls </code>

Sample output:
  <code> coreutils: /bin/ls </code>


<----------------Alpine Docker Commands----------------->

#add package in alpine docker

<code> apk update </code>
<code> apk add --update docker </code> 

#install service command in alpine docker

<code> apk add --update  openrc </code>

<----------------End of Alpine Docker Commands----------------->



#subtract file1 from file2  
grep -Fxvf /tmp/file2.txt /tmp/file1.txt

--------------------------------------------
#docker image export and import

docker save -o <path for generated tar file> <image name>

Then copy your image to a new system with regular file transfer tools such as cp, scp or rsync(preferred for big files). After that you will have to load the image into Docker:

docker load -i <path to image tar file>
-------------------------------------------

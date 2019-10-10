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

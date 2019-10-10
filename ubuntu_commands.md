#Finding out what package a command came from [duplicate]
 dpkg -S 'command name'
 
eg: <code> dpkg -S /bin/ls </code>

Sample output:
  <code> coreutils: /bin/ls </code>


#add package in alpine docker

<code> apk add --update docker </code>

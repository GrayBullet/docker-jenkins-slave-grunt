docker-jenkins-slave-grunt
=========================
Jenkins slave Docker image with grunt.


Overview
--------
See [docker-jenkins-slave-base](https://github.com/GrayBullet/docker-jenkins-slave-base#README).

Install npm modules.

- yo, bower and grunt-cli
- jsdoc
- editorconfig
- phantomjs
- jshint and jscs


Using
-----
At first, set `buildagent` password.

```
$ docker pull graybullet/jenkins-slave-grunt
$ docker run -it graybullet/jenkins-slave-grunt /bin/bash
root@xxxxxxxx# chpasswd buildagent
Enter new UNIX password: 
Retype new UNIX password: 
passwd: password updated successfully
root@xxxxxxxx# exit
$ docker commit xxxxxxxx jenkins-slave-grunt
```

Run daemon mode.

```
$ docker -d jenkins-slave-grunt
```

License
-------
[MIT License](LICENSE)


# builder

A builder to generate sbom based on the latest docker image of openjdk v11 jdk buster

This docker container runs a bash shell with Java v11 jdk, maven, git and other useful tools


## HOW-TO Build

To build a local image just execute ```make build```


## HOW to run

* Change directory the repo already cloned, for instance, repo [Jersy](https://github.com/JakartaEE-sbom-poc/jersey)
* Execute the command below ```docker run -it --rm -v "$(pwd)":"/app/$(basename ${PWD})" -v "$(dirname ${PWD})/ee4j":/app/ee4j --user $(id -u):$(id -g) -w /app jakartee/builder:latest /bin/bash```
* Afterwards, inside of docker container shell proceeds to execute maven needed.
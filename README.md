# JDK Docker

JAVA Debian Docker image CI. Currently, AdoptOpenJDK8 and AdoptOpenJDK11 Docker images are supported.

### Usage

```bash
$ cd java && ./build_and_push.sh
```

* To disable Pushing Docker Image to AWS ECR
```bash
$ cd java && ./build_and_push.sh false
```

### Adding Docker image support for new JDK version

> NOTE: For upgrading existing JDK builds, only the last step is required

* Create a new directory inside `java` directory. Generally, the directory name would be JDK version like `jdk8`, `jdk11` and `jdk14`
* Add necessary files to new folder like `Dockerfile`
* Modify `build_and_push.sh` script in `java` directory
   * Add new JDK version to `envs`, this also includes registering the service_name/ECR repo
   * Ensure ECR repo is created. Avoid reusing ECR repo as it can lead to confusions or builds could be overriddent
   * Add new JDK version to `if-else` block at the end of `build_and_push.sh`
       * `DOWNLOAD_URL` : Zipped binary file location
       * `JDK_TAG`: JDK tag for the docker image
       * `JDK_VERSION`: This is same as directory name of the untarred binary folder

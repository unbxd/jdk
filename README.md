# Custom Java JDK images

This repository contains images created to be used internally at Unbxd. Here are some variations of the Images that we are going to create. 
1. JDK8 with some util packages added
2. JDK11 with some util packages added
3. JDK11 with JeMalloc added

We use `github-workflows` to publish the given image to ECR.


## Maven
Installing maven is beyond the scope of this project. The idea with the JDK is that the user of the image will build the big-fat jar with all dependencies pre-comppiled. 

Please use this maven plugin to build the fat jar.
[https://maven.apache.org/plugins/maven-assembly-plugin](https://maven.apache.org/plugins/maven-assembly-plugin/)

```
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-assembly-plugin</artifactId>
    <version>3.2.0</version>
    <configuration>
        <descriptorRefs>
            <descriptorRef>jar-with-dependencies</descriptorRef>
        </descriptorRefs>
        <archive>
            <manifest>
                <mainClass>${main.class}</mainClass>
            </manifest>
        </archive>
        <finalName>asterix</finalName>
    </configuration>
    <executions>
        <execution>
            <id>make-assembly</id>
            <phase>package</phase>
            <goals>
                <goal>single</goal>
            </goals>
        </execution>
    </executions>
</plugin>
```

## Packages Installed on Base Image
- Curl
- JQ
- htop
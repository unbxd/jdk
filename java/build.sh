#!/bin/bash

set -e
declare -A envs
envs=( \
    ["jdk11"]="adoptopenjdk-jdk11-base" \
)

declare -A regions
regions=( \
    ["us-east-1"]="us-east-1" \
)

latest="latest"
# Check if AWS command exists or not
type aws > /dev/null 2>&1 || {
    echo >&2 "AWS command not found.Aborting"; exit 1;
}

ECR_URL="012629307706.dkr.ecr.REGION.amazonaws.com"
echo "DEFAULT ECR_URL: $ECR_URL"
# Logs into ECR for a given region
login_ecr () {
    if [ -z "$1" ]; then
        echo >&2 "Incorrect Function Call. No Region Passed"; exit 1;
    fi
    region=$1
    echo "LOGIN to REGION: $region"
    eval $(aws ecr get-login --region $region --no-include-email);
    if [ $? -ne 0 ]; then
        echo "Login to AWS Failed"
        
        exit 9
    fi
}

# push_to_aws region tag
# Pushes the docker image to ECR repo
push_to_aws () {

    if [ -z "$1" ]; then
        echo >&2 "Incorrect Function Call. No Region Passed"; exit 1;
    fi
    if [ -z "$2" ]; then
        echo >&2 "Incorrect Function Call. No Tag Passed"; exit 1;
    fi
    if [ -z "$3" ]; then
        echo >&2 "Incorrect Function Call. No Service name Passed"; exit 1;
    fi
    region=$1
    tag=$2
    service_name=$3
    ecr_url=$(echo "${ECR_URL/REGION/$region}")
    echo "PUSHING DOCKER IMAGE"
    echo "--------------------"
    echo "REG: $reg"
    echo "TAG: $tag"
    echo "SERVICE_NAME: $service_name"
    echo "ECR: $ecr_url"
    docker tag $service_name:$latest $ecr_url/$service_name:$tag
    docker push $ecr_url/$service_name:$tag
    if [ $? -ne 0 ]; then
        echo "Failed to push docker Image"
        exit 9
    fi
    echo "DONE!!"
}

initiate_push () {
    if [ -z "$1" ]; then
        echo >&2 "Incorrect Function Call. No SERVICE NAME specified"; exit 1;
    fi

    echo "TRAVIS: $TRAVIS"
    # Check if build is running on travis and proceed if it's a Travis build
    if [ ! -z "$TRAVIS" ]; then
        # Login to ECR
        for reg in "${!regions[@]}"; do
           echo "FOR REGION: $reg"
           echo "---------------------------------------------------------"
           login_ecr $reg
           if [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
               push_to_aws $reg $latest $1
               if [ ! -z "$2" ]; then
                   push_to_aws $reg $2 $1
               fi
           else
               pr_tag="PR_$(echo "${TRAVIS_PULL_REQUEST_SLUG//\//_}")_$TRAVIS_PULL_REQUEST_BRANCH";
               push_to_aws $reg $pr_tag $1
           fi
       done
    else
       echo "Non-Travis build, Exiting"; exit 0;
    fi
}

# push_to_aws region tag
# Pushes the docker image to ECR repo
build_image () {
    if [ -z "$1" ]; then
        echo >&2 "Incorrect Function Call. No URI PATH Passed"; exit 1;
    fi
    if [ -z "$2" ]; then
        echo >&2 "Incorrect Function Call. No Directory Passed"; exit 1;
    fi
    if [ -z "$3" ]; then
        echo >&2 "Incorrect Function Call. No JDK_VERSION Passed"; exit 1;
    fi
    url="https://github.com/AdoptOpenJDK/${1}"
    dir=$2
    export JDK_NAME=$3

    echo "BUILD ARGUMENTS"
    echo "--------------------"
    echo "URL: $url"
    echo "JDK_VERSION: $env"
    echo "--------------------"
    cd ./${env};
    curl -jkL "${url}" > jdk.tar.gz
    ls -ltrh .
    echo "BUILDING DOCKER IMAGE"
    echo "--------------------"
    docker build -t "${envs[$env]}" --build-arg JDK_NAME .
    echo "DONE!!"
}

for env in "${!envs[@]}"; do

    echo "Initiating build for ${env}"
    echo "------------------"
    if [ "$env" = "jdk11" ]; then
        JDK_TAG="11.0.6_10"
        build_image "openjdk11-binaries/releases/download/jdk-11.0.6+10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.6_10.tar.gz" $env "jdk-11.0.6+10"
    elif [ "$env" = "jdk8" ]; then
        JDK_TAG="1.8.0_242"
        build_image "openjdk8-binaries/releases/download/jdk8u242-b08/OpenJDK8U-jdk_x64_linux_hotspot_8u242b08.tar.gz" $env "jdk1.8.0_242"
    else
       echo "Invalid ${env} specified"; exit 1;
    fi
    echo "Initiating AWS push for ${env}"
    initiate_push "${envs[$env]}" "${JDK_TAG}"
done

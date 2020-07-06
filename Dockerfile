##################################################################
## Licensed to the Apache Software Foundation (ASF) under one   ##
## or more contributor license agreements.  See the NOTICE file ##
## distributed with this work for additional information        ##
## regarding copyright ownership.  The ASF licenses this file   ##
## to you under the Apache License, Version 2.0 (the            ##
## "License"); you may not use this file except in compliance   ##
## with the License.  You may obtain a copy of the License at   ##
##                                                              ##
##   http://www.apache.org/licenses/LICENSE-2.0                 ##
##                                                              ##
## Unless required by applicable law or agreed to in writing,   ##
## software distributed under the License is distributed on an  ##
## "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY       ##
## KIND, either express or implied.  See the License for the    ##
## specific language governing permissions and limitations      ##
## under the License.                                           ##
##################################################################

FROM alpine:latest

LABEL version="11.0.0" \
    maintainer="MaddHacker" \
    author="MaddHacker" \
    description="Run openjdk on any machine without installation"

ARG JAVA_VERSION=11
ARG JAVA_PACKAGE=openjdk11
ARG JAVA_PACKAGE_VERSION=11.0.7_p10-r1

RUN \
    # Install needed packages
    apk -U add "${JAVA_PACKAGE}<${JAVA_PACKAGE_VERSION}" && \
    # Make our temp dir
    mkdir -p /tmp/java

# Make `javac` work
ENV JAVA_HOME=/usr/lib/jvm/java-${JAVA_VERSION}-openjdk \
    PATH="$JAVA_HOME/bin:${PATH}"

# Set the working dir
WORKDIR /tmp/java

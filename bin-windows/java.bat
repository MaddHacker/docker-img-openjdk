:: ##################################################################
:: ## Licensed to the Apache Software Foundation (ASF) under one   ##
:: ## or more contributor license agreements.  See the NOTICE file ##
:: ## distributed with this work for additional information        ##
:: ## regarding copyright ownership.  The ASF licenses this file   ##
:: ## to you under the Apache License, Version 2.0 (the            ##
:: ## "License"); you may not use this file except in compliance   ##
:: ## with the License.  You may obtain a copy of the License at   ##
:: ##                                                              ##
:: ##   http://www.apache.org/licenses/LICENSE-2.0                 ##
:: ##                                                              ##
:: ## Unless required by applicable law or agreed to in writing,   ##
:: ## software distributed under the License is distributed on an  ##
:: ## "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY       ##
:: ## KIND, either express or implied.  See the License for the    ##
:: ## specific language governing permissions and limitations      ##
:: ## under the License.                                           ##
:: ##################################################################

:: #### What this is doing... ####
:: # This script uses the created java docker image to pass all of
:: # the commands provided to `java` into the image, so the java 
:: # JDK is never installed, only run from an image.
:: # It should be put on the path, and (on first run) will correctly pull 
:: # the built (see below for version) image, provided the Docker 
:: # Engine is running.
:: #
:: # @see <dockerhub URL to be provided>
:: #

set JAVA_IMAGE="maddhacker/openjdk"
set JAVA_IMAGE_TAG=latest

docker run --rm -it -v "%cd%":/home/gradle/project "%JAVA_IMAGE%":%JAVA_IMAGE_TAG% java "%*"
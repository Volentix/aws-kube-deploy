# VolentixLabs AWS-Kubernetes CircleCI Docker Build Image

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
[![Semver](http://img.shields.io/SemVer/2.0.0.png)](http://semver.org/spec/v2.0.0.html)
[![Open Source Love](https://badges.frapsoft.com/os/v3/open-source.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![MIT](https://badges.frapsoft.com/os/mit/mit.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

> CircleCi Docker image to deploy into K8s on AWS.

This repo is for the building of a Docker image that will be used as a circle ci docker build container. The image will download and install all the necessary binaries for:
  * Kops
  * aw-cli
  * kubectl

In short, you can use this image to deploy onto kubernetes on aws in a simple and clean way. Additionally, the build cycle is condensed due to the containerg image having all the required dependancies rather than having to download for each build.

For an example on how to implement the entire build pipeline, including this docker image, please see the <REPO NAME HERE> repository.

## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
- [API](#api)
- [Maintainers](#maintainers)
- [Contribute](#contribute)
- [License](#license)

## Background

No image exists for organizations seeking to deploy into Kubernetes on AWS online. Additionally, gathering the information and implementing it requires more time and patients than one would hope. This repos intent is to help others whom have the same requirements as we do for deployment pipelines.

## Usage

This repo is on the building of the container and so does not contain the how-to of integrating it. To see an example implementation, please go here: <REPO NAME HERE>

If you want to fork this repo and run your own CircleCI builds, you will need to set the following 2 environmennt variable in CircleCi:
  * DOCKER_USER
  * DOCKER_PASSWORD
Additionally, you will need to change the text 'volentixlabs/aws-kube-deploy' in [the .circleci/config.yml file](.circleci/config.yml) to your organization and project name.

## Maintainers

[@realrhys](https://github.com/realrhys)

## Contribute

See [the contribute file](contribute.md)!

PRs accepted.

Small note: If editing the README, please conform to the [standard-readme](https://github.com/RichardLitt/standard-readme) specification.

## License

MIT © 2018 VLabs

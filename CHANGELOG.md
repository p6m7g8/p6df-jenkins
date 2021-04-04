# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### [2.1.1](https://github.com/p6m7g8/p6df-jenkins/compare/v2.1.0...v2.1.1) (2021-04-04)


* **link:** remove rendundant symlinks; echo for now ([#27](https://github.com/p6m7g8/p6df-jenkins/issues/27)) ([9304bce](https://github.com/p6m7g8/p6df-jenkins/commit/9304bce51a893f45bec851a1d8d5e7c4a66ded6a))
* **README:** updates generator ([#26](https://github.com/p6m7g8/p6df-jenkins/issues/26)) ([69951d8](https://github.com/p6m7g8/p6df-jenkins/commit/69951d83fdf60216be6b01978583eb922d07c1b1))
* **vscode:** splits vscode extensions to their languages ([#28](https://github.com/p6m7g8/p6df-jenkins/issues/28)) ([b614d35](https://github.com/p6m7g8/p6df-jenkins/commit/b614d3547c02ae9ad12ffcf0898c4babd142c0e6))
* Coc -> .github ([574a72f](https://github.com/p6m7g8/p6df-jenkins/commit/574a72f9d941df36787837b54f275015f6285cd8))

## [2.1.0](https://github.com/p6m7g8/p6df-jenkins/compare/v2.0.0...v2.1.0) (2020-12-06)


### Features

* **api:** +`p6df::modules::jenkins::forward()`, +`p6df::modules::jenkins::on()` ([#23](https://github.com/p6m7g8/p6df-jenkins/issues/23)) ([28d211c](https://github.com/p6m7g8/p6df-jenkins/commit/28d211cec3f8f0eeb2e4921e5789ba0e762be085))
* **api:** +`p6df::modules::jenkins::local::password()` ([#22](https://github.com/p6m7g8/p6df-jenkins/issues/22)) ([cbc4273](https://github.com/p6m7g8/p6df-jenkins/commit/cbc42734f2864f27e7be382c490e17b9de78e84e))
* **api:** centralize ::version() ([f43bad1](https://github.com/p6m7g8/p6df-jenkins/commit/f43bad1e41e8d7dc926970b07ab64d4d609d5463))
* **community:** adds CODE_OF_CONDUCT ([3c0b8e2](https://github.com/p6m7g8/p6df-jenkins/commit/3c0b8e2d3545cf60d8d41cad318ff6e5fe31c548))
* **github:** adds ISSUE_TEMPLATEs ([07fa5cd](https://github.com/p6m7g8/p6df-jenkins/commit/07fa5cdc491c93c3f917fce9009258d3716ee890))


* **community:** rely on the .github/ in the org ([#24](https://github.com/p6m7g8/p6df-jenkins/issues/24)) ([b85b8b9](https://github.com/p6m7g8/p6df-jenkins/commit/b85b8b99f801eaf58c7f3eea7924fdb8c416fbf2))
* **README:** fixes module expansion, adds CodeCov and Synk badges ([#25](https://github.com/p6m7g8/p6df-jenkins/issues/25)) ([da4f099](https://github.com/p6m7g8/p6df-jenkins/commit/da4f099e41324d19bac71f53f65dfa357a200947))
* **semantic:** no longer needed, defaults are fine ([82a2320](https://github.com/p6m7g8/p6df-jenkins/commit/82a23200342e72eeb627cf0ab25dfc860fdf3601))

## [2.0.0](https://github.com/p6m7g8/p6df-jenkins/compare/v1.0.1...v2.0.0) (2020-10-11)


### Bug Fixes

* **deps:** fix depends ([#16](https://github.com/p6m7g8/p6df-jenkins/issues/16)) ([f4457dc](https://github.com/p6m7g8/p6df-jenkins/commit/f4457dcdf3eac7dad5c6431db4653117d95d35fb))

### [1.0.1](https://github.com/p6m7g8/p6df-jenkins/compare/v1.0.0...v1.0.1) (2020-09-20)


### Features

* **api:** -job_create,-job_update(); +job_build,+job_tail; JENKINS_HOST -> JENKINS_URL ([#14](https://github.com/p6m7g8/p6df-jenkins/issues/14)) ([7abcf9c](https://github.com/p6m7g8/p6df-jenkins/commit/7abcf9c320a8fe2be2bfaf64c129bcdaee76578b))
* **gitignores:** init ([#3](https://github.com/p6m7g8/p6df-jenkins/issues/3)) ([20a2ff2](https://github.com/p6m7g8/p6df-jenkins/commit/20a2ff20dce25905b4f2699f21daf19cbba4d0cf))
* **pipeline:** jenkins ([#4](https://github.com/p6m7g8/p6df-jenkins/issues/4)) ([f7c737e](https://github.com/p6m7g8/p6df-jenkins/commit/f7c737ee98cf2f5bbe9a0ace6cee19eb2b64d103))
* **pipeline:** replace with with job-dsl ([#13](https://github.com/p6m7g8/p6df-jenkins/issues/13)) ([6685098](https://github.com/p6m7g8/p6df-jenkins/commit/668509864efbe4973017e8604090e34b0e5a811d))
* **repo:** setup template stuff ([#2](https://github.com/p6m7g8/p6df-jenkins/issues/2)) ([d6119a9](https://github.com/p6m7g8/p6df-jenkins/commit/d6119a9dfeecfe589b6342106847bcf07941ac97))


### Bug Fixes

* **pipeline:** some info ([#10](https://github.com/p6m7g8/p6df-jenkins/issues/10)) ([706d9f2](https://github.com/p6m7g8/p6df-jenkins/commit/706d9f26891976ee1fe7033da488a3c55b8597bd))
* **pipeline:** timestamp isn't valid ([#9](https://github.com/p6m7g8/p6df-jenkins/issues/9)) ([87b8bea](https://github.com/p6m7g8/p6df-jenkins/commit/87b8bea6ac786a7231d56e2c9735ae59e182cbac))
* **pipeline:** typo ([#5](https://github.com/p6m7g8/p6df-jenkins/issues/5)) ([a19fb91](https://github.com/p6m7g8/p6df-jenkins/commit/a19fb915d481b5d9033a7938f19e89ca37d5d47b))
* **pipeline:** typo ([#7](https://github.com/p6m7g8/p6df-jenkins/issues/7)) ([2f9f222](https://github.com/p6m7g8/p6df-jenkins/commit/2f9f222ccdfded1375a8e7b09ce2f927aefa8949))
* **pipeline:** typo ([#8](https://github.com/p6m7g8/p6df-jenkins/issues/8)) ([54e5817](https://github.com/p6m7g8/p6df-jenkins/commit/54e5817e96a0a31cc493a2e45d13cf22c7ec5351))
* **pipeline:** use step ([#6](https://github.com/p6m7g8/p6df-jenkins/issues/6)) ([15f8339](https://github.com/p6m7g8/p6df-jenkins/commit/15f8339974124b0e8ded57e64d1d5644dbee98c0))
* **pipelines:** more info ([#11](https://github.com/p6m7g8/p6df-jenkins/issues/11)) ([e4d40b6](https://github.com/p6m7g8/p6df-jenkins/commit/e4d40b66326993128594abd7875e8d42a154a515))
* **pipelines:** more info ([#12](https://github.com/p6m7g8/p6df-jenkins/issues/12)) ([48a884f](https://github.com/p6m7g8/p6df-jenkins/commit/48a884fcc8b74000ecb2b75508acec75dc536ffd))


* **api:** moved to `p6m7g8/p6jenkins` ([#15](https://github.com/p6m7g8/p6df-jenkins/issues/15)) ([e369bd8](https://github.com/p6m7g8/p6df-jenkins/commit/e369bd84ce0188f8b3e37651f8c8aeae1050cb1c))

## 1.0.0 (2020-06-07)

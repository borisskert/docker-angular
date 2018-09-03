# example-angular

## Project structure

| sub-folder | description |
|------------|-------------|
| [./angular-docker](angular-docker/README.md) | project which shows how to integrate docker containers's environment variables into angular |

## Doing a release

### Preparation

* Change to latest state of `develop`-branch:

```bash
$ git checkout develop && git pull
```

* Pull the initial or latest release-scripts from git-submodule:

```bash
$ git submodule init
$ git submodule update
```

* Run the release-script:

```bash
$ ./release-scripts/release.sh ${RELEASE_VERSION} ${NEXT_VERSION}
```

For example, if you want to release version `3.2.1` and want the next SNAPTSHOT version in your pom set to `3.3.0-SNAPSHOT`, you have to run following command:

```bash
$ ./release-scripts/release.sh 3.2.1 3.3.0
```

Consider [release-scripts documentation](https://github.com/borisskert/release-scripts).
The release-script will NOT push anything into remote automatically but it will perform some commits, merges and will create a git tag.

* The release-script will inform you about how to push the changes into the remote. The command looks like the following:

```bash
$ git push --atomic ${REMOTE_REPO} ${MASTER_BRANCH} ${DEVELOP_BRANCH} --follow-tags
```

* Travis will perform the build of the docker-image automatically. Have a look at the progress here: [example-angular on travis](https://travis-ci.com/adorsys/example-angular)

# procs-sagas-dockerize.md
+ registry.cn-hangzhou.aliyuncs.com/samlet/sagas_base:0.1
+ registry.cn-hangzhou.aliyuncs.com/samlet/sagas_stack:0.1

## notice
⊕ [Sending build context to Docker daemon seems quite high - General Discussions - Docker Forums](https://forums.docker.com/t/sending-build-context-to-docker-daemon-seems-quite-high/26955)
    The build context is all the files/directories in the current directory (the ‘.’ directory from the docker build command).
    Keep only files you need for the build in this directory. That is, the Dockerfile and any local files/directories copied/added to the build image in the Dockerfile.

## cli
```bash
$ enter.sh samlet/servant_stack:0.1

$ python -m sagas.nlu.nlu_cli get_chains menina pt n
$ python -m sagas.nlu.nlu_tools clip_parse en 'i am a student'
$ python -m sagas.nlu.nlu_tools clip_parse id 'Kami tak boleh berbicara.'

$ alias sid="python -m sagas.tool.misc trans_clip id 'en;zh-CN;ja' en False"
$ sid 'Kami tak boleh berbicara.'
```


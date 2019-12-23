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

+ zh

```sh
$ start zh-bash
$ python -m sagas.zh.ltp_checker procs '中国进出口银行与中国银行加强合作。'
```

## duckling
```sh
run duckling  # alias run='docker-compose up'
curl -XPOST http://0.0.0.0:8000/parse --data 'locale=zh_CN&text=上星期天' | json
```

## nlu & dm
```sh
$ python -m saai.saai_cli nlu_parse '附近有什么好吃的' zh
$ python -m saai.saai_cli nlu_parse "Shenzhen ist das Silicon Valley für Hardware-Firmen" de

$ python -m saai.saai_cli bot_message
```

## within docker-compose
```sh
$ alias runi='docker-compose exec'
$ runi agent_servant bash
> python -m saai.nlu_mod_procs train en
> python -m saai.nlu_mod_procs train zh
```

## docker toolkits
```sh
# retrain and reload
$ docker exec -it sagas_agent_servant_1 python -m saai.saai_cli nlu_reload en

# only retrain
$ docker exec -it sagas_agent_servant_1 python -m saai.nlu_mod_procs train en

$ alias agents='docker exec -it sagas_agent_servant_1 python -m'

# reload agent
$ agents saai.saai_cli bot_reload genesis
```




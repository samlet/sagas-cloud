# sagas cloud project

- dockerized components
- k8s deploy
- cloud maintainer scripts

## 关于扩展点

* 通过扩展点(extension-points), 就可以基于指定的image来构建servants/toolkits/components; 然后用compose来测试和运行.
* 象kafka/rabbit等等, 只在测试相关组件时才有必要运行.

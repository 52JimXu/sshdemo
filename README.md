＃适合初学者吧
# 记录完成ssh框架demo

首先，老师只教了hibernate3.0，而且还有一些没讲，比如缓存什么的，然后Spring和SpringMVC都是我自己学的吧，后面老师才会讲，所以，遇到的坑比较多吧，完全作为初学者尝试着把这个demo做出来了。做这个demo的原因是老师布置了一个用hibernate的web作业，我就想尝试着试试，试着试着，中秋就结束了啊啊啊啊啊啊！！！

## 先来看看坑

### Spring-orm使用了5.02版本，hibernate使用3.6.10版本

![](http://v7.jimxu.top/images/1568516285453.png)
然后5.02的Spring-orm不支持hibernate3，它只有hibernate5


![](http://v7.jimxu.top/images/1568516302425.png)
之后改为3.几的 版本就好了

### sessionFactory配置的class问题
hibernate3.0 是org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean
hibernate4.0 是org.springframework.orm.hibernate4.LocalSessionFactoryBean
hibernate5.0 是org.springframework.orm.hibernate5.LocalSessionFactoryBean
总是在版本上搞错

这两个问题是印象比较深刻的，其他都是一些小问题，一会儿就解决的，不是说这两个问题难，只是这两个问题是我没遇见过的，处理的很棘手。

### sshdemo
源码地址:https://github.com/52JimXu/sshdemo

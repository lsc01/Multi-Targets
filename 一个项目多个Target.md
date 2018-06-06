一个项目，多个Target

我们项目中，默认建好是只有一个target的，但是，一些场景中，多target能帮助我们更好的使用项目。

**场景1:**

就是同一产品会有两种客户端构成，现在有很多这种场景下的项目，类似滴滴的司机端和乘客端，教学项目的学生端和教师端等等。。

这种项目，会生成2个App，但其中很多东西可以共用，因此在一个项目里创建管理，会更好更方便。



**场景2:**

同一项目，一般会分不同环境：开发环境、测试环境、正式（生产）环境。

这就涉及到一个请求接口的区别，一般我们可能会定义多个，每次切换环境，就用代码注释解决，的确不是太方便。

其次一个，就是某一类特殊项目，主功能都一样，可能就是只需要更换icon图标、bundleID等等信息，需要发布多款APP，这种情况下，你如果每次发布一个就手动替换这些信息，真的要哭了。。。

一个项目，会有企业版和AppStore版两种需求，把一个项目copy一份，用作AppStore或企业版，这种做法，是要被拖出去打死的。

---
**============ 对于场景1 =============**

1，新建一个Project工程。

![image](https://note.youdao.com/yws/api/personal/file/WEB369fac795d575e763d3a25abeac60325?method=download&shareKey=607e6fcb7df45a8bd97e387a994ec7f1)
2，新建一个target,给target取个名字

![image](https://note.youdao.com/yws/api/personal/file/WEB823c4251e0eaf883ab387e75b5c2040f?method=download&shareKey=0c328505cd835421e89b1c7465187922)


![image](https://note.youdao.com/yws/api/personal/file/WEB573ff4b074b1a8b1816fca6878b3f657?method=download&shareKey=22b310819f4022f75ec2136b5af7a3a4)

![image](https://note.youdao.com/yws/api/personal/file/WEBbb2be16d1a3c91a3360487f1ffb83a43?method=download&shareKey=ff1a9bd570b61e4479356ae91789b814)

3，新建后的效果

![image](https://note.youdao.com/yws/api/personal/file/WEB683176da3eb3e59008ddf6cae4b86856?method=download&shareKey=185bc905e32c7bea4f3d48639c68558e)


4，把target和相应的类关联，相应的类关联了哪个target就是哪几个target共用。然后改一下新的target的类名，如果需要共用APPDelegate的方法也可以继承，可以不继承。

![image](https://note.youdao.com/yws/api/personal/file/WEB0071bd69bbd19ec1f4f27217066d1a75?method=download&shareKey=8aa5eb31adc4e53caa8a4dcfa36a520b)

![image](https://note.youdao.com/yws/api/personal/file/WEBabec4649244b90f9d26ad77ade50deab?method=download&shareKey=d42384b9263b16a8e0eeef778a78e893)

![image](https://note.youdao.com/yws/api/personal/file/WEB2613ed2b64f39be7a897663f440fcdca?method=download&shareKey=dd6458ba1278c93eee20d8015fd1bd59)



5，记住每个target都有一个入口函数是在mian.m中，不管是继承自AppDelegate的delegate类(Target2AppDelegate)还是改名后的delegate类((Target2AppDelegate),都要在main.m类中将AppDelegate改成对应的。(我就是找了半天发现没走Target2AppDelegate中的方法)

![image](https://note.youdao.com/yws/api/personal/file/WEBb77f3f1e8d9b7d4e81f363b0d6dd675f?method=download&shareKey=5328c2f3417835fe5bfaea31ff89f0c4)

6，关联的方法如上，每个文件都可以以相同的方法关联到多个不同的target成为共用文件。如何在类中区分各个target，如下所示，先给target设个标志。(给release加标志的时候记得再加上 ***$(inherited)*** ，不然使用pod的时候有问题)

![image](https://note.youdao.com/yws/api/personal/file/WEB8fea51e4da9fc1c616a2e0876dc8428d?method=download&shareKey=299d68a56692282c832a1ca4cacdb66c)

7，在代码中需要区分的时候使用预处理指令

```
#ifdef targerxxx
    //特殊代码
#endif
```

![image](https://note.youdao.com/yws/api/personal/file/WEB0530c3bdaf92ba6cead088a124d166cd?method=download&shareKey=492516071db82254028b7925f689340a)

---
**============ 对于场景2 =============**






---
**============ 不同target使用cocoapod =============**

使用了多个target一般都会引入不同的第三方库，比如上线App Store 和 企业账号发布的不一样，很多第三方库的使用App Store会被拒，如蒲公英，这使用在企业账号发布的应用没关系。

下面介绍一下使用cocoapod添加三方库注意点：
1. 共用库写到外面，不要写到target语句中。
1. 只在当前target使用的库就写到当前target中。
1. 在使用时注意区分target使用，在多个target共用文件中使用记得做target判断。

cocoapod文件

![image](https://note.youdao.com/yws/api/personal/file/WEB62d2f4b001e20893766657c1dbf5d079?method=download&shareKey=2ddedf722376fabf6ffa9304c6a30a7e)

只关联了单个target文件使用了其他target引入的库

![image](https://note.youdao.com/yws/api/personal/file/WEBd659af307e94798433a7351a7e615ec9?method=download&shareKey=019af37ccb58c00ed921f9930009be7f)

关联了多个target的文件，注意区分target
![image](https://note.youdao.com/yws/api/personal/file/WEB16f870e75150cbd741a51a38b556a8eb?method=download&shareKey=8f660740778dbd3d0611037e8de48a9f)

[Demo Github地址](https://note.youdao.com/)

该文档非原创，参考如下:

[iOS一个工程实现多个Target](https://blog.csdn.net/u012265444/article/details/53261224)

[iOS开发 一个项目中多个target（例：企业版和AppStore版）](https://blog.csdn.net/syg90178aw/article/details/51692763?locationNum=13)

[iOS同一项目多个Target的快速实现方法 - 两种使用场景详解](https://blog.csdn.net/u012371575/article/details/78585155)


[iOS开发 pod管理项目，多个target管理的Podfile的写法](https://blog.csdn.net/syg90178aw/article/details/52913249)

[CocoaPods为多个target添加依赖库](https://www.jianshu.com/p/5d29bc212273)

[The Podfile](http://guides.cocoapods.org/using/the-podfile.html)
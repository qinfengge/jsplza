### HHSTU-物联网S201-JSP实验代码
**目前只写到第八个实验**
> 实验1 Tomcat服务器的安装与配置
一、实验目的
本实验的目的是让学生掌握怎样设置Web服务目录、怎样访问Web服务目录下的JSP页面、怎样修改Tomcat服务器的端口号。
二、实验要求
 1、将下载的apache-tomcat-6.0.13.zip解压到D盘中，并进行调试。
2、用文本编辑器编写一个简单的JSP页面test.jsp，并保存到Web服务目录中。
 
 




实验2  JSP页面的基本结构
一、实验目的
本实验的目的是让学生掌握怎样在JSP页面中使用成员变量，怎样使用Java程序片、Java表达式。
二、实验要求
本实验将用户输入的单词按字典顺序排序。需要编写两个JSP页面，名字分别为inputWord.jsp和showDictionary.jsp。
三、实验内容
•	inputWord.jsp页面有一个表单，用户通过该表单输入若干个单词，并提交给showDictionary.jsp页面。
•	showDictionary.jsp负责排序单词，并将排序的全部单词显示给用户。


实验3  JSP指令标记
一、实验目的
    本实验的目的是让学生掌握怎样在JSP页面中使用include指令标记在JSP页面中静态插入一个文件内容。
二、实验要求
该实验要求使用include指令标记使得每个页面都包含导航条。在进行试验之前，将名字是leader.txt的文件保存到本实验所使用的web服务目录中。
三、实验内容
leader.txt编写3个JSP页面。
•	first.jsp使用include指令静态插入leader.txt文本文件。
•	second.jsp使用include指令静态插入leader.txt文件。
•	third.jsp使用include指令静态插入leader.txt。


实验4  JSP动作标记
一、实验目的
本实验的目的是让学生掌握怎样在JSP页面中使用include标记动态加载文件，使用forward实现页面的转向。
二、实验要求
编写三个JSP页面：giveFileName.jsp、readFile.jsp和error.jsp。
三、实验内容
1）giveFileName.jsp页面使用include动作标记动态加载readFtle.jsp页面，并将一个文件的名字ok.txt传递给被加载的readFtle.jsp页面。
2）readFile.jsp页面负责根据giveFileName.jsp页面传递过来的文件名字进行文件的读取操作，如果该文件不存在就使用forward动作标记将用户转向error.jsp。
3）error.jsp负责显示错误信息。


实验5  request对象
•	实验目的
    本实验的目的是让学生掌握怎样在JSP中使用内置对象request。
•	实验要求
    通过JSP页面和Tag文件实现数字的四则运算，要求编写两个JSP页面inputNumber.jsp和receiveNumber.jsp及一个Tag文件Computer.tag 。 receiveNumber.jsp使用内置对象接受inputNumber.jsp提交的数据，然后将计数任务交给Tag文件Computer.tag去完成。
•	实验内容
1）inputNumber.jsp页面提供一个表单，用户可以通过表单输入两个数、选择四则运算符号，并将输入的两个数和所选择的运算符号提交给receiveNumber.jsp页面。
2）receiveNumber.jsp使用内置对象inputNumber.jsp页面提交的数据，然后将计算任务交给Tag文件Computer.tag去完成。
3）要求Computer.tag使用attribute指令得到receiveNumber.jsp页面传递过来的书和运算符号，使用variable指令将运算结果返回给receiveNumber.jsp页面。


实验6  session对象
•	实验目的
    本实验的目的是让学生掌握怎样使用session对象存储和用户有关的数据。
•	实验要求
    使用session对象模拟购物车。编写两个JSP页面choiceBook.jsp和orderForm.jsp。
•	实验内容
1）用户在choiceBook.jsp页面通过超链接将自己要购买的图书信息传递到orderForm.jsp页面。
2）orderForm页面将用户购买的图书信息存储到session对象中，然后生成一个图书订单并显示给用户。


实验7  使用文件字节流读写文件
•	实验目的
    本实验的目的是掌握使用文件输入、输出字节流读写文件。
•	实验要求
    使用JSP+JavaBean方式实现文件的拷贝操作
•	实验内容
1）创建一个名为copy.jsp页面，在该页面中创建一个Form表单，表单中提供3个控件，两个单行文本框，一个提交按钮。
2）文本框中输入源文件路径和目的文件路径，提交后实现文件拷贝操作.
3）具体的拷贝工作由JavaBean完成，页面负责调用。

实验8  使用文件字符流加密文件
•	实验目的
    本实验的目的是掌握使用文件字符输入、输出流读写文件。
•	实验要求
    编写3个JSP页面inputContent.jsp、write.jsp和read.jsp，以及JavaBean。
•	实验内容
1）inputContent.jsp页面提供一个表单，要求该表单提供TextArea的输入界面输入多行文本提交给write.jsp
2)write.jsp页面调用一个JavaBean将inputContent.jsp页面提交的文本信息加密后写入到文件save.txt中。
3）read.jsp页面提供一个表单，该表单提供两个单选按钮，名字分别是“读取加密文件”，该页面选中的单选按钮的值提交给本页面。
4）JavaBean获得write.jsp页面传递过来的文本信息，并使用文件输出流将其写入到文件save.txt。
5）JavaBean使用文件输入输出流读取文件save.txt，并根据read.jsp的要求决定是否进行解密处理，然后将有关信息返回给read.jsp页面。


实验9  数据库操作
•	实验目的
    本实验的目的掌握使用JDBC查询数据库中表的记录。
•	实验要求
编写两个JSP页面实现对数据库表中数据的操作。show.jsp用于显示数据。modify.jsp用于修改数据
•	实验内容
建立名为employee的数据库表，字段包括：
字段名	中文含义	数据类型
id	职工号	文本
name	姓名	文本
sex	性别	文本
salary	工资	数值
title	职称	文本
通过JDBC编写一系列基于Web方式的JSP程序，来对职工数据表的数据库进行添加、查询等功能，要求在网页上显示出来。



实验10  有效范围为session的bean
•	实验目的
    本实验的目的是让学生掌握使用有效范围是session的bean显示计算机的基本信息。
•	实验要求
    本实验2要求和实验1类似，但是和实验1不同的是，要求编写两个JSP页面input.jsp和show.jsp。编写一个名字为computer的Javabean，其中computer由PC.class类负责创建。
•	实验内容
1.	input.jsp页面提供一个表单。其中表单允许用户输入计算机的品牌、型号和生产日期，该表单将用户输入的信息提交给当前页面，当前页面调用名字为computer的bean，并使用表单提交的数据设置computer的有关属性的值，要求在input.jsp提供一个超链接，以便用户单击这个超链接访问show.jsp。
2.	Show.jsp调用名字为computer的bean，并显示该bean的各个属性。
3.	编写的PC.java应当有描述计算机品牌、型号和生产日期的属性，并提        供相应的getXxx和setXxx方法，来获取和修改这些属性的值。PC.java        中使用package语句，起的包名是bean.data。将PC.java编译后的字节码        文件PC.class保存到chapter7\WEB-INF\classes\bean\data目录中。

# Leave
一款基于Activiti5的职工请假系统，其中整合了SSM框架，使用maven进行构建

使用maven构建项目，管理所依赖的jar包。

使用SSM框架实现后台业务逻辑，以及与数据库交互。

使用jqueryEasyui实现前台页面的搭建，并使用Ajax与后台进行json数据交互，并在页面中使用jstl标签实现权限控制。

使用Activiti5实现请假流程控制，这里的流程比较简单：由职工发起请假请求，小于等于7天的由部长审批即可，大于7天的需要由院长审批。
部长和院长拥有管理员权限，可以进行批假、查看历史请假记录以及相关批注。职工拥有员工权限，只能发起请假、查看当前请假流程的情况和历史请假流程。

![image](https://github.com/286229825/Leave/blob/master/src/main/webapp/readmePic/01.jpg)
![image](https://github.com/286229825/Leave/blob/master/src/main/webapp/readmePic/02.jpg)
![image](https://github.com/286229825/Leave/blob/master/src/main/webapp/readmePic/03.jpg)
![image](https://github.com/286229825/Leave/blob/master/src/main/webapp/readmePic/04.jpg)
![image](https://github.com/286229825/Leave/blob/master/src/main/webapp/readmePic/05.jpg)
![image](https://github.com/286229825/Leave/blob/master/src/main/webapp/readmePic/06.jpg)
![image](https://github.com/286229825/Leave/blob/master/src/main/webapp/readmePic/07.jpg)

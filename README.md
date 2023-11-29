## 本项目实现的最终作用是基于JSP招聘求职管理系统
## 分为4个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 企业信息管理
 - 修改个人信息和密码
 - 关于我们管理
 - 友情链接管理
 - 工作地点管理
 - 招聘信息管理
 - 求职信息管理
 - 求职技巧管理
 - 求职者管理
 - 留言板管理和回复
 - 管理员信息管理
 - 系统简介管理
 - 职场咨询管理
### 第2个角色为企业用户角色，实现了如下功能：
 - 人才推荐管理
 - 企业登录注册
 - 企业详情管理
 - 招聘信息管理
 - 求职信息管理
### 第3个角色为设计文稿，实现了如下功能：
 - 论文截图
### 第4个角色为求职者角色，实现了如下功能：
 - 个人基本信息管理
 - 个人简历管理
 - 企业和工作推荐查看
 - 企业推荐查看
 - 企业来信查看
 - 企业资料查看
 - 我的工作申请
 - 招聘信息查看
 - 查看收藏的职位
 - 查看求职技巧
 - 求职者登录注册
 - 求职者首页
 - 留言板查看
 - 系统简介
## 数据库设计如下：
# 数据库设计文档

**数据库名：** qzzp_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [area](#area) |  |
| [emp](#emp) |  |
| [fav](#fav) | 商品收藏表 |
| [hbnews](#hbnews) |  |
| [messages](#messages) |  |
| [msg](#msg) |  |
| [sysuser](#sysuser) |  |
| [yqlj](#yqlj) |  |
| [zdatadic](#zdatadic) |  |
| [zpinfo](#zpinfo) |  |
| [zxjl](#zxjl) |  |

**表名：** <a id="area">area</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | addr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  3   | delstatus |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 删除状态  |

**表名：** <a id="emp">emp</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | tname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 真实名字  |
|  4   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  5   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  6   | status |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 状态  |

**表名：** <a id="fav">fav</a>

**说明：** 商品收藏表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | qzzuname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | zpinfoid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="hbnews">hbnews</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | author |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 作者  |
|  4   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  5   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  6   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  7   | infotype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 信息类型  |

**表名：** <a id="messages">messages</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | saver |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 上传者  |
|  3   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  4   | content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | resaver |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | recontent |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | resavetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="msg">msg</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  3   | qzzuname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | qyid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |

**表名：** <a id="sysuser">sysuser</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | upass |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | tname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 真实名字  |
|  5   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  6   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  7   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  8   | email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  9   | houhold |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | addrs |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | birth |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | wei |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | hei |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | health |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  15   | tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  16   | school |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  17   | zy |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  18   | xl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  19   | cbdate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  20   | grjs |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |
|  21   | grjl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  22   | xqah |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  23   | gzjl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  24   | xmjy |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  25   | wyll |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  26   | utype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户类型  |
|  27   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  28   | qzyx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="yqlj">yqlj</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | ljname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | ljurl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |

**表名：** <a id="zdatadic">zdatadic</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | datatype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | ptitle |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |

**表名：** <a id="zpinfo">zpinfo</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | zprs |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | gzdd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | xl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | jl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | infotype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 信息类型  |
|  8   | bei |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | dy |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  11   | qyuname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | qytname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | gznr |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |
|  14   | fl |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |
|  15   | zhuanye |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="zxjl">zxjl</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | touname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | tcontent |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  6   | pid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**

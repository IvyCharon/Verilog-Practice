# Verilog小作业

参考网站：

https://hdlbits.01xz.net/wiki/Main_Page

https://www.runoob.com/w3cnote/verilog-tutorial.html

### 作业目的

Verilog是第二学年第一学期的CPU大作业所使用的语言。Verilog作为一种硬件语言，有许多独特的特性，本次小作业的目的是使大家熟悉Verilog语言特性，为CPU大作业做准备。

### 作业目标

- 实现基础的与非门，熟悉Verilog语言
- 使用Verilog语言完成一个仅使用与非门的整数加法器
- 了解Verilog的时序电路和组合电路的区别，学写时序电路

### 作业任务

1. `1249 Gates Test` ：完成 `gate.v` 中的所有模块并提交

2. `1250 Add Test`：完成 `add.v` 中的 Add 模块，实现一个简单的 int 加法器并提交 `add.v`

3. `1251 Module Test`：学习模块调用，完成 `module_p.v` 中的 `module_p` 模块并提交 `module_test.v`

4. `1252 Zero Delay Oscillation`：完成 `zdo.v` 中的模块，实现一个零延时震荡

5. `1253 Dff`：完成 `Dff.v` 中的 `Dff` 模块并提交

6. 问题回答：

   - 列出时序电路和组合电路的区别
   - 分别指出 `always @(*)` 和 `always @(posedge clk)` 中的 `*` 和 `posedge clk` 的含义

   发送答案至邮箱 shihanwen@sjtu.edu.cn

### Verilog环境配置

我们使用 `Icarus Verilog` 编译我们的代码。

##### Linux & wsl 环境

下载指令：`sudo apt install iverilog`

##### MacOS

要求提前安装好 `brew`

下载指令： `brew install icarus-verilog`

**Windows**

下载，http://bleyer.org/icarus/iverilog-v11-20201123-x64_setup.exe 或 https://jbox.sjtu.edu.cn/l/dFFHFl 

一路下一步，选中Add executable folder to the user PATH.

<img src = "https://staticcdn.boyuai.com/user-assets/9557/mK3NHDPvLHK5qgAEK9ih3q/verilog.png!png" style = "zoom:100%">

### 运行Verilog代码

编译指令：

```
➜  iverilog top_module.v -o a
➜  ./a
```

需要注意的是，Verilog运行的是名为 `top_module` 的模块（可以类别为C++中的 `main` 函数），所以请大家自行学习如何在模块内调用其他模块，并修改给出代码中的 `top_module` 来测试自己代码的正确性。

### ddl&分数占比

ddl：第2周周日（7.11）23:00

分数占比：5%
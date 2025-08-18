# bash_demo

# test1: Bash 栈操作脚本

这是一个用 Bash 编写的交互式命令行工具，模拟了栈（Stack）数据结构的基本操作。支持元素入栈、出栈、打印栈内容、清空栈等功能。

## 脚本功能

- `push <元素>`：将元素压入栈中
- `pop`：从栈顶弹出一个元素
- `print`：打印当前栈的内容
- `clear`：清空整个栈
- `help`：显示命令帮助
- `exit`：退出程序

##  文件说明

- `test1.sh`：主脚本文件，包含所有栈操作逻辑

## 使用方式

./test1.sh


## 使用示例

./test1.sh

未知命令，输入 'help' 查看可用命令
> help

Usage:
  push <element>  # 入栈
  
  pop             # 出栈
  
  print           # 打印栈
  
  clear           # 清空栈
  
  help            # 显示帮助
  
  exit            # 退出程序
> push 1  #已将 '1' 进栈
> 
> push 2  #已将 '2' 进栈
> 
> print  #栈的当前状态: [1 2]
> 
> pop  #已将 '2' 出栈
> 
> print  #栈的当前状态: [1]
> 
> pop  #已将 '1' 出栈
> 
> print  #栈为空
> 
> exit

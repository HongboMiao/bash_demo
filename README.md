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

# test2: Ollama 启动脚本（基于 Conda 和 DeepSeek 模型）

本脚本用于自动完成以下任务：

- 检查并创建 Conda 虚拟环境
- 下载并安装 Ollama 模型服务
- 启动 Ollama 后台服务
- 拉取并运行指定的模型（如 `deepseek-r1:7b`）

适用于 Linux 系统，有一定命令行基础的用户。

---

## 脚本功能概览

| 步骤 | 说明 |
|------|------|
| Conda 检查 | 检测本机是否安装了 Conda（Anaconda 或 Miniconda） |
| Conda 环境 | 创建名为 `vllmfinal` 的 Conda 环境（Python 3.12） |
| Ollama 安装 | 下载并运行 Ollama 安装脚本（需要联网） |
| 模型服务 | 启动 Ollama 后台服务并记录日志到 `ollama.log` |
| 模型拉取 | 拉取 `deepseek-r1:7b` 模型 |
| 模型运行 | 直接使用拉取的模型进行推理 |

---

## 运行前准备

- 已安装 Conda（Anaconda 或 Miniconda）
- 已联网（安装 Ollama 和拉取模型需联网）
- 若本地不允许 sudo 安装 Ollama，请手动配置本地安装路径（见 Ollama 官网）

---

##  使用方法

bash

>./test2.sh
>
>./test2.sh --help
>
>./test2.sh help

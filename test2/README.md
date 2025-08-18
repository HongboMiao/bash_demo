# Ollama 启动脚本（基于 Conda 和 DeepSeek 模型）

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

./test2.sh
./test2.sh --help
./test2.sh help

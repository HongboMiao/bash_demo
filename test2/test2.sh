#!/bin/bash

set -e

MODEL_NAME="deepseek-r1:7b"
ENV_NAME="vllmfinal"
LOG_FILE="ollama.log"

show_help() {
    echo "用法: ./test2.sh"
    echo "运行后将会自动部署deepseek-r1:7b"
    echo "在部署后会自动运行deepseek-r1:7b"
    echo "ctrl+d退出deepseek-r1:7b的对话"
}

if [[ "$1" == "help" || "$1" == "--help" ]]; then
    show_help
    exit 0
fi

#!/bin/bash


if ! command -v conda &> /dev/null; then
    echo "❌ 未找到 Conda，请先安装 Anaconda 或 Miniconda。"
    exit 1
fi

echo "✅ Conda 已安装。"


if ! conda info --envs | grep -q "^$ENV_NAME"; then
    echo "🐍 创建 Conda 虚拟环境：$ENV_NAME ..."
    conda create --name "$ENV_NAME" python=3.12 -y
fi


echo "⚙️  激活 Conda 环境：$ENV_NAME"
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate "$ENV_NAME"


echo "⬇️ 安装 Ollama ..(运行安装ollama的install_ollama.sh需要sudo权限)."
curl -fsSL https://ollama.com/install.sh -o install_ollama.sh
chmod +x install_ollama.sh
./install_ollama.sh


echo "🚀 启动 Ollama 服务..."
pkill -f "ollama serve" 2>/dev/null || true
nohup ollama serve > "$LOG_FILE" 2>&1 &

echo "⏳ 等待 Ollama 启动..."
sleep 10


echo "📦 拉取模型：$MODEL_NAME"
ollama pull $MODEL_NAME

echo "✅ 模型拉取成功，准备运行：$MODEL_NAME"
ollama run $MODEL_NAME


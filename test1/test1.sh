#!/bin/bash

if [ -z "$BASH_VERSION" ]; then
    exec bash "$0" "$@"  
fi
	
stack=()

push() {
    if [ -z "$1" ]; then
        echo "错误：未提供要入栈的元素"
        return 1
    fi
    stack+=("$1")
    echo "已将 '$1' 进栈"
}

pop() {
    if [ ${#stack[@]} -gt 0 ]; then
        last_element=${stack[-1]}
        unset 'stack[-1]'
        echo "已将 '$last_element' 出栈"
    else
        echo "栈为空，无法出栈"
    fi
}

print_stack() {
    if [ ${#stack[@]} -gt 0 ]; then
        echo "栈的当前状态: [${stack[@]}]"
    else
        echo "栈为空"
    fi
}

clear_stack() {
    stack=()
    echo "栈已清空"
}

show_help() {
    echo "Usage:"
    echo "  push <element>  # 入栈"
    echo "  pop             # 出栈"
    echo "  print           # 打印栈"
    echo "  clear           # 清空栈"
    echo "  help            # 显示帮助"
    echo "  exit            # 退出程序"
}


while true; do
    read -p "> " cmd arg
    case $cmd in
        push) push "$arg" ;;
        pop) pop ;;
        print) print_stack ;;
        clear) clear_stack ;;
        help) show_help ;;
        exit) break ;;
        *) echo "未知命令，输入 'help' 查看可用命令" ;;
    esac
done


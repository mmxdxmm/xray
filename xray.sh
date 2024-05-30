#!/bin/sh

# 设置默认值
task_type='install'
build_projects='3'
xray_install_directory='/usr/local/xray'
xray_inbounds_options='4'
vmess_ws_port='54321'
vmess_ws_path='/'
xray_UPX='n'
daemon_run='y'

# 直接执行xray的安装任务
xray_set() {
    # 这里只设置默认值，实际脚本中可能需要其他配置
    export xray_install_directory xray_inbounds_options vmess_ws_port vmess_ws_path xray_UPX
}

xray_task() {
    # 假设下载和执行命令如下，具体需要根据实际的下载和执行命令来写
    download_tool_cmd='curl -sko' # 假设使用curl作为下载工具
    if $download_tool_cmd xray.sh http://binary.quicknet.cyou/xray/xray.sh; then
        chmod 777 xray.sh
        sed -i "s~#\!/bin/bash~#\!$SHELL~" xray.sh
        echo "y" | ./xray.sh $task_type && \
        echo 'xray任务成功' || echo 'xray任务失败'
    else
        echo 'xray脚本下载失败'
    fi
    rm -f xray.sh
}

# 执行任务
xray_set
xray_task

# 如果需要后台运行
if echo "$daemon_run" | grep -q 'y'; then
    ( ./xray_task > builds.out 2>&1 & )
    echo "正在后台运行中......"
else
    xray_task
    rm -f builds.log builds.out
fi

一键搭建Xray脚本
不依赖于systemctl命令，对notebook友好
Xray.sh是一键安装脚本，不需要输入或确定选项（如需修改选项请参照"builds.sh"）。
builds.sh是原安装脚本。




终端运行以下命令

git clone https://github.com/mmxdxmm/xray.git && chmod 777 ./xray/* && ./xray/xray.sh

或者
wget https://raw.githubusercontent.com/mmxdxmm/xray/main/xray.sh && chmod 777 ./xray.sh && ./xray.sh


notebook需要在命令前面加上英文的感叹号

!git clone https://github.com/mmxdxmm/xray.git && chmod 777 ./xray/* && ./xray/xray.sh

或者

!wget https://raw.githubusercontent.com/mmxdxmm/xray/main/xray.sh && chmod 777 ./xray.sh && ./xray.sh

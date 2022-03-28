
# maven config
export JAVA_HOME=$(/usr/libexec/java_home)

# go install mod proxy
export http_proxy=socks5://127.0.0.1:1080 # 代理地址
export https_proxy=$http_proxy

from alpine
workdir /app
add https://github.com/fatedier/frp/releases/download/v0.27.0/frp_0.27.0_linux_amd64.tar.gz frp_0.27.0_linux_amd64.tar.gz
run tar -x -f frp_0.27.0_linux_amd64.tar.gz frp_0.27.0_linux_amd64/frps frp_0.27.0_linux_amd64/frps.ini
run mv frp_0.27.0_linux_amd64/* ./
run rmdir frp_0.27.0_linux_amd64
run rm frp_0.27.0_linux_amd64.tar.gz
run chmod +x frps
ENTRYPOINT ["./frps"]

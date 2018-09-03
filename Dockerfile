from alpine:latest
workdir /app
run wget -q https://github.com/fatedier/frp/releases/download/v0.21.0/frp_0.21.0_linux_amd64.tar.gz
run tar -x -f frp_0.21.0_linux_amd64.tar.gz */frpc */frpc.ini
run mv frp_0.21.0_linux_amd64/* ./
run rmdir frp_0.21.0_linux_amd64
run chmod +x frpc
ENTRYPOINT ["./frpc"]

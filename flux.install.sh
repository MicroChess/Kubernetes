curl -s https://fluxcd.io/install.sh | sudo bash
sudo flux install --components=source-controller,helm-controller --namespace=kube-utils

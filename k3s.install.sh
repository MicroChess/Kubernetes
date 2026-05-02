sudo snap install kubectl --classic
curl -sfL https://get.k3s.io/ | sh -
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $(id -u):$(id -g) ~/.kube/config
sudo systemctl enable k3s

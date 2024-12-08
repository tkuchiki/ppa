# ppa

My PPA repository

## Local env

```
# .envrc
export KEYID="<write your gpg key id>"
```

```console
make docker_build
make create_packages_and_releases
bash create-release-gpg-and-in-release.sh
```

## Ubuntu

```bash
# apt install -y curl gpg
curl -s --compressed "https://tkuchiki.github.io/ppa/ubuntu/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/tkuchiki_ppa.gpg
echo "deb [signed-by=/etc/apt/trusted.gpg.d/tkuchiki_ppa.gpg] https://tkuchiki.github.io/ppa/ubuntu ./" | sudo tee /etc/apt/sources.list.d/tkuchiki_ppa.list
sudo apt update

# Install package
# e.g.
# sudo apt install pprotein-agent
```


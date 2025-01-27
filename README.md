# wp

```
docker run -ti ubuntu /bin/bash
apt-get update
apt-get install ruby-full build-essential zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
gem install jekyll
gem install jekyll-paginate
```

```
docker commit <container id> m/jekyll:1.1
```

```
docker run -ti -p 4000:4000 -v .\Documents\github\wp:/site --name jekyll_wp  m/jekyll:1.1
docker exec -it jekyll_wp /bin/bash
jekyll serve --source /site --force_polling -H "0.0.0.0" -P 4000
```
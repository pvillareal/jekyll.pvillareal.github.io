# pvillareal.github.io Microsite

---
Build Jekyll
``` bash
docker build -t jekyll .
```
``` bash
echo 'alias jekyll="docker run --rm --interactive -p 8080:80 --expose 80 --tty --volume $PWD:/app -w /app jekyll jekyll"' >> ~/.bash_profile
```

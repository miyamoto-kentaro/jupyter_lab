### build image

```bash
docker build -t jupyter_lab .
```

### run container

```
docker run -it -p 8888:8888 -v {your_dir}/work:/work --rm --name jupyter_lab jupyter_lab bin/bash

docker run -p 8888:8888 -v {your_dir}/work:/work --rm --name jupyter_lab jupyter_lab
```

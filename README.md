# spark-in-jupyter
Virtual env for testing spark solutions

`notebooks` dir is reserved for jupyter notebooks and data

## What is needed?

Locally installed Docker and git.
Docker has to be launched.

## Clone repository

```bash
git clone git@github.com:asidlare/spark-in-jupyter.git
cd spark-in-jupyter
```

## Application in a container

### Launching the container

```bash
$ docker compose build
$ docker compose up
```

### Testing spark solutions

`jupyter-lab` is launched at port 9000 to avoid interactions with standard configuration

After starting container jupyter-lab can be opened in a browser using url: http://127.0.0.1:9000/lab
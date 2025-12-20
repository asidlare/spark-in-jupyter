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

### Logging into database

Notebook: notebooks/DB.ipynb

```bash
➜  spark-in-jupyter git:(master) ✗ docker exec -it spark-in-jupyter-db psql -U postgres
psql (17.7)
Type "help" for help.

postgres=# select * from abcd;
 id | val
----+-----
 75 | a
 76 | a
 77 | a
 78 | a
 79 | a
 80 | a
 81 | a
 82 | a
 83 | a
--More--
```

### Testing kafka solutions

Notebook: notebooks/KAFKA.ipynb

#### Adding topics for test purposes

Before running notebook, topics have to be created.

```bash
docker exec -it kafka kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic topic1
docker exec -it kafka kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic topic2
```

### Testing spark solutions

`jupyter-lab` is launched at port 9000 to avoid interactions with standard configuration

After starting container:
* jupyter-lab can be opened in a browser using url: http://127.0.0.1:9000/lab
* spark-ui (if launched) can be opened in a browser using url: http://127.0.0.1:4040 (notebooks/UI.ipynb for more info)

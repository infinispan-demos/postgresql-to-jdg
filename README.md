## Offload your database data into Red Hat JBoss Data Grid made easy

This project is an example showing how to read data from a PostgreSQL database and put the data into a cache within a Red Hat JBoss Data Grid environment.

### Prerequisites

1. Install [Maven](http://maven.apache.org/install.html)
2. Install [Red Hat JBoss Data Grid](http://developers.redhat.com/products/datagrid/hello-world)
3. Install [Docker](https://docs.docker.com/install/)

### Build application postgresql-to-jdg

```bash
$ mvn -s settings.xml clean install
```

### Start Postgres DB as container using Docker Engine

```bash
$ cd src/main/java/com/redhat/jdg/producer/db
$ ./initdb-container.sh
```

### Run application postgresql-to-jdg

```bash
$ mvn -s settings.xml exec:java
```

## Blogs

Here's a list of blog posts where this demo has been featured:

* 3rd April 2017 - [Offload your database data into an in-memory data grid for fast processing made easy](https://developers.redhat.com/blog/2017/04/03/offload-your-database-data-into-an-in-memory-data-grid-for-fast-processing-made-easy/)

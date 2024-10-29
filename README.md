# dbt-postgres

This repo contains a docker file to run  PostgreSQL and PGAdmin using docker compose. It also contains some raw data from a fictional app and some indications to get started with dbt. 

## PostgreSQL - PGAdmin

Change to the right directory and run:

```docker compose up ```

## dbt steps

1. Create a new virtual environment in your project and activate it.
```
python3 -m venv .venv

source .venv/bin/activate
```

2. Then install dbt-core and the postgres adapter. 

```python3 -m pip install dbt-core dbt-postgres```

3. dbt init to create a new dbt project.

 ```dbt init jaffle_shop```

4. Create profiles.yml file to connect dbt to postgres. 
## to build

docker build -t=poke-postgressql --force-rm .

## to run

docker run -d --name poke-sql -p 5432:5432 poke-postgresql

## to execute sqls

docker exec -ti poke-sql psql -U {user-name}

by default the user-name is postgres

## Backup:

docker exec -ti poke-sql pg_dump -U {user-name} {source_db} -f {dumpfilename.sql}

## Restore:

docker exec -ti poke-sql psql -U {user-name} -d {desintation_db} -f {dumpfilename.sql}

#!/usr/bin/env sh

export POSTGRES_REPLICA_PASSWORD=`cat $POSTGRES_REPLICA_PASSWORD_FILE`

psql -c "
CREATE ROLE replica WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	NOINHERIT
	REPLICATION
	CONNECTION LIMIT -1
	PASSWORD '$POSTGRES_REPLICA_PASSWORD';
"
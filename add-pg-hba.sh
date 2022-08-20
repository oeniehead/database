#!/usr/bin/env sh

grep -qxF 'host replication all all scram-sha-256' $PGDATA/pg_hba.conf || echo 'host replication all all scram-sha-256' >> $PGDATA/pg_hba.conf
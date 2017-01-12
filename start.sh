#!/bin/sh
if [ ! -f server/datasources.json ]
	then

	cat server/datasources.json.template 	    | \
		sed -e "s/PG_HOST/${PG_HOST}/g"     | \
		sed -e "s/PG_PORT/${PG_PORT}/g"     | \
		sed -e "s/PG_DBNAME/${PG_DBNAME}/g" | \
		sed -e "s/PG_USER/${PG_USER}/g"     | \
		sed -e "s/PG_PWD/${PG_PWD}/g" > server/datasources.json

fi
npm start

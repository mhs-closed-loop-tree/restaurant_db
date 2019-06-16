# restaurant_db

Handles setup of our Postgres database, in this case the staging and search tables.

Normally we'd script the instance setup, db setup and firewall setup here, but these were done 
manually for expediency.

I've chosen to maintain the same datamodel throughout (as the source data). Though some of the column names are not ideal
its simpler in the short term to maintain the names. Longer term approach might would be different.
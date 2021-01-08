# Changelog

## 1.0.0

**BREAKING CHANGE**

YOU MUST BACKUP YOU DATA BEFORE APPLYING THIS UPDATE

YOU MUST RESTORE YOUR DATA AFTER THIS UPDATE

1. Stop any connections to the database, e.g. stop the TeslaMate addon
2. Expose your postgres instance to the local network using the network options in the addon configuration. Use port 5432.
3. Use pgAdmin to create a backup
4. Update the addon
5. Restore your data using pgAdmin
6. Disable the external network connection in teh addin configuration
7. Re-start TeslaMate

Changes:

* Use /data for persistent storage
* Postgres 12.5

## 0.0.3

* Implement exec in bootstrap

## v0.0.2

* Increase kill timeout to 60 seconds

## v0.0.1

* Initial version of the addon
* PostgreSQL 12.2

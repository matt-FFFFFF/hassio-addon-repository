# Changelog

## 1.0.0

**BREAKING CHANGE**

YOU MUST BACKUP YOU DATA BEFORE UPDATING

YOU MUST RESTORE YOUR DATA AFTER UPDATING

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

[Full Changelog](https://github.com/matt-FFFFFF/hassio-addon-teslamate/blob/main/CHANGELOG-FULL.md)

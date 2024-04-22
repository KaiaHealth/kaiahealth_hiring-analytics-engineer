To initialize the data environment, open a github codespace:

![image that explains how to open github codepsace](images/github-codespace.png)

Once started, execute the following commands in the terminal:

```
$ dbt seed
$ dbt build
```

to verify the data product:

```
$ duckcli database.duckdb
> select * from active_users;
```

what we get:

```
+--------+----------------+
| uid    | num_activities |
+--------+----------------+
| user_3 | 8              |
| user_4 | 14             |
| user_5 | 14             |
| user_1 | 8              |
+--------+----------------+
```

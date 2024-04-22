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
> select * from facebook_ads;
```

what we get:

```
+------+-------------------+
| hour | sum_cost          |
+------+-------------------+
| 0    | 4.7               |
| 1    | 4.1               |
| 2    | 10.3              |
| 3    | 11.8              |
| 6    | 9.3               |
| 7    | 16.6              |
| 8    | 3.7               |
| 9    | 20.7              |
| 10   | 5.779999999999999 |
| 11   | 13.2              |
| 12   | 15.8              |
| 13   | 12.5              |
| 14   | 5.2               |
| 15   | 6.9               |
| 16   | 7.0               |
| 17   | 7.3               |
| 18   | 17.0              |
| 19   | 24.2              |
| 20   | 5.9               |
| 21   | 25.0              |
| 22   | 15.5              |
| 23   | 17.5              |
+------+-------------------+
```

what is expected:

```
+------+----------+
| hour | sum_cost |
+------+----------+
| 0    | 13.0     | 
| 1    | 4.1      |
| 2    | 10.3     |
| 3    | 11.8     |
| 6    | 9.3      |
| 7    | 16.6     |
| 8    | 3.7      |
| 9    | 20.7     |
| 10   | 13.7     | 
| 11   | 13.2     |
| 12   | 15.8     |
| 13   | 12.5     |
| 14   | 5.2      |
| 15   | 6.9      |
| 16   | 7.0      |
| 17   | 7.3      |
| 18   | 17.0     |
| 19   | 24.2     |
| 20   | 5.9      |
| 21   | 25.0     |
| 22   | 15.5     |
| 23   | 9.2      | 
+------+----------+
```

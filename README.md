# Pagination (for large table)

## What is large table?
* More then 10m records
* Test table has 109 987 200 (~110m) records

## Pagination approaches
* Traditional (rails way)
* Keyset pagination or pagination with relative cursors

## Traditional (Rails) approach
* Using Limit-Offset-Count
    * Works fine for the first pages (~1000-2000)
* Works fine for small tables (most of railsway/startup cases)

#### Examples
  * **Get all data**
      * first page [109 987 200 records](http://localhost:3000/traditional)
        ```
        === Render data: index === (20.9ms)
        === Render pagination: traditional index === (25756.6ms)
        ```
        *caused by count*
      * first page (w/o count) [109 987 200 records](http://localhost:3000/traditional/wo_count)
        ```
        === Render data: wo_count === (4.9ms)
        === Render pagination: traditional wo_count === (0.6ms)
        ```
      * page #500000 [109 987 200 records](http://localhost:3000/traditional?page=500000)
        ```
        === Render data: index === (1135.1ms)
        === Render pagination: traditional index === (26448.8ms)
        ```
        *caused by count and offset*
      * page #500000 (w/o count) [109 987 200 records](http://localhost:3000/traditional/wo_count?page=500000)
        ```
        === Render data: wo_count === (871.4ms)
        === Render pagination: traditional wo_count === (1.2ms)
        ```
        *caused by offset*
  * **Search by fields**
      * indexed fields [44 records (by created_at)](http://localhost:3000/traditional?created_from=2016-01-01+00%3A00%3A00&created_to=2016-01-01+00%3A01%3A26)
        ```
        === Render data: index === (6.2ms)
        === Render pagination: traditional index === (4.0ms)
        ```
        *thanks to index*
    * non-indexed fields [44 records (by updated_at)](http://localhost:3000/traditional?updated_from=2016-01-01+00%3A00%3A00&updated_to=2016-01-01+00%3A01%3A26)
        ```
        === Render data: index === (30307.6ms)
        === Render pagination: traditional index === (30863.7ms)
        ```
        *caused by count and offset, and lack of index*
  * **When scope is big but w/ index**
      * first page [15 811 244 records](http://localhost:3000/traditional?created_from=2016-01-01+00%3A00%3A00&created_to=2017-01-01+00%3A01%3A26)
        ```
        === Render data: index === (34.8ms)
        === Render pagination: traditional index === (884.9ms)
        ```
      * page #500000 [15 811 244 records](http://localhost:3000/?created_from=2016-01-01+00%3A00%3A00&created_to=2017-01-01+00%3A01%3A26&page=500000)
        ```
        === Render data: index === (1345.3ms)
        === Render pagination: traditional index === (647.4ms)
        ```
        *caused by offset*
  * **When scope is big but w/o index**
      * first page [15 811 244 records](http://localhost:3000/traditional?updated_from=2016-01-01+00%3A00%3A00&updated_to=2017-01-01+00%3A01%3A26)
        ```
        === Render data: index === (270.2ms)
        === Render pagination: traditional index === (25992.6ms)
        ```
      * page #500000 [15 811 244 records](http://localhost:3000/?updated_from=2016-01-01+00%3A00%3A00&updated_to=2017-01-01+00%3A01%3A26&page=500000)
        ```
        === Render data: index === (1309.3ms)
        === Render pagination: traditional index === (25278.8ms)
        ```
        *caused by offset*

## Keyset pagination or pagination with relative cursors
#### Examples
  * **Get all data**
      * first page [109 987 200 records](http://localhost:3000/keyset)
        ```
        === Render data: index === (0.5ms)
        === Render pagination: keyset index === (0.7ms)
        ```
      * page #500000 [109 987 200 records](http://localhost:3000/keyset?cursor_next=500000)
        ```
        === Render data: index === (1.6ms)
        === Render pagination: keyset index === (0.3ms)
        ```
  * **When scope is big but w/ index**
      * first page [15 811 244 records](http://localhost:3000/keyset?created_from=2016-01-01+00%3A00%3A00&created_to=2017-01-01+00%3A01%3A26)
        ```
        === Render data: index === (0.7ms)
        === Render pagination: keyset index === (0.4ms)
        ```
      * page #500000 [15 811 244 records](http://localhost:3000/keyset?created_from=2016-01-01+00%3A00%3A00&created_to=2017-01-01+00%3A01%3A26&cursor_next=500000)
        ```
        === Render data: index === (0.9ms)
        === Render pagination: keyset index === (0.4ms)
        ```
  * **When scope is big but w/o index**
      * [first page](http://localhost:3000/keyset?updated_from=2017-01-01+00%3A00%3A00&updated_to=2018-01-01+00%3A01%3A26)
        ```
        === Render data: index === (1831.6ms)
        === Render pagination: keyset index === (1.5ms)
        ```
      * [second page](http://localhost:3000/keyset?updated_from=2017-01-01+00%3A00%3A00&updated_to=2018-01-01+00%3A01%3A26)
        ```
        === Render data: index === (1939.9ms)
        === Render pagination: keyset index === (1.5ms)
        ```
## Keyset pagination or pagination with relative cursors (pagy edition)
#### Examples
  * **Get all data**
      * first page [109 987 200 records](http://localhost:3000/pagy_pagination)
        ```
        === Render data: index === (2.1ms)
        === Render pagination: pagy_pagination index === (0.9ms)
        ```
      * page #500000 [109 987 200 records](http://localhost:3000/pagy_pagination?cursor_next=500000)
        ```
        === Render data: index === (15.9ms)
        === Render pagination: pagy_pagination index === (1.5ms)
        ```
  * **Search by fields**
      * indexed fields [10 records (by created_at)](http://localhost:3000/pagy_pagination?created_from=2022-12-20+23%3A59%3A10+UTC&created_to=2022-12-20+23%3A59%3A28+UTC&updated_from=&updated_to=)
        ```
        === Render data: index === (0.8ms)
        === Render pagination: pagy_pagination index === (2.2ms)
        ```
    * non-indexed fields [10 records (by updated_at)](http://localhost:3000/pagy_pagination?created_from=&created_to=&updated_from=2022-12-20+23%3A59%3A10+UTC&updated_to=2022-12-20+23%3A59%3A28+UTC) (but sql queries are big as hell)
        ```
        === Render data: index === (0.7ms)
        === Render pagination: pagy_pagination index === (4.6ms)
        ```
#### References
- https://use-the-index-luke.com/no-offset
- https://use-the-index-luke.com/blog/2013-07/pagination-done-the-postgresql-way
    - [Download as PDF](https://wiki.postgresql.org/images/3/35/Pagination_Done_the_PostgreSQL_Way.pdf)
- https://www.citusdata.com/blog/2016/03/30/five-ways-to-paginate/
- https://shopify.engineering/pagination-relative-cursors
- https://slack.engineering/evolving-api-pagination-at-slack/

#### Gems
- https://github.com/glebm/order_query
- https://github.com/BambangSinaga/rb_pager

## Traditional vs Keyset
page 500001
  * http://localhost:3000/traditional/wo_count?created_from=2016-01-01+00%3A00%3A00&created_to=2017-01-01+00%3A01%3A26&page=500001
  * http://localhost:3000/keyset?created_from=2016-01-01+00%3A00%3A00&created_to=2017-01-01+00%3A01%3A26&cursor_next=12500000

  ### Solution
  * Don't count
  * it works for the first pages (~1000-2000)

  * it works unless searching on non-indexed fields
    w/ index http://localhost:3000/traditional?created_from=2016-01-01+00%3A00%3A00&created_to=2016-01-01+00%3A01%3A26
    w/o index http://localhost:3000/traditional?updated_from=2016-01-01+00%3A00%3A00&updated_to=2016-01-01+00%3A01%3A26

## Tricks with index

  #### Getting 25 records out of 41 444

  * indexed field
    ```
    EXPLAIN ANALYZE SELECT "miner_data".* FROM "miner_data"
        WHERE
        (created_at >= '2017-01-01 00:00:00')
        AND (created_at <= '2017-01-01 23:01:26')
        ORDER BY "miner_data"."id" ASC
        limit 25

    "Limit  (cost=0.57..7.89 rows=25 width=61) (actual time=2167.103..2167.108 rows=25 loops=1)"
    "  ->  Index Scan using miner_data_pkey on miner_data  (cost=0.57..4655891.37 rows=15893334 width=61) (actual time=2167.101..2167.106 rows=25 loops=1)"
    "        Filter: ((created_at >= '2017-01-01 00:00:00'::timestamp without time zone) AND (created_at <= '2018-01-01 00:01:26'::timestamp without time zone))"
    "        Rows Removed by Filter: 15811200"
    "Planning Time: 6.494 ms"
    "Execution Time: 2167.160 ms"
    ```
    * non indexed field
    ```
    EXPLAIN ANALYZE SELECT "miner_data".* FROM "miner_data"
        WHERE
        (updated_at >= '2017-01-01 00:00:00')
        AND (updated_at <= '2017-01-01 23:01:26')
        ORDER BY "miner_data"."id" ASC
        limit 25

    "Limit  (cost=0.57..2774.57 rows=25 width=61) (actual time=2383.758..2383.765 rows=25 loops=1)"
    "  ->  Index Scan using miner_data_pkey on miner_data  (cost=0.57..4655891.37 rows=41960 width=61) (actual time=2383.757..2383.762 rows=25 loops=1)"
    "        Filter: ((updated_at >= '2017-01-01 00:00:00'::timestamp without time zone) AND (updated_at <= '2017-01-01 23:01:26'::timestamp without time zone))"
    "        Rows Removed by Filter: 15811200"
    "Planning Time: 0.343 ms"
    "Execution Time: 2383.820 ms"
    ```
  #### Getting 25 records out of 39 644
    * indexed field
    ```
    EXPLAIN ANALYZE SELECT "miner_data".* FROM "miner_data"
        WHERE
        (created_at >= '2017-01-01 00:00:00')
        AND (created_at <= '2017-01-01 22:01:26')
        ORDER BY "miner_data"."id" ASC
        limit 25
    "Limit  (cost=147.83..147.89 rows=25 width=61) (actual time=7.288..7.297 rows=25 loops=1)"
    "  ->  Sort  (cost=147.83..152.87 rows=2017 width=61) (actual time=7.287..7.290 rows=25 loops=1)"
    "        Sort Key: id"
    "        Sort Method: top-N heapsort  Memory: 28kB"
    "        ->  Index Scan using index_miner_data_on_created_at on miner_data  (cost=0.57..90.91 rows=2017 width=61) (actual time=2.381..6.060 rows=1844 loops=1)"
    "              Index Cond: ((created_at >= '2017-01-01 00:00:00'::timestamp without time zone) AND (created_at <= '2017-01-01 01:01:26'::timestamp without time zone))"
    "Planning Time: 0.338 ms"
    "Execution Time: 7.364 ms"
    ```

    * non indexed field
    ```
    EXPLAIN ANALYZE SELECT "miner_data".* FROM "miner_data"
        WHERE
        (updated_at >= '2017-01-01 00:00:00')
        AND (updated_at <= '2017-01-01 22:01:26')
        ORDER BY "miner_data"."id" ASC
        limit 25
    "Limit  (cost=0.57..2894.44 rows=25 width=61) (actual time=2064.903..2064.909 rows=25 loops=1)"
    "  ->  Index Scan using miner_data_pkey on miner_data  (cost=0.57..4655891.37 rows=40222 width=61) (actual time=2064.902..2064.906 rows=25 loops=1)"
    "        Filter: ((updated_at >= '2017-01-01 00:00:00'::timestamp without time zone) AND (updated_at <= '2017-01-01 22:01:26'::timestamp without time zone))"
    "        Rows Removed by Filter: 15811200"
    "Planning Time: 0.359 ms"
    "Execution Time: 2064.947 ms"
    ```

    * BRIN indexed field and ORDER BY it
    ```
    EXPLAIN ANALYZE
        SELECT "miner_data".* FROM "miner_data"
        WHERE
        (created_at_brin >= '2017-01-01 00:00:00')
        AND (created_at_brin <= '2017-01-01 23:01:26')
        ORDER BY created_at_brin DESC
        limit 25

        Limit  (cost=165475.51..165475.58 rows=25 width=73) (actual time=75.669..75.671 rows=25 loops=1)
          ->  Sort  (cost=165475.51..165571.54 rows=38409 width=73) (actual time=75.668..75.669 rows=25 loops=1)
                Sort Key: created_at_brin DESC
                Sort Method: top-N heapsort  Memory: 32kB
                ->  Bitmap Heap Scan on miner_data  (cost=185.76..164391.64 rows=38409 width=73) (actual time=8.599..61.561 rows=41444 loops=1)
                      Recheck Cond: ((created_at_brin >= '2017-01-01 00:00:00'::timestamp without time zone) AND (created_at_brin <= '2017-01-01 23:01:26'::timestamp without time zone))
                      Rows Removed by Index Recheck: 6556
                      Heap Blocks: lossy=640
                      ->  Bitmap Index Scan on index_miner_data_on_created_at_brin  (cost=0.00..176.16 rows=48000 width=0) (actual time=8.576..8.576 rows=6400 loops=1)
                            Index Cond: ((created_at_brin >= '2017-01-01 00:00:00'::timestamp without time zone) AND (created_at_brin <= '2017-01-01 23:01:26'::timestamp without time zone))
        Planning Time: 0.966 ms
        Execution Time: 76.371 ms
    ```

    * BRIN indexed field and ORDER BY ID DESC
    ```
    EXPLAIN ANALYZE
        SELECT "miner_data".* FROM "miner_data"
        WHERE
        (created_at_brin >= '2017-01-01 00:00:00')
        AND (created_at_brin <= '2017-01-01 23:01:26')
        ORDER BY "miner_data"."id" asc
        limit 25

        Limit  (cost=0.57..3172.04 rows=25 width=73) (actual time=2333.449..2333.501 rows=25 loops=1)
          ->  Index Scan using miner_data_pkey on miner_data  (cost=0.57..4872531.57 rows=38409 width=73) (actual time=2333.447..2333.465 rows=25 loops=1)
                Filter: ((created_at_brin >= '2017-01-01 00:00:00'::timestamp without time zone) AND (created_at_brin <= '2017-01-01 23:01:26'::timestamp without time zone))
                Rows Removed by Filter: 15811200
        Planning Time: 0.345 ms
        Execution Time: 2333.574 ms
    ```

## Solutions
* Reduce nubmer of records :)
## Advanced Level :)
* General good practice: use Left Join (Avoid Inner Join)
* Repalce IN (101,102,..) with ANY(VALUES(101), (102)..)
* Investigate table and maybe enable Extended Statistics
* Rows Removed by Filter: 15811200 --> need to avoid such cases when postgres need to remove result by filter.
* Use Covering Indexes
* Use BRIN indexes for datetime insteaf of BTree https://www.postgresql.org/docs/current/indexes-types.html#INDEXES-TYPES-BRIN

## Conclustion
* Count is expensive procedure
* Offset is expensive procedure

## General references
- https://stackoverflow.com/questions/7943233/fast-way-to-discover-the-row-count-of-a-table-in-postgresql/7945274#7945274

## Count
- https://stackoverflow.com/questions/7943233/fast-way-to-discover-the-row-count-of-a-table-in-postgresql/7945274#7945274

## Advanced Level reference
- https://www.postgresql.org/docs/14/indexes-index-only-scans.html
- https://www.postgresql.org/docs/14/planner-stats.html#PLANNER-STATS-EXTENDED

```
SELECT count(*) FROM "miner_data";
=> 109987200
29.075 sec
```

```
SELECT (reltuples / relpages * (pg_relation_size(oid) / 8192))::bigint
FROM   pg_class
WHERE  oid = 'miner_data'::regclass;
=> 109987240
00.087 sec
```

```
SELECT (CASE WHEN c.reltuples < 0 THEN NULL       -- never vacuumed
             WHEN c.relpages = 0 THEN float8 '0'  -- empty table
             ELSE c.reltuples / c.relpages END
     * (pg_catalog.pg_relation_size(c.oid)
      / pg_catalog.current_setting('block_size')::int)
       )::bigint
FROM   pg_catalog.pg_class c
WHERE  c.oid = 'public.miner_data'::regclass;
=> 109987240
0.052 sec
```

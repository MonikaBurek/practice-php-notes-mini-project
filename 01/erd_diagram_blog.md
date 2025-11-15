# Diagram bazy danych (ERD)

Poniżej znajduje się diagram przedstawiający powiązania między tabelami:

```
+-----------+          1       N         +-----------------+
|  authors  |----------------------------|    articles     |
+-----------+                            +-----------------+
| id (PK)   |                            | id (PK)         |
| name      |                            | title           |
| surname   |                            | body            |
| email     |                            | author_id (FK)  |
+-----------+                            +-----------------+
                                                |
                                                | 1
                                                |       N
                                        +-------------------------+
                                        |   articles_categories   |
                                        +-------------------------+
                                        | id (PK)                |
                                        | articles_id (FK)       |
                                        | category_id (FK)       |
                                        +-------------------------+
                                                |
                                                | N
                                                |      1
                                        +----------------+
                                        |   categories   |
                                        +----------------+
                                        | id (PK)        |
                                        | name           |
                                        +----------------+
```


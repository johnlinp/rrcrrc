# rrcrrc - Remove Revision-Control-Related Records from Comments

For some reasons, there are some legacy code that contains unwanted revision-control-related records. For example:

```java
/**
 * Created by John on 4/6/89.
 */
```

or

```java
/**
 * $Author: John $
 * $DateTime: 1989/06/04 04:30:00 $
 */
```

Since we are already enjoying the convenience of revision control systems, those records are usually unnecessary and confusing.

`rrcrrc` is to remove those records.

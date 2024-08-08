with distinct_latitudes as
(
    select distinct
        "latitude"

    from
        "normals"

    order by
        "latitude"
)

select count(1) from distinct_latitudes where ;


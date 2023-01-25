{% macro markedprice(sellingprice, costprice) %}

  ({{sellingprice}}-{{costprice}})/{{costprice}}

{% endmacro %}
-- custom generic test it used in schema.yml
{% test positive_value(model, column_name) %}
    SELECT
        *
    FROM
        {{ model }}
    WHERE
        {{ column_name}} < 1
{% endtest %}
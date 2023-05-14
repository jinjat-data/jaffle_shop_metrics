{%- set query_params = jinjat.request().query %}

select * 
from {{ metrics.calculate(
    metric('expenses'),
    grain=query_params.grain,
    dimensions=[],
) }}

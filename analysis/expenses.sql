{%- set query_params = request().query %}

select * 
from {{ metrics.calculate(
    metric('expenses'),
    grain=query_params.grain,
    dimensions=[],
) }}

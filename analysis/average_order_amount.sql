{%- set query_params = request().query %}

select * 
from {{ metrics.calculate(
    metric('average_order_amount'),
    grain=query_params.grain,
    dimensions=[],
) }}

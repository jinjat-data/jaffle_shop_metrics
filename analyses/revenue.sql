{%- set query_params = jinjat.request().query %}

select * 
from {{ metrics.calculate(
    metric('revenue'),
    grain=query_params.grain,
    dimensions=['customer_status']
) }}

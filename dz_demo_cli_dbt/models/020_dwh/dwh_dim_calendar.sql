
with dates as
(
{% for i in range(730) %}

    select cast(dateadd(day, {{ i }}, '2024-01-01') as date) as date_day {% if not loop.last %} union all {% endif %}

{% endfor %}
)

select
    convert(date, date_day) as Date
    ,datepart ( dd , date_day ) as Day
    ,datepart ( mm , date_day ) as Month
    ,convert(varchar(15), format( date_day, 'MMMM')) as MonthName
    ,datepart ( qq , date_day ) as Quarter
    ,datepart ( yy , date_day ) as Year
    ,datepart ( ww , date_day ) as Week
    ,datepart ( dw , date_day ) as WeekDay
    ,convert(varchar(15), format( date_day, 'dddd')) as WeekDayName
    ,convert(varchar(1), case when datepart ( dw , date_day ) >= 6 then 'Y' else 'N' end) as 'Weekend_flg'
from dates
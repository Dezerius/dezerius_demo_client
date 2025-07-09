with retour_select as 
(
    select 'Retour' as retour_select
    union all
    select 'One Way' as retour_select
)

select * from retour_select
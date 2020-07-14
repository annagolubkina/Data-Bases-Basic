                                                                                                                                                                            
-- «Операторы, фильтрация, сортировка и ограничение»                                                                                                                        
                                                                                                                                                                            
-- --------------------------------------Задание 2 ---------------------------------------                                                                                  
                                                                                                                                                                                                                                                                                                                                           
select selected_user, sum(active_message) as total_messages from (
-- 1) сообщения от пользователей которым id = 1 кинул запрос дружбы
(select from_user_id  as selected_user,
count(from_user_id ) as active_message 
from messages where (to_user_id =1 and from_user_id                                                                                                                      
in                                                                                                                                                                          
(                                                                                                                                                                           
select target_user_id                                                                                                                                                       
from friend_requests                                                                                                                                                        
where (initiator_user_id = 1 ) and status = 'approved'                                                                                                                                                                                                                                        
)                                                                                                                                                                           
)
group by selected_user)
union all 
-- 2) сообщения от пользователей которые кинули запрос дружбы  id = 1 
(select from_user_id  as selected_user,
count(from_user_id ) as active_message 
from messages m2 where (to_user_id =1 and from_user_id                                                                                                                      
in                                                                                                                                                                          
(                                                                                                                                                                                                                                                                                                                                               
select initiator_user_id from friend_requests                                                                                                                               
where (target_user_id = 1 ) and status = 'approved'                                                                                                                         
)                                                                                                                                                                           
)
group by selected_user)
union all 
-- 3) сообщения от пользователя id = 1 своим друзьям
(select to_user_id  as selected_user,
count(to_user_id ) as active_message 
from messages m2 where (to_user_id                                                                                                                                                                 
in                                                                                                                                                                          
(                                                                                                                                                                           
select target_user_id                                                                                                                                                       
from friend_requests                                                                                                                                                        
where (initiator_user_id = 1 ) and status = 'approved'                                                                                                                      
union                                                                                                                                                                       
select initiator_user_id from friend_requests                                                                                                                               
where (target_user_id = 1 ) and status = 'approved'                                                                                                                         
)  )
group by selected_user)
)
as union_select
group by selected_user
order by total_messages desc limit 1 ;                                                                                                                                          
        
-- ---------------------------------------------------------------------------------------                                                                                  
                                                                                                                                                                            
                                                                                                                                                                            
-- --------------------------------------Задание 3 ---------------------------------------                                                                                  
                                                                                                                                                                      
select count(media_id) as numb from likes where media_id in(select id from media where user_id in 
(select * from                                                                                                                                               
			(select user_id                                                                                                                                                 
				from profiles                                                                                                                                               
				order by (now() - birthday)                                                                                                                                 
				limit 10) as youngest                           
)
) ;
-- ---------------------------------------------------------------------------------------    

                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
-- --------------------------------------Задание 4 ---------------------------------------                                                                                  
select count(media_id),'женские лайки' as likes from likes where media_id in(select id from media where user_id in                                                          
(                                                                                                                                                                           
select user_id from profiles where gender = 'f'                                                                                                                             
)                                                                                                                                                                           
)                                                                                                                                                                           
union                                                                                                                                                                       
select count(media_id),'мужские лайки' from likes where media_id in(select id from media where user_id in                                                                   
(                                                                                                                                                                           
select user_id from profiles where gender = 'm'                                                                                                                             
)                                                                                                                                                                           
) ;            


-- --------------------------------------------------------------------------------------                                                                                  
                                                                                                                                                                            
-- --------------------------------------Задание 5 ---------------------------------------                                                                                  

select selected_user, sum(activity) as total_activity from (
	(select user_id as selected_user,
			count(*) as activity
			from users_communities 
			group by selected_user)
	union all
    	(select user_id as selected_user,
			count(*) as activity
			from likes
			group by selected_user)
	union all
    (select from_user_id as selected_user,
			COUNT(*) as activity
			from messages
			group by selected_user)
	union all
	(select to_user_id as selected_user,
			count(*) as activity
			from messages
			group by selected_user)
		union all
    (select user_id as selected_user,
			count(*) as activity
			from media 
			group by selected_user)
	) 
	AS union_select
group by selected_user
order by total_activity
limit 10;
-- --------------------------------------------------------------------------------------              

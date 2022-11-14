create table user_info (
				email varchar(30), 
				username varchar(30), 
				roll_no integer, 
				pass_wd varchar(15));

insert into user_info values 
		('speedrockets22@gmail.com','speedy',037,'speedkj'),
		('slowrockets21@gmail.com','slowdog',029,'dogisfaithful'),
		('milkyrockets24@gmail.com','milkceo',047,'milky'),
		('toxicrocket20@gmail.com','speedr',068,'toxic');
		
select username from user_info
where roll_no = 029;

update user_info set email='goodrocket43@gmail.com'
where email = 'toxicrocket20@gmail.com';

select email from user_info
where email = 'goodrocket43@gmail.com';





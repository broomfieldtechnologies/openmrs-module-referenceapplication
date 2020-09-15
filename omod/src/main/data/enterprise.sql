insert into `enterprise` (`enterprise_id`, `name`,  `description`,  `address1`,  `address2`, `city_village`,  `state_province`,
  `postal_code`,  `country`,  `latitude`,  `longitude`, `web`, `email`,  `phone`,  `fax`,  `contact_person`, `creator`, `date_created`, `retired`,  `retired_by`, `date_retired`,  `retired_reason`,  `uuid`,  `changed_by`, `date_changed`, `voided`,`voided_by`,`date_voided`,`void_reason`)
values (1,	'ABC Enterprise',	'ABC Enterprise',	'nungambakkam',	'chennai',	'chennai',	'tamil nadu',	'600001',	'india',	NULL,	NULL,	'www.ahosp.in',	NULL,	NULL,	NULL,	NULL,	1,	'2020-04-01 00:00:00',	0,	NULL,	NULL,	NULL,	'139e7216-13ad-4d6b-951d-2e5fe2d1316c',	NULL,	NULL,	0,	NULL,	NULL,	NULL);

insert into `enterprise` (`enterprise_id`, `name`,  `description`,  `address1`,  `address2`, `city_village`,  `state_province`,
  `postal_code`,  `country`,  `latitude`,  `longitude`, `web`, `email`,  `phone`,  `fax`,  `contact_person`, `creator`, `date_created`, `retired`,  `retired_by`, `date_retired`,  `retired_reason`,  `uuid`,  `changed_by`, `date_changed`, `voided`,`voided_by`,`date_voided`,`void_reason`,`parent_enterprise_id` )
values (4,	'Super Enterprise',	'Super Enterprise',NULL,NULL,NULL,NULL,NULL,NULL,	NULL,	NULL,NULL,	NULL,	NULL,	NULL,	NULL,	1,	'2020-09-01 00:00:00',	0,	NULL,	NULL,	NULL,	'61f4459a-985f-4244-aeea-b27ec753bc3f',	NULL,	NULL,	0,	NULL,	NULL,	NULL, NULL);
	
UPDATE `enterprise`
SET parent_enterprise_id = 4
WHERE enterprise_id != 4;	
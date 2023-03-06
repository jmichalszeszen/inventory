#
#
create table details
(
   detail_id		int 		NOT NULL	AUTO_INCREMENT			COMMENT 'detail id',
   inventory_id		int 		NOT NULL					COMMENT 'links table inventory',
   parent_id		int 				default NULL			COMMENT 'links to parent detail',
   detail_name		varchar(250) 	NOT NULL					COMMENT 'detail name',
   detail_value		varchar(250) 	NOT NULL					COMMENT 'detail value',
   detail_metric	varchar(250) 	NOT NULL					COMMENT 'detail metric',
   detail_type		int		NOT NULL					COMMENT '0=Parent',
   last_update		datetime 	NOT NULL 	default (sysdate())            	COMMENT 'date and time of last update',

   PRIMARY KEY (detail_id, inventory_id),
   FOREIGN KEY (inventory_id)	REFERENCES inventory(inventory_id),
   FOREIGN KEY (parent_id)      REFERENCES details(detail_id)
);

insert into details (detail_name, detail_value, detail_metric, detail_type, last_update) values  ('Inventory', 'Group of Objects', 'Group', 0, sysdate());  # detail_id = 1
insert into details (parent_id, detail_name, detail_value, detail_metric, detail_type, last_update) values  (1, 'Groups',    'Group of Objects', 'Group', 0, sysdate());  # detail_id = 2



#
#

create table inventory
(
   inventory_id		int 		NOT NULL	AUTO_INCREMENT               	COMMENT 'inventory id',
   inventory_status	int				default 1			COMMENT '0=inactive, 1=active, 2=deleted',
   inventory_asset_name	varchar(250)	NOT NULL	default "N/I"			COMMENT 'name of asset',
   inventory_asset_type	int		NOT NULL	default 1			COMMENT 'type ofasset 1=host, 2=software, etc',
   last_update		datetime 	NOT NULL 	default (sysdate())            	COMMENT 'date and time of last update',

   PRIMARY KEY (inventory_id)
);

insert into inventory (inventory_status, inventory_asset_name, inventory_asset_type) values (1, 'server-1', 1 );
insert into inventory (inventory_status, inventory_asset_name, inventory_asset_type) values (1, 'server-2', 1 );
insert into inventory (inventory_status, inventory_asset_name, inventory_asset_type) values (1, 'server-3', 1 );
insert into inventory (inventory_status, inventory_asset_name, inventory_asset_type) values (1, 'server-4', 1 );

insert into inventory (inventory_status, inventory_asset_name, inventory_asset_type) values (2, 'Operational System', 3 );





# Inventory_asset_type
# 1=host
# 2=software
# 3=Operation System


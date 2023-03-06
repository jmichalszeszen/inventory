#
#

create table lifecicle
(
   lifecicle_id		int 		NOT NULL	AUTO_INCREMENT			COMMENT 'lifecicle id',
   detail_id		int 		NOT NULL					COMMENT 'links to parent detail',
   lifecicle_ga		date								COMMENT 'date of general avaliability',
   lifecicle_eos	date								COMMENT 'date of end of support',
   lifecicle_eol	date								COMMENT 'date of end of life',
   last_update		datetime 	NOT NULL 	default (sysdate())            	COMMENT 'date and time of last update',

   PRIMARY KEY (lifecicle_id, detail_id),
   FOREIGN KEY (detail_id)      REFERENCES details(detail_id)
);



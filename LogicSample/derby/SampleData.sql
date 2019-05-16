-- Data for KahunaSample


INSERT INTO "departments" ("name", "head_department_name", "budget", "notes", "secret_agenda", "sum_sub_department_budget", "budget_with_sub_department_budget") VALUES
	('Sales', null, 50.00, 'Dept Notes - Sales', 'Agenda - Sales',1000.00,1050.00),
	('US Sales', 'Sales', 100.00, 'Dept Notes - US Sales', 'Agenda - US Sales',0,100.00),
	('Euro Sales', 'Sales', 200.00, 'Dept Notes - Euro Sales', 'Agenda - Euro Sales',400.00,600.00),
	('Heavenly Sales', 'Sales', 300.00, 'Dept Notes - Heavenly Sales', 'return to Earth',0,300.00),
	('Spanish Sales', 'Euro Sales', 400.00, 'Dept Notes - Spanish Sales', 'return to Earth',0,400.00)
;


INSERT INTO "valid_customerlevel" ("ident", "ts", "level_stored", "description")
VALUES
	(1, current timestamp, 'G','Gold'),
	(2, current timestamp, 'N','Normal'),
	(3, current timestamp, 'S','Silver')
;


INSERT INTO "customers" ("ts", "name", "balance", "credit_limit", "notes", "customer_level", "is_credit_pre_approved", "big_order_count")
VALUES
	(current timestamp, 'Gloria''s Garden',100.00,150.00,'Posies A. Lincoln','G',false,0),
	(current timestamp, 'Hibernating Bears',100.00,100000.00,'Bears','S',false,2),
	(current timestamp, 'Max Air',100.00,100000.00,'Max','N',false,2),
	(current timestamp, 'Shari''s Shangri La',0.00,0.00,'Shari','G',false,0),
	(current timestamp, 'Alpha and Sons',0.00,0.00,'Shari','G',false,0)
;


INSERT INTO "products" ("ts", "name", "price", "quantity_on_hand", "total_quantity_ordered", "quantity_reorder", "is_reorder_required", "count_components", "sum_components_value", "needs_usage_terms", "is_active", "notes", "is_secret")
VALUES
	(current timestamp, 'Hammer',10.0000,0,4,100,false,0,0.0000,false,true,'Hammer Notes', false),
	(current timestamp, 'Big Hammer',10.0000,0,4,100,false,0,0.0000,false,true,'Big Hammer Notes', false),
	(current timestamp, 'Shovel',20.0000,0,8,200,false,0,0.0000,false,true,'Shovel Notes', false),
	(current timestamp, 'Mallet',500.0000,0,0,500,false,0,0.0000,false,false,'Mallet Notes', false),
	(current timestamp, 'Dynamite',500.0000,0,0,500,false,0,0.0000,false,true,'Dyno Notes - not to be taken internally', false),
	(current timestamp, 'Boing 747X',0.0000,0,0,300,false,0,0.0000,false,true,'Boing Notes', false),
	(current timestamp, 'WingX',0.0000,2,0,10,false,0,0.0000,false,true,'WingX Notes', false),
	(current timestamp, 'Boing 747',10300.0000,0,0,300,false,3,10300.0000,false,true,'Boing 747 Notes', false),
	(current timestamp, 'Fuselage',1300.0000,4,0,5,false,0,0.0000,false,true,'WingX Notes', false),
	(current timestamp, 'Wing',4000.0000,2,0,10,false,2,4000.00,false,true,'Wing Notes', false),
	(current timestamp, 'Engine',1500.00,3,0,20,false,0,0.00,false,true,'Engine Notes', false),
	(current timestamp, 'Bolt',10.00,4000,0,10000,false,0,0.00,false,true,'Bolt Notes', false),
	(current timestamp, 'Stealth Bolt',20.00,5000,0,10000,false,0,0.00,false,true,'Stealth Bolt Notes', true)
;


INSERT INTO "product_billofmaterials" ("ts", "product_name_kit", "product_name", "kit_number_required", "value")
VALUES
	(current timestamp, 'Boing 747','Fuselage',1,1300),
	(current timestamp, 'Boing 747','Wing',2,8000),
	(current timestamp, 'Boing 747','Bolt',100,1000),
	(current timestamp, 'Wing','Engine',2,3000),
	(current timestamp, 'Wing','Bolt',100,1000)
;


INSERT INTO "employees" ("ts", "name", "base_salary", "department_name", "on_loan_department_name", "employee_type", "notes")
VALUES
	(current timestamp, 'Lt Kiji',150000.00, NULL,NULL,'exempt','Protects us from Uncle Joe'),
	(current timestamp, 'A. Lincoln',250000.00, 'Heavenly Sales',NULL,'exempt','from Ky'),
	(current timestamp, 'M. Ghandi',250000.00, NULL,NULL,'exempt','non violence 1'),
	(current timestamp, 'M. King',250000.00, NULL,NULL,'exempt','non violence 1'),
	(current timestamp, 'Willie Loman',40000.00,'US Sales',NULL,'salesrep','ah'),
	(current timestamp, 'charlie',40000.00,'US Sales',NULL,'salesrep','tuna'),
	(current timestamp, 'Sami Stoner',44000.00,'Euro Sales',NULL,'salesrep','on a high')
;
	
	
INSERT INTO "orders" ("ident", "ts", "amount_total", "amount_discounted", "amount_paid", "amount_un_paid", "is_ready", "approving_officer", "officer_item_usage_approval",
							"unresolved_usage_count", "placed_date", "due_date", "salesrep_name", "customer_name", "cloned_from_order_ident", "item_count")
VALUES
	(1, current timestamp, 50.00,50.00,0.00,50.00,false,'G PO.1','',0,'2013-11-1','2013-12-1','A. Lincoln','Gloria''s Garden',0,2),
	(2, current timestamp, 50.00,50.00,0.00,50.00,true,'G PO.2','',0,'2013-11-2','2013-12-2','Willie Loman','Gloria''s Garden',0,2),
	(3, current timestamp, 50.00,50.00,0.00,50.00,true,'M PO.1 = 3','',0,'2013-11-3','2013-12-3','Sami Stoner','Max Air',0,2),
	(4, current timestamp, 50.00,50.00,0.00,50.00,true,'M PO.2 = 4','',0,'2013-11-4','2013-12-4','Willie Loman','Max Air',0,2),
	(5, current timestamp, 50.00,50.00,0.00,50.00,true,'M PO.3','',0,'2013-11-5','2013-12-5','Sami Stoner','Max Air',0,2),
	(6, current timestamp, 50.00,50.00,0.00,50.00,true,'G PO.3','',0,'2013-11-6','2013-12-6','A. Lincoln','Gloria''s Garden',0,2),
	(7, current timestamp, 50.00,50.00,0.00,50.00,true,'M PO.3','',0,'2013-11-7','2013-12-7','charlie','Max Air',0,2),
	(8, current timestamp, 20.00,20.00,0.00,20.00,false,'M PO.4','',0,'2013-11-8','2013-12-8','Sami Stoner','Max Air',0,2),
	(9, current timestamp, 510.00,510.00,0.00,510.00,false,'G PO.4','',0,'2013-11-9','2013-12-9','A. Lincoln','Gloria''s Garden',0,2),
   (10, current timestamp, 40.00,40.00,0.00,40.00,false,'G PO.5 S*','',0,'2013-11-10','2013-12-10','A. Lincoln','Gloria''s Garden',0,2),
   (11, current timestamp, 50.00,50.00,0.00,50.00,false,'G PO.1','',0,'2013-11-1','2013-12-1','A. Lincoln','Alpha and Sons',0,2),
   (12, current timestamp, 50.00,50.00,0.00,50.00,false,'G PO.1','',0,'2013-11-1','2013-12-1','A. Lincoln','Alpha and Sons',0,2)
;


INSERT INTO "lineitems" ("ts", "order_ident", "quantity_ordered", "product_name", "part_price", "amount", "notes", "is_ready", "ident")
VALUES
	(current timestamp, 1,1,'Hammer',10.00,10.00,'Part 1, Order 1: 1',false,1),
	(current timestamp, 1,2,'Shovel',20.00,40.00,'Part 2, Order 2: 2',false,2),

	(current timestamp, 2,1,'Hammer',10.00,10.00,'Part 1, Order 2: 1',true,3),
	(current timestamp, 2,2,'Shovel',20.00,40.00,'Part 2, Order 2: 2',true,4),

	(current timestamp, 3,1,'Hammer',10.00,10.00,'Part 1, Order 3: 1',true,5),
	(current timestamp, 3,2,'Shovel',20.00,40.00,'Part 2, Order 3: 2',true,6),
	
	(current timestamp, 4,1,'Hammer',10.00,10.00,'Part 1, Order 4: 1',true,7),
	(current timestamp, 4,2,'Shovel',20.00,40.00,'Part 2, Order 4: 2',true,8),
	
	(current timestamp, 5,5,'Hammer',10.00,10.00,'Part 1, Order 5: 1',true,29),

	(current timestamp, 6,1,'Hammer',10.00,10.00,'Part 1, Order 6: 1',true,10),
	(current timestamp, 6,2,'Shovel',20.00,40.00,'Part 2, Order 6: 2',true,11),
	(current timestamp, 7,1,'Hammer',10.00,10.00,'Part 1, Order 7: 1',true,12),
	(current timestamp, 7,2,'Shovel',20.00,40.00,'Part 2, Order 7: 2',true,13),

	(current timestamp, 8,2,'Big Hammer',10.00,20.00,'Part 1, Order 8: 1',false,14),

	(current timestamp, 9,1,'Hammer',10.00,10.00,'Part 1, Order 9: 1',true,15),
	(current timestamp, 9,2,'Mallet',500.00,1000.00,'Part 2, Order 9: 2',true,16),

	(current timestamp, 10,2,'Stealth Bolt',20.00,40.00,'Stealth Bolt for Order 10: 1',true,17),

	(current timestamp, 11,1,'Hammer',10.00,10.00,'Part 1, Order 11: 1',false,18),
	(current timestamp, 11,2,'Shovel',20.00,40.00,'Part 2, Order 11: 2',false,19),

	(current timestamp, 12,1,'Hammer',10.00,10.00,'Part 1, Order 12: 1',false,20),
	(current timestamp, 12,2,'Shovel',20.00,40.00,'Part 2, Order 12: 2',false,21)
;


INSERT INTO "lineitem_notes" ("ident", "ts", "item_ident", "special_handling")
VALUES
	(1, current timestamp, 1, 'Pre-loaded Note')
;


INSERT INTO "lineitem_usages" ("ident", "ts", "explanation", "item_ident")
VALUES
	(1, current timestamp, 'Not to be taken internally',1)
;


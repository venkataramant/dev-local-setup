create table saving_account (
	account_no integer primary key generated always as identity,
	full_name varchar(50),
	balance decimal
);


insert into saving_account(full_name,balance) values('first_customer1',200.0);
insert into saving_account(full_name,balance) values('second_customer2',202.0);

CREATE TABLE public.current_account (
	account_no int4 GENERATED ALWAYS AS IDENTITY( SEQUENCE NAME current_account_seq  INCREMENT BY 5 MINVALUE 1000 MAXVALUE 2147483647 START 1000 CACHE 1 NO CYCLE) NOT NULL,
	business_name varchar(50) NULL,
	balance numeric NULL,
	overdraw_amount numeric NULL,
	CONSTRAINT current_account_pkey PRIMARY KEY (account_no)
);

INSERT INTO public.current_account
(business_name, balance, overdraw_amount)
VALUES( 'computers', 100.0, 50.0);
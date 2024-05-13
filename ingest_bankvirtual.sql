drop schema if exists bank_virtual cascade;
create schema bank_virtual;
create table IF NOT EXISTS bank_virtual.bsnet140513(
        Source varchar(25),
        Target varchar(25),
        Weight numeric(10,2),
        typeTrans varchar(100),
        fraud integer
);
create table IF NOT EXISTS bank_virtual.bs140513(
        step integer,
        customer varchar(25),
        age varchar(3),
        gender varchar(3),
        zipcodeOri varchar(10),
        merchant varchar(20),
        zipMerchant varchar(10),
        category varchar(30),
        amount numeric(10,2),
        fraud varchar(1)
);

copy bank_virtual.bsnet140513 from '/Users/shrn/Downloads/data-fellowship/study/week5/assignment/datasets/bsNET140513_032310.csv'
delimiter ',' header csv;

copy bank_virtual.bs140513 from '/Users/shrn/Downloads/data-fellowship/study/week5/assignment/datasets/bs140513_032310.csv'
delimiter ',' header csv;
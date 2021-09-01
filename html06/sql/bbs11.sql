create table bbs11(
	num number primary key,
	sub	varchar2(30),
	id varchar2(30) not null,
	content varchar2(2000)
);
create sequence bbs11_seq;
insert into bbs11 values (bbs11_seq.nextval,'test1','tester','test');
insert into bbs11 values (bbs11_seq.nextval,'test2','tester','test');
insert into bbs11 values (bbs11_seq.nextval,'test3','tester','test');
insert into bbs11 values (bbs11_seq.nextval,'test4','tester','test');
insert into bbs11 values (bbs11_seq.nextval,'test5','tester','test');
commit;

select * from bbs11;
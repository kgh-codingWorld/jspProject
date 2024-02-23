-- MustHave용으로 사용자 계정을 생성하여 db를 연결하려고 함

create user mustHaave identified by 1234;
grant connect, resource to mustHaave;

create table member(
	id nvarchar2(10) not null,
	pass varchar2(10) not null,
	name nvarchar2(30) not null,
	regidate date default sysdate not null,
	primary key(id)
);

create table board(
	num number primary key,
	title nvarchar2(200) not null,
	content nvarchar2(2000) not null,
	id nvarchar2(10) not null,
	postdate date default sysdate not null,
	visitcount number(6));
	
alter table board add constraint board_mem_fk foreign key(id) references member(id);

create sequence seq_board_num increment by 1 start with 1 minvalue 1 nomaxvalue nocycle nocache;

insert into board(num, title, content, id, postdate, visitcount)
values (seq_board_num.nextval, '제목1', '내용1', 'kkw', sysdate, 0);
--kkw가 멤버 테이블에 없기 때문에 오류 발생
--멤버 테이블에 회원이 있어야 가능함
insert into member(id, pass, name) values ('kkw', '1234', '김기원');
insert into member(id, pass, name) values ('hgd', '1234', '홍길동');
insert into member(id, pass, name) values ('ljj', '1234', '이정재');
insert into member(id, pass, name) values ('jis', '1234', '조인성');
insert into member(id, pass, name) values ('kth', '1234', '김태희');
insert into member(id, pass, name) values ('khs', '1234', '김혜수');

insert into board(num, title, content, id, postdate, visitcount)
values (seq_board_num.nextval, '제목1', '내용1', 'kkw', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
values (seq_board_num.nextval, '제목2', '내용2', 'kkw', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
values (seq_board_num.nextval, '제목3', '내용3', 'kkw', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
values (seq_board_num.nextval, '제목4', '내용4', 'kkw', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
values (seq_board_num.nextval, '제목5', '내용5', 'kkw', sysdate, 0);

select * from member;
select * from board;

SELECT B.*, M.name FROM member M INNER JOIN board B ON M.id=B.id WHERE num=1

--board table의 내림차순 정렬로 모든 값을 가져오고 rownum을 붙혀 가져오고 1~10까지를 가져오는 테스트
SELECT * FROM(
	SELECT Tb.*, ROWNUM rNum FROM (
	SELECT * FROM board ORDER BY num DESC
	) Tb
) WHERE rNum BETWEEN 11 AND 20;


--파일 업로드용 데이터베이스 생성
create table myFile(
	idx number primary key,
	name nvarchar2(50) not null,
	title nvarchar2(200) not null,
	cate nvarchar2(30),
	oFile nvarchar2(100) not null, --오리지널 파일명으로 파일명이 길거나 한글이거나 확장자 포함
	sFile nvarchar2(30) not null, --저장용 파일명(중복배제용, 날짜나 시간 정보로 파일명을 생성)
	postdate date default sysdate not null);

	
	select * from myfile;
	
create table mvcboard(
idx number primary key,
name nvarchar2(50) not null, --작성자명
title nvarchar2(200) not null, --제목
content nvarchar2(2000) not null, --내용
postdate date default sysdate not null, --작성일
ofile nvarchar2(200), --원본파일명
sfile nvarchar2(30), --저장파일명
downcount number(5) default 0 not null, --다운로드 횟수
pass varchar2(50) not null, --비번
visitcount number default 0 not null);

insert into mvcboard (idx, name, title, content, pass)
    values (seq_board_num.nextval, '김유신', '자료실 제목1 입니다.','내용','1234');
insert into mvcboard (idx, name, title, content, pass)
    values (seq_board_num.nextval, '장보고', '자료실 제목2 입니다.','내용','1234');
insert into mvcboard (idx, name, title, content, pass)
    values (seq_board_num.nextval, '이순신', '자료실 제목3 입니다.','내용','1234');
insert into mvcboard (idx, name, title, content, pass)
    values (seq_board_num.nextval, '강감찬', '자료실 제목4 입니다.','내용','1234');
insert into mvcboard (idx, name, title, content, pass)
    values (seq_board_num.nextval, '대조영', '자료실 제목5 입니다.','내용','1234');

commit;

select * from mvcboard;
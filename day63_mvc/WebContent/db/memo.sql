
create table memo (
    id VARCHAR2(20) not null,
    email VARCHAR2(20) not null,
    content VARCHAR2(100)
);

/*
Model
View
Controller 

- 패키지 구조 정의
kr.or.kosa.dto
kr.or.kosa.dao
kr.or.kosa.controller
kr.or.kosa.service
kr.or.kosa.util

1. DB >> table 설계 >>> memo

1.DTO, VO, TO
2.DB(연결)
3.DAO <--- controller 사용
4.디자인파일 (jsp)...UI(memo.html, memoList.jsp,...)

글쓰기 -> writeServlet
목록보기 -> listServlet
등등


--------------------------------------------------------------
<Resource name="jdbc:MemoDB"
			  auth="Container"
			  type="javax.sql.DataSource"
			  username="jihyo"
			  password="oracle"
			  driverClassName="oracle.jdbc.OracleDriver"
			  url="jdbc:oracle:thin:@localhost:1521:orcl"
			  
			  maxWait = "-1" :
			  maxIdle= "10"  : 사용하지 않은 idle(애기)상태의 최대 수
			  maxTotal= "20" :	커넥션 객체의 최대 개수 (default:8)  
			  maxActive = "20" : DataSource로부터 꺼낼 수 있는 커넥션 최대 수 중 기본값: 8개
	/> 	


*/
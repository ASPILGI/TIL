# SQL명령어

### SQL이란
SQL(Structured Query Language)은 구조화된 쿼리(질의문) 언어를 의미한다.여기서 쿼리는 데이터베이스에 저장되어있는 정보를<br>
필터링 하기 위한 질문인데, SQL은 데이터베이스에 쿼리를 보내 원하는 데이터를 가져오거나 삽입할 수 있다.<br>
즉, SQL은 데이터베이스에 사용하는 프로그래밍 언어라고 할 수 있다.

SQL은 주로 관계형 데이터베이스에서 사용하는데, MySQL, Oracle, SQLite, PostgreSQL 등의 관계형 데이터베이스에서 사용한다.

SQL을 사용하는 데이터베이스와 다르게 데이터의 구조가 고정되어 있지 않은 데이터베이스를 NoSQL이라고 한다.<br>
NoSQL은 테이블을 사용하지 않고 데이터를 다른 형태로 저장한다. MongoDB와 같은 문서지향 데이터베이스가 NoSQL의 종류이다.

### SQL문법의 종류
1. 데이터 정의어(DDL: Data Definition Language)
  - 테이블이나 관계의 구조를 생성하는데 사용하며 CREATE, ALTER, DROP, TRUNCATE 문 등이 있다.
```
CREATE - 새로운 데이터베이스 관계(테이블) View, 인덱스, 저장 프로시저 만들기.
DROP - 이미 존재하는 데이터베이스 관계(테이블), 뷰, 인덱스, 저장 프로시저를 삭제한다.
ALTER - 이미 존재하는 데이터베이스 개체에 대한 변경, RENAME의 역할을 한다.
TRUNCATE - 관계(테이블)에서 데이터를 제거한다. (한번 삭제시 돌이킬 수 없음.)
```

2. 데이터 조작어(DML: Data Manipulation Language)
  - 테이블에 데이터 검색, 삽입, 수정, 삭제하는 데 사용하며 SELECT, UPDATE, DELETE, INSERT문 등이 있다.
```
SELECT - 검색(질의)
INSERT - 삽입(등록)
UPDATE - 업데이트(수정)
DELETE - 삭제
```

3. 데이터 제어어(DCL: Data Control Language) 
  - 데이터의 사용 권한을 관리하는 데 사용하며 GRANT, REVOKE 문 등이 있다.
```
GRANT - 특정 데이터베이스 사용자에게 특정 작업에 대한 수행 권한을 부여한다.
REVOKE - 특정 데이터베이스 사용자에게 특정 작업에 대한 수행 권한을 박탈 or 회수한다.
```

4. 트랜잭션 제어어(TCL : Transaction Control Language)
  - 데이터 조작어(DML) 명령어 실행, 취소, 임시저장할 때 사용하는 명령어
```
COMMIT - 모든 작업을 최종 실행
ROLLBACK - 모든 작업을 되돌림
SAVEPOINT - ROLLBACK 저장점을 지정하는 명령어
```

### 연산자
1. 산술 연산자 : + - / *
2. 비교 연산자 : > < >= <= = != ^= <>
3. 논리 연산자 : and, or, not
4. 비교 연산자2 : between and, in, is null, like

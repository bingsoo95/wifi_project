## 프로젝트 목표
Open API와 JDBC를 활용해 보면서 웹서비스 기본 개발 학습해보기   

## 구현 페이지

- index 페이지
  - 기본화면내용 출력 (홈/위치 히스토리 목록/OpenAPI 와이파이 정보가져오기)
  - JS를 활용하여 내 위치 가져오기 기능 구현
- save 페이지
  - OpenAPI 와이파이 버튼 클릭 시 서울시 공공 와이파이 위치정보 API 데이터를 통해 받은 JSON 파일을 파싱해 public_wifi 테이블에 저장 기능 구현
- read 페이지
  - 내 위치 LAT/LNT 기준 소수점 2자리까지 일치하는 20개의 결과를 최대 20개까지 조회하고 입력한 값을 history 테이블에 저장 기능 구현
- history 페이지
  - history 테이블에 저장된 데이터 조회 및 삭제 기능 구현
  
## 활용 기술 및 개발 도구
- Java (eclipse)
- MariaDB (dbeaver)
- erd (erdCloud)
- JS, CSS
- JSP

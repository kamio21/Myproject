# 소개
URL 을 입력받아 짧게 줄여주고, Shortening 된 URL 을 입력하면 원래 URL 로 리다이렉트하는 URL

# 문제해결 
- URL을 입력받으면 62진법(1~9 , A~Z , a~z)을 이용하여 랜덤하게 8자리로 만들어서 key-map에 랜덤발생한 key 값과 원래 주소를 저장하고
  value-map에는 반대로 원래주소와 key값을 저장한다.
- URL을 입력받으면 처음에 value-hashmap에서 이미 입력한 값이 있는지 확인하고 없으면 키값을 발생시킨다.
<예시>
key-map

key	     | value
------------ | -------------
157u972lM    | http://google.com
<hr>
value-map
key	     | value
------------ | -------------
157u972lM    | http://google.com

# 실행 방법 명시
-서버 구동
 JEON\server\apache-tomcat-7.0.73\bin\startup.bat

-페이지 실행
 주소창에 http://localhost/index.jsp 
 원본link에 URL을 넣고 shorten 버튼을 클릭한다.
 변경link에 반환된 URL을 goWebsite 버튼을 클릭하여 화면이 잘 뜨나 확인한다. 
	
# ScreenShot
- 첫 페이지
<br/><img src="screenshot1.png"/>
- 줄임 URL 구하기
<br/><img src="screenshot2.png"/>
- 정상적인 URL을 입력하지 않은 경우
<br/><img src="screenshot3.png"/>
- 정상적인 줄임 URL이 아닌 경우
<br/><img src="screenshot4.png"/>

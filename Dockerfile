FROM openjdk:8-jre-alpine 
VOLUME /tmp 
ADD /build/libs/*.jar app.jar 
ENTRYPOINT ["sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -Duser.country=KR -Duser.language=ko -Duser.timezone=Asia/Seoul -jar /app.jar"]
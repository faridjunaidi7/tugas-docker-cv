FROM nginx:alpine

ARG FULL_NAME
ARG ROLE
ARG UNIVERSITY
ARG SEMESTER
ARG EMAIL
ARG LOCATION
ARG BIO
ARG SKILLS

COPY html/ /usr/share/nginx/html/

RUN sed -i "s/FULL_NAME_PLACEHOLDER/${FULL_NAME}/g" /usr/share/nginx/html/index.html && \
    sed -i "s/ROLE_PLACEHOLDER/${ROLE}/g" /usr/share/nginx/html/index.html && \
    sed -i "s/UNIVERSITY_PLACEHOLDER/${UNIVERSITY}/g" /usr/share/nginx/html/index.html && \
    sed -i "s/SEMESTER_PLACEHOLDER/${SEMESTER}/g" /usr/share/nginx/html/index.html && \
    sed -i "s/EMAIL_PLACEHOLDER/${EMAIL}/g" /usr/share/nginx/html/index.html && \
    sed -i "s/LOCATION_PLACEHOLDER/${LOCATION}/g" /usr/share/nginx/html/index.html && \
    sed -i "s/BIO_PLACEHOLDER/${BIO}/g" /usr/share/nginx/html/index.html && \
    sed -i "s/SKILLS_PLACEHOLDER/${SKILLS}/g" /usr/share/nginx/html/index.html

EXPOSE 80

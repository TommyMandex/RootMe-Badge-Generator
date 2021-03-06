FROM tiangolo/uwsgi-nginx-flask:python3.7

COPY ./requirements.txt /app/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY ./ /app

VOLUME /app/storage_clients

ENV API_URL https://api.www.root-me.org
ENV URL https://root-me-badge.cloud.duboc.xyz
ENV STORAGE_FOLDER storage_clients
ENV ROOTME_ACCOUNT_USERNAME rootme_username
ENV ROOTME_ACCOUNT_PASSWORD password 

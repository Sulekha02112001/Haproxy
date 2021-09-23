FROM python:alpine3.7
COPY flaskcode/* /app/
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 5001
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
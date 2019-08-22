FROM python:3.7-alpine

RUN adduser -D myuser
RUN pip install flask

USER myuser
WORKDIR /app
COPY .s2i .s2i
COPY app.py .

EXPOSE 5001
CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]

FROM python:3.7-alpine

WORKDIR /app

COPY app.py .
RUN pip install flask

EXPOSE 5001
CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]

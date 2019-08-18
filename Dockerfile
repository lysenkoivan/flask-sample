FROM python:3.7-alpine

WORKDIR /app

COPY echo.py .
RUN pip install --upgrade pip==19.2.2 && pip install flask &&export FLASK_APP=/app/echo.py

EXPOSE 5001
CMD ["flask", "run", "--host=0.0.0.0", "--poer=5001"]

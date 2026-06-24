
FROM python:3.12-slim


WORKDIR /app


COPY . .

RUN pip install --no-cache-dir -e .

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5001

CMD ["sh", "-c", "flask init-db && flask run --port=5001"]

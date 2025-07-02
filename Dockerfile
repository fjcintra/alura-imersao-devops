FROM python:3.12.11-alpine

WORKDIR /app

COPY requirements.txt .

# RUN apk add --no-cache --virtual .build-deps \
#     build-base \
#     rust \
#     cargo

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
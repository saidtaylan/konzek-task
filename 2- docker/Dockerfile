FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

ENV PORT=80

ENV HOST=0.0.0.0

CMD ["fastapi", "run", "main.py"]
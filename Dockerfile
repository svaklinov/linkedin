FROM python:3

WORKDIR /usr/src/app

COPY scrypt.py .

EXPOSE 8000

CMD ["python3", "./scrypt.py"]

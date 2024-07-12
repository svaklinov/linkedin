FROM python:3-alpine
#FROM python:3-slim

WORKDIR /usr/src/app

COPY . .
# If you have dependencies, you can include this line to install them. 
# Use venv to be included only dependancies which is used.
RUN python3 -m venv /venv && \
     /venv/bin/pip install --upgrade pip && \
    /venv/bin/pip install -r requirements.txt

EXPOSE 8000

CMD ["python3", "./script.py"]
FROM python:alpine
WORKDIR /bingchat
COPY bing.py requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "bing.py" ]

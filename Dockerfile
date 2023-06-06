FROM python:alpine
RUN apk add --no-cache git
WORKDIR /PyroEdgeGptBot
RUN git clone https://github.com/tom-snow/PyroEdgeGPTBot.git /PyroEdgeGptBot
COPY requirements.txt .
RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev \
    && pip install --no-cache-dir -r requirements.txt \
    && apk del .build-deps git

CMD [ "python", "PyroEdgeGptBot.py" ]

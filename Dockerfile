FROM alpine AS builder
RUN apk add --no-cache git
RUN git clone https://github.com/pininkara/BingChatBot.git /bingchat

FROM python:alpine
WORKDIR /bingchat
COPY --from=builder /bingchat/bing.py .
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "bing.py" ]

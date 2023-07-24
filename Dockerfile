FROM alpine:3.18.2

RUN apk add python3
RUN apk add py3-pip

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

# copy the code on to the image

COPY app.py .

EXPOSE 5000

CMD ("python3", "app.py")



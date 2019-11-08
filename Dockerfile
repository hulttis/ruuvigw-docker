FROM python:3.7.4

RUN apt-get -y update
RUN apt-get -y install bluez bluez-hcidump git

RUN mkdir -p /var/log/ruuvigw

WORKDIR /app
RUN  git clone https://github.com/hulttis/ruuvigw.git
WORKDIR /app/ruuvigw
ADD . .

RUN pip install --no-cache-dir -r requirements.txt

RUN cat ruuvigw.json

CMD ["python", "./ruuvigw.py"]

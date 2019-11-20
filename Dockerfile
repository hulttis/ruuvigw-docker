FROM python:3.8

RUN apt-get -y update && apt-get -y install git bluez bluez-hcidump && mkdir -p /var/log/ruuvigw

RUN  git clone https://github.com/hulttis/ruuvigw.git /app/ruuvigw
WORKDIR /app/ruuvigw
ADD . .

RUN pip install --no-cache-dir -r requirements.txt

#RUN cat ruuvigw.json

CMD ["python", "./ruuvigw.py"]

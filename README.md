# RUUVIGW-DOCKER 1.1.4 (191120)
**Ruuvitag InfluxDB / MQTT gateway ( python 3.8 ) Docker**

See `https://github.com/hulttis/ruuvigw` for more information

### INSTALLATION
#### REQUIREMENTS
- Linux (tested in Ubuntu server 18.04.03 and 2019-09-26-raspbian-buster-lite). **NOT WORKING IN WINDOWS**
- python 3.8 (tested also with 3.7)
- git (`sudo apt -y install git`)
- bluez and bluez-hcitool (`sudo apt -y install bluez bluez-hcitool`) - needed for the OS as well
 
#### DOCKER-COMPOSE
- create compose directory (`mkdir ~/compose && cd ~/compose`)
- clone git repository (`git clone https://github.com/hulttis/ruuvigw-docker.git ruuvigw`)
- copy docker-compose.yaml (`cp ruuvigw/docker-compose.yaml .`)
- edit ruuvigw/ruuvigw.json (`nano ruuvigw/ruuvigw.json`)
- create /var/log/ruuvigw directory (`sudo mkdir -p /var/log/ruuvigw`) for logs
- start ruuvigw container (`docker-compose up -d ruuvigw`)
- check logs (`docker-compose logs --tail 500 ruuvigw`)

### LICENCE
MIT License is used for this software.

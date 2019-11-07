# RUUVIGW-DOCKER 1.1.0 (191107)
**Ruuvitag InfluxDB / MQTT gateway ( python 3.7.x ) Docker**

### INSTALLATION
#### REQUIREMENTS
- Linux (tested in Ubuntu server 18.04.03). **NOT WORKING IN WINDOWS**
- python 3.7.x (tested with 3.7.4)
- bluez and bluez-hcitool (`sudo apt -y install bluez bluez-hcitool`)
 
#### DOCKER-COMPOSE
- create compose directory (`mkdir ~/compose && cd ~/compose`)
- clone git repository (`git clone https://github.com/hulttis/ruuvigw-docker.git ruuvigw`)
- copy docker-compose.yaml (`cp ruuvigw/docker-compose .`)
- edit ruuvigw/ruuvigw.json (`nano ruuvigw/ruuvigw.json`)
- create /var/log/ruuvigw directory (`sudo mkdir -p /var/log/ruuvigw`) for logs
- start ruuvigw container (`docker-compose up -d ruuvigw`)
- check logs (`docker-compose logs --tail 300 ruuvigw`)

### LICENCE
MIT License is used for this software.
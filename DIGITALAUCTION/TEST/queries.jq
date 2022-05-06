#Find Total No of services
jq '.[]| length' 
./services.json

#Find no of Common services
jq '[.[]|.[] | select(.serviceNature == "Common")] | length' 
./services.json

#Find no of Common App services
jq '[.[]|.[] | select(.serviceNature == "Common") | select(.serviceType == "App") ] | length' 
./services.json

#Find no of Common Data services
jq '[.[]|.[] | select(.serviceNature == "Common") | select(.serviceType == "Data") ] | length' 
./services.json

#Find no of Business services
jq '[.[]|.[] | select(.serviceNature == "Business")] | length' 
./services.json

#Find no of Business App services
jq '[.[]|.[] | select(.serviceNature == "Business") | select(.serviceType == "App")] | length' 
./services.json

#Find no of Business Data services
jq '[.[]|.[] | select(.serviceNature == "Business") | select(.serviceType == "Data")] | length' 
./services.json

#Find no of Incluster services
jq '[.[]|.[] | select(.serviceHostingType == "Cluster")] | length' 
./services.json

#Find no of Cloud Managed  services
jq '[.[]|.[] | select(.serviceHostingType == "GLOBAL")] | length' 
./services.json


#Common Services
jq '.services | .[] | select(.serviceNature == "Common")'
./services.json 

#Business Services
jq '.services | .[] | select(.serviceNature == "Business")'
./services.json 

#In Cluster Services
jq '.services | .[] | select(.serviceHostingType == "Cluster")'
./services.json 

#Cloud Managed Services
jq '.services | .[] | select(.serviceHostingType == "GLOBAL")'
./services.json 

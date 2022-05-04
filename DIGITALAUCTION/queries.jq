#Find Total No of services
jq '.[]| length' 
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json

#Find no of Common services
jq '[.[]|.[] | select(.serviceNature == "Common")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json

#Find no of Common App services
jq '[.[]|.[] | select(.serviceNature == "Common") | select(.serviceType == "App") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json

#Find no of Common Data services
jq '[.[]|.[] | select(.serviceNature == "Common") | select(.serviceType == "Data") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json

#Find no of Business services
jq '[.[]|.[] | select(.serviceNature == "Business")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json

#Find no of Business App services
jq '[.[]|.[] | select(.serviceNature == "Business") | select(.serviceType == "App")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json

#Find no of Business Data services
jq '[.[]|.[] | select(.serviceNature == "Business") | select(.serviceType == "Data")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json

#Find no of Incluster services
jq '[.[]|.[] | select(.serviceHostingType == "Cluster")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json

#Find no of Cloud Managed  services
jq '[.[]|.[] | select(.serviceHostingType == "GLOBAL")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json


#Common Services
jq '.services | .[] | select(.serviceNature == "Common")'
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json 

#Business Services
jq '.services | .[] | select(.serviceNature == "Business")'
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json 

#In Cluster Services
jq '.services | .[] | select(.serviceHostingType == "Cluster")'
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json 

#Cloud Managed Services
jq '.services | .[] | select(.serviceHostingType == "GLOBAL")'
/opt/mycode/json-data/DIGITALAUCTION/PROD/services.json 

####Stats####
#$Find Total No of services
jq '.[]| length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Common services
jq '[.[]|.[] | select(.serviceNature == "Common")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Common App services
jq '[.[]|.[] | select(.serviceNature == "Common") | select(.serviceType == "App")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Common Data services
jq '[.[]|.[] | select(.serviceNature == "Common") | select(.serviceType == "Data")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json


#$Find no of Business services
jq '[.[]|.[] | select(.serviceNature == "Business")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Business App services
jq '[.[]|.[] | select(.serviceNature == "Business") | select(.serviceType == "App")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Business Data services
jq '[.[]|.[] | select(.serviceNature == "Business") | select(.serviceType == "Data")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json


#$Find no of Incluster services
jq '[.[]|.[] | select(.serviceHostingType == "Cluster")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Cloud Managed  services
jq '[.[]|.[] | select(.serviceHostingType == "GLOBAL")] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#PROD ENV####################
#$Find no of services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#Find no of Common services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceNature == "Common") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Common App services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceNature == "Common") | select(.serviceType == "App") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Common Data services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceNature == "Common") | select(.serviceType == "Data") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#Find no of Business services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceNature == "Business") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

##Find no of App services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceType == "App") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Data services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceType == "Data") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#STAGE ENV####################
#$Find no of services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#Find no of Common services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceNature == "Common") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Common App services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceNature == "Common") | select(.serviceType == "App") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Common Data services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceNature == "Common") | select(.serviceType == "Data") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#Find no of Business services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceNature == "Business") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

##Find no of App services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceType == "App") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json

#$Find no of Data services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceType == "Data") ] | length' 
/opt/mycode/json-data/DIGITALAUCTION/services.json
####Details####
#Common Services
jq '.services | .[] | select(.serviceNature == "Common")'
/opt/mycode/json-data/DIGITALAUCTION/services.json 

#Business Services
jq '.services | .[] | select(.serviceNature == "Business")'
/opt/mycode/json-data/DIGITALAUCTION/services.json 

#In Cluster Services
jq '.services | .[] | select(.serviceHostingType == "Cluster")'
/opt/mycode/json-data/DIGITALAUCTION/services.json 

#Cloud Managed Services
jq '.services | .[] | select(.serviceHostingType == "GLOBAL")'
/opt/mycode/json-data/DIGITALAUCTION/services.json 

####Stats####
#$Find Total No of services
jq '.[]| length' 
./data.json

#$Find no of DIGITALAUCTION services
jq '[.[]|.[] | select(.associatedProduct == "AUCTION")] | length' 
./data.json

#$Find no of EMS services
jq '[.[]|.[] | select(.associatedProduct == "EMS")] | length' 
./data.json

#$Find no of HRMS services
jq '[.[]|.[] | select(.associatedProduct == "HRMS")] | length' 
./data.json

#$Find no of PROCUREMENT services
jq '[.[]|.[] | select(.associatedProduct == "PROCUREMENT")] | length' 
./data.json

#$Find no of Common services
jq '[.[]|.[] | select(.serviceNature == "Common")] | length' 
./data.json

#$Find no of Common App services
jq '[.[]|.[] | select(.serviceNature == "Common") | select(.serviceType == "App")] | length' 
./data.json

#$Find no of Common Data services
jq '[.[]|.[] | select(.serviceNature == "Common") | select(.serviceType == "Data")] | length' 
./data.json


#$Find no of Business services
jq '[.[]|.[] | select(.serviceNature == "Business")] | length' 
./data.json

#$Find no of Business App services
jq '[.[]|.[] | select(.serviceNature == "Business") | select(.serviceType == "App")] | length' 
./data.json

#$Find no of Business Data services
jq '[.[]|.[] | select(.serviceNature == "Business") | select(.serviceType == "Data")] | length' 
./data.json


#$Find no of Incluster services
jq '[.[]|.[] | select(.serviceHostingType == "Cluster")] | length' 
./data.json

#$Find no of Cloud Managed  services
jq '[.[]|.[] | select(.serviceHostingType == "GLOBAL")] | length' 
./data.json

#PROD ENV####################
#$Find no of services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") ] | length' 
./data.json

#Find no of Common services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceNature == "Common") ] | length' 
./data.json

#$Find no of Common App services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceNature == "Common") | select(.serviceType == "App") ] | length' 
./data.json

#$Find no of Common Data services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceNature == "Common") | select(.serviceType == "Data") ] | length' 
./data.json

#Find no of Business services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceNature == "Business") ] | length' 
./data.json

##Find no of App services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceType == "App") ] | length' 
./data.json

#$Find no of Data services in PROD Env
jq '[.[]|.[] | select(.associatedEnv == "PROD") | select(.serviceType == "Data") ] | length' 
./data.json

#STAGE ENV####################
#$Find no of services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") ] | length' 
./data.json

#Find no of Common services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceNature == "Common") ] | length' 
./data.json

#$Find no of Common App services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceNature == "Common") | select(.serviceType == "App") ] | length' 
./data.json

#$Find no of Common Data services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceNature == "Common") | select(.serviceType == "Data") ] | length' 
./data.json

#Find no of Business services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceNature == "Business") ] | length' 
./data.json

##Find no of App services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceType == "App") ] | length' 
./data.json

#$Find no of Data services in STAGE Env
jq '[.[]|.[] | select(.associatedEnv == "STAGE") | select(.serviceType == "Data") ] | length' 
./data.json
####Details####
#Common Services
jq '.services | .[] | select(.serviceNature == "Common")'
./data.json 

#Business Services
jq '.services | .[] | select(.serviceNature == "Business")'
./data.json 

#In Cluster Services
jq '.services | .[] | select(.serviceHostingType == "Cluster")'
./data.json 

#Cloud Managed Services
jq '.services | .[] | select(.serviceHostingType == "GLOBAL")'
./data.json 

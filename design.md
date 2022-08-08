Services_Details  Table --
    Id |  MetadataJson | VeiwJson | SLAJson

MetadataJson  
{
    "services": [
        {
            //metadataJson
            "name": "Bidding-app1",
            "description": "Bidding Business Service Java API",
            "associatedOU": "Synectiks",
            "associatedDept": "LOGISTICS",
            "associatedProduct": "AUCTION",
            "associatedEnv": "PROD",
            "associatedLandingZone": "897373451",
            "associatedProductEnclave": "897373451-VPC1",
            "associatedCluster": "897373451-VPC1-Cluster1",
            "serviceNature": "Business",
            "associatedCommonService": "NA",
            "associatedBusinessServiceNature":"Business",
            "associatedBusinessService": "Bidding",
            "serviceType": "App",
            "serviceHostingType": "Cluster",
            "associatedClusterNamespace": "AUCTION",
            "associatedManagedCloudServiceLocation": "NA",
            "associatedCloudElementId": "897373451-VPC1-Cluster1",
            "associatedGlobalServiceLocation": "NA",
            "associatedCloudElement": "Cluster-ARN"
        },
        {
            "name": "Bidding-app2",
            "description": "Bidding Business Service Java API",
            "associatedOU": "Synectiks",
            "associatedDept": "LOGISTICS",
            "associatedProduct": "AUCTION",
            "associatedEnv": "PROD",
            "associatedLandingZone": "897373451",
            "associatedProductEnclave": "897373451-VPC1",
            "associatedCluster": "NA",
            "serviceNature": "Business",
            "associatedCommonService": "NA",
            "associatedBusinessServiceNature":"Business",
            "associatedBusinessService": "Bidding",
            "serviceType": "App",
            "serviceHostingType": "LAMBDA",
            "associatedClusterNamespace": "AUCTION",
            "associatedManagedCloudServiceLocation": "NA",
            "associatedCloudElementId": "897373451-VPC1-LAMDA1",
            "associatedGlobalServiceLocation": "NA",
            "associatedCloudElement": "LAMBDA-ARN"
        }
    ]
}

Product_Services_Detail 
    Id - ProductName - ENV - MasterServicesDetails

MasterServicesDetails Structure   
    {
    "CommonServices": [
        "SEARCH",
        "FILEREPO"
    ],
    "Business-Services": [
        "BIDDING",
        "AUCTION"
    ]
}


Account_Services Table --
Id | Account_ID  | Account_Services_Json | CloudElementsJson( Pure AWS elements details- obtained from aws config service)




Outside Application that deploys Products And Services ---

UseCase -- Deploy a product in any ENV (DEV/STAGE/ TEST/ PROD) -

Tupple we get -- OU / DEPT / Product / Env /  MasterDetails / ServicesDetails

What we do?

Update Product_Services_Detail ( Id - ProductName - ENV - MasterServicesDetails) table
    with  Product / ENV / MasterServicesDetails

Update Services_Details( Id |  MetadataJson | VeiwJson | SLAJson)  Table --id/MetadataJson (with ServicesDetails from input tupple)

Update Account_Services Table (Id | Account_ID   | Account_Services_Json ) , update in the  Account_Services_Json as specified in format services-vpcwise.json


 






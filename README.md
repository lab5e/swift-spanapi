# Swift5 API client for Span

API for device, collection, output and firmware management

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 4.1.9 receding-glennis
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://lab5e.com/span](https://lab5e.com/span)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.lab5e.com/span*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CollectionsAPI* | [**broadcastMessage**](docs/CollectionsAPI.md#broadcastmessage) | **POST** /collections/{collectionId}/to | Broadcast message
*CollectionsAPI* | [**createCollection**](docs/CollectionsAPI.md#createcollection) | **POST** /collections | Create collection
*CollectionsAPI* | [**deleteCollection**](docs/CollectionsAPI.md#deletecollection) | **DELETE** /collections/{collectionId} | Delete collection
*CollectionsAPI* | [**listCollectionData**](docs/CollectionsAPI.md#listcollectiondata) | **GET** /collections/{collectionId}/data | Get payloads
*CollectionsAPI* | [**listCollections**](docs/CollectionsAPI.md#listcollections) | **GET** /collections | List collections
*CollectionsAPI* | [**retrieveCollection**](docs/CollectionsAPI.md#retrievecollection) | **GET** /collections/{collectionId} | Retrieve collection
*CollectionsAPI* | [**updateCollection**](docs/CollectionsAPI.md#updatecollection) | **PATCH** /collections/{collectionId} | Update collection
*DatadumpAPI* | [**dataDump**](docs/DatadumpAPI.md#datadump) | **POST** /datadump | Data dump
*DevicesAPI* | [**createDevice**](docs/DevicesAPI.md#createdevice) | **POST** /collections/{collectionId}/devices | Create device
*DevicesAPI* | [**deleteDevice**](docs/DevicesAPI.md#deletedevice) | **DELETE** /collections/{collectionId}/devices/{deviceId} | Remove device
*DevicesAPI* | [**listDeviceData**](docs/DevicesAPI.md#listdevicedata) | **GET** /collections/{collectionId}/devices/{deviceId}/data | Get payloads
*DevicesAPI* | [**listDevices**](docs/DevicesAPI.md#listdevices) | **GET** /collections/{collectionId}/devices | List devices
*DevicesAPI* | [**retrieveDevice**](docs/DevicesAPI.md#retrievedevice) | **GET** /collections/{collectionId}/devices/{deviceId} | Retrieve device
*DevicesAPI* | [**sendMessage**](docs/DevicesAPI.md#sendmessage) | **POST** /collections/{collectionId}/devices/{deviceId}/to | Send message
*DevicesAPI* | [**updateDevice**](docs/DevicesAPI.md#updatedevice) | **PATCH** /collections/{existingCollectionId}/devices/{deviceId} | Update device
*FotaAPI* | [**clearFirmwareError**](docs/FotaAPI.md#clearfirmwareerror) | **DELETE** /collections/{collectionId}/devices/{deviceId}/fwerror | Clear FOTA error
*FotaAPI* | [**createFirmware**](docs/FotaAPI.md#createfirmware) | **POST** /collections/{collectionId}/firmware | Create firmware
*FotaAPI* | [**deleteFirmware**](docs/FotaAPI.md#deletefirmware) | **DELETE** /collections/{collectionId}/firmware/{imageId} | Delete firmware
*FotaAPI* | [**firmwareUsage**](docs/FotaAPI.md#firmwareusage) | **PATCH** /collections/{collectionId}/firmware/{imageId}/usage | Firmware usage
*FotaAPI* | [**listFirmware**](docs/FotaAPI.md#listfirmware) | **GET** /collections/{collectionId}/firmware | List firmware
*FotaAPI* | [**retrieveFirmware**](docs/FotaAPI.md#retrievefirmware) | **GET** /collections/{collectionId}/firmware/{imageId} | Retrieve firmware
*FotaAPI* | [**updateFirmware**](docs/FotaAPI.md#updatefirmware) | **PATCH** /collections/{collectionId}/firmware/{imageId} | Update firmware
*OutputsAPI* | [**createOutput**](docs/OutputsAPI.md#createoutput) | **POST** /collections/{collectionId}/outputs | Create output
*OutputsAPI* | [**deleteOutput**](docs/OutputsAPI.md#deleteoutput) | **DELETE** /collections/{collectionId}/outputs/{outputId} | Delete output
*OutputsAPI* | [**listOutputs**](docs/OutputsAPI.md#listoutputs) | **GET** /collections/{collectionId}/outputs | List outputs
*OutputsAPI* | [**logs**](docs/OutputsAPI.md#logs) | **GET** /collections/{collectionId}/outputs/{outputId}/logs | Output logs
*OutputsAPI* | [**retrieveOutput**](docs/OutputsAPI.md#retrieveoutput) | **GET** /collections/{collectionId}/outputs/{outputId} | Retrieve output
*OutputsAPI* | [**status**](docs/OutputsAPI.md#status) | **GET** /collections/{collectionId}/outputs/{outputId}/status | Output status
*OutputsAPI* | [**updateOutput**](docs/OutputsAPI.md#updateoutput) | **PATCH** /collections/{collectionId}/outputs/{outputId} | Update output
*SystemAPI* | [**getSystemInfo**](docs/SystemAPI.md#getsysteminfo) | **GET** /system | System information


## Documentation For Models

 - [BroadcastMessageRequest](docs/BroadcastMessageRequest.md)
 - [ClearFirmwareErrorResponse](docs/ClearFirmwareErrorResponse.md)
 - [CoAPMetadata](docs/CoAPMetadata.md)
 - [Collection](docs/Collection.md)
 - [CollectionFirmware](docs/CollectionFirmware.md)
 - [CollectionFirmwareFirmwareManagement](docs/CollectionFirmwareFirmwareManagement.md)
 - [CreateFirmwareRequest](docs/CreateFirmwareRequest.md)
 - [DataDumpRequest](docs/DataDumpRequest.md)
 - [DataDumpResponse](docs/DataDumpResponse.md)
 - [Device](docs/Device.md)
 - [DumpedCollection](docs/DumpedCollection.md)
 - [DumpedDevice](docs/DumpedDevice.md)
 - [FieldMask](docs/FieldMask.md)
 - [Firmware](docs/Firmware.md)
 - [FirmwareMetadata](docs/FirmwareMetadata.md)
 - [FirmwareUsageResponse](docs/FirmwareUsageResponse.md)
 - [ListCollectionResponse](docs/ListCollectionResponse.md)
 - [ListDataResponse](docs/ListDataResponse.md)
 - [ListDevicesResponse](docs/ListDevicesResponse.md)
 - [ListFirmwareResponse](docs/ListFirmwareResponse.md)
 - [ListOutputResponse](docs/ListOutputResponse.md)
 - [MessageSendResult](docs/MessageSendResult.md)
 - [MultiSendMessageResponse](docs/MultiSendMessageResponse.md)
 - [NetworkMetadata](docs/NetworkMetadata.md)
 - [Output](docs/Output.md)
 - [OutputConfig](docs/OutputConfig.md)
 - [OutputDataMessage](docs/OutputDataMessage.md)
 - [OutputDataMessageOutputMessageType](docs/OutputDataMessageOutputMessageType.md)
 - [OutputLogEntry](docs/OutputLogEntry.md)
 - [OutputLogResponse](docs/OutputLogResponse.md)
 - [OutputStatusResponse](docs/OutputStatusResponse.md)
 - [OutputType](docs/OutputType.md)
 - [ProtobufAny](docs/ProtobufAny.md)
 - [RpcStatus](docs/RpcStatus.md)
 - [SendMessageRequest](docs/SendMessageRequest.md)
 - [SendMessageResponse](docs/SendMessageResponse.md)
 - [SystemInfoResponse](docs/SystemInfoResponse.md)
 - [UDPMetadata](docs/UDPMetadata.md)
 - [UpdateDeviceRequest](docs/UpdateDeviceRequest.md)


## Documentation For Authorization


## APIToken

- **Type**: API key
- **API key parameter name**: X-API-Token
- **Location**: HTTP header


## Author

dev@lab5e.com


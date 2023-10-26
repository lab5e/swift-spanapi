# Swift5 API client for Span

API for device, collection, output and firmware management

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 4.8.0 indecipherable-ferman
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://lab5e.com](https://lab5e.com)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.lab5e.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BlobsAPI* | [**deleteBlob**](docs/BlobsAPI.md#deleteblob) | **DELETE** /span/collections/{collectionId}/blobs/{blobId} | Remove a blob stored on a collection
*BlobsAPI* | [**listBlobs**](docs/BlobsAPI.md#listblobs) | **GET** /span/collections/{collectionId}/blobs | List the blobs for a collection
*CertificatesAPI* | [**createCertificate**](docs/CertificatesAPI.md#createcertificate) | **POST** /span/collections/{collectionId}/certificates/create | Create certificate
*CertificatesAPI* | [**retrieveCertificateChain**](docs/CertificatesAPI.md#retrievecertificatechain) | **GET** /span/collections/{collectionId}/certificates | Get certificate chain
*CertificatesAPI* | [**signCertificate**](docs/CertificatesAPI.md#signcertificate) | **POST** /span/collections/{collectionId}/certificates/sign | Sign certificate
*CertificatesAPI* | [**verifyCertificate**](docs/CertificatesAPI.md#verifycertificate) | **POST** /span/collections/{collectionId}/certificates/verify | Verify certificate
*CollectionsAPI* | [**createCollection**](docs/CollectionsAPI.md#createcollection) | **POST** /span/collections | Create collection
*CollectionsAPI* | [**deleteCollection**](docs/CollectionsAPI.md#deletecollection) | **DELETE** /span/collections/{collectionId} | Delete collection
*CollectionsAPI* | [**listCollectionData**](docs/CollectionsAPI.md#listcollectiondata) | **GET** /span/collections/{collectionId}/data | Retrieve data from devices
*CollectionsAPI* | [**listCollections**](docs/CollectionsAPI.md#listcollections) | **GET** /span/collections | List collections
*CollectionsAPI* | [**retrieveCollection**](docs/CollectionsAPI.md#retrievecollection) | **GET** /span/collections/{collectionId} | Retrieve collection
*CollectionsAPI* | [**retrieveCollectionStats**](docs/CollectionsAPI.md#retrievecollectionstats) | **GET** /span/collections/{collectionId}/stats | Retrieve collection statistics
*CollectionsAPI* | [**updateCollection**](docs/CollectionsAPI.md#updatecollection) | **PATCH** /span/collections/{collectionId} | Update collection
*DevicesAPI* | [**addDownstreamMessage**](docs/DevicesAPI.md#adddownstreammessage) | **POST** /span/collections/{collectionId}/devices/{deviceId}/outbox | Add message to oubox
*DevicesAPI* | [**createDevice**](docs/DevicesAPI.md#createdevice) | **POST** /span/collections/{collectionId}/devices | Create device
*DevicesAPI* | [**deleteDevice**](docs/DevicesAPI.md#deletedevice) | **DELETE** /span/collections/{collectionId}/devices/{deviceId} | Remove device.
*DevicesAPI* | [**deleteDownstreamMessage**](docs/DevicesAPI.md#deletedownstreammessage) | **DELETE** /span/collections/{collectionId}/devices/{deviceId}/outbox/{messageId} | Delete outgoing message
*DevicesAPI* | [**deviceCertificate**](docs/DevicesAPI.md#devicecertificate) | **GET** /span/collections/{collectionId}/devices/{deviceId}/certs | Get issued certificate(s) for device
*DevicesAPI* | [**listDeviceData**](docs/DevicesAPI.md#listdevicedata) | **GET** /span/collections/{collectionId}/devices/{deviceId}/data | Retrieve data from device
*DevicesAPI* | [**listDevices**](docs/DevicesAPI.md#listdevices) | **GET** /span/collections/{collectionId}/devices | List devices in collection.
*DevicesAPI* | [**listDownstreamMessages**](docs/DevicesAPI.md#listdownstreammessages) | **GET** /span/collections/{collectionId}/devices/{deviceId}/outbox | List the messages in the outbox
*DevicesAPI* | [**listUpstreamMessages**](docs/DevicesAPI.md#listupstreammessages) | **GET** /span/collections/{collectionId}/devices/{deviceId}/inbox | List incoming messages
*DevicesAPI* | [**retrieveDevice**](docs/DevicesAPI.md#retrievedevice) | **GET** /span/collections/{collectionId}/devices/{deviceId} | Retrieve device
*DevicesAPI* | [**retrieveDeviceStats**](docs/DevicesAPI.md#retrievedevicestats) | **GET** /span/collections/{collectionId}/devices/{deviceId}/stats | Retrieve device statistics
*DevicesAPI* | [**updateDevice**](docs/DevicesAPI.md#updatedevice) | **PATCH** /span/collections/{existingCollectionId}/devices/{deviceId} | Update device
*FotaAPI* | [**clearFirmwareError**](docs/FotaAPI.md#clearfirmwareerror) | **DELETE** /span/collections/{collectionId}/devices/{deviceId}/fwerror | Clear FOTA error
*FotaAPI* | [**createFirmware**](docs/FotaAPI.md#createfirmware) | **POST** /span/collections/{collectionId}/firmware | Create firmware
*FotaAPI* | [**deleteFirmware**](docs/FotaAPI.md#deletefirmware) | **DELETE** /span/collections/{collectionId}/firmware/{imageId} | Delete firmware
*FotaAPI* | [**firmwareUsage**](docs/FotaAPI.md#firmwareusage) | **GET** /span/collections/{collectionId}/firmware/{imageId}/usage | Firmware usage
*FotaAPI* | [**listFirmware**](docs/FotaAPI.md#listfirmware) | **GET** /span/collections/{collectionId}/firmware | List firmware
*FotaAPI* | [**retrieveFirmware**](docs/FotaAPI.md#retrievefirmware) | **GET** /span/collections/{collectionId}/firmware/{imageId} | Retrieve firmware
*FotaAPI* | [**retrieveFirmwareStats**](docs/FotaAPI.md#retrievefirmwarestats) | **GET** /span/collections/{collectionId}/firmware/{imageId}/stats | Retrieve firmware statistics
*FotaAPI* | [**updateFirmware**](docs/FotaAPI.md#updatefirmware) | **PATCH** /span/collections/{existingCollectionId}/firmware/{imageId} | Update firmware
*GatewaysAPI* | [**createGateway**](docs/GatewaysAPI.md#creategateway) | **POST** /span/collections/{collectionId}/gateways | Create gateway
*GatewaysAPI* | [**deleteGateway**](docs/GatewaysAPI.md#deletegateway) | **DELETE** /span/collections/{collectionId}/gateways/{gatewayId} | Delete gateway
*GatewaysAPI* | [**gatewayCertificates**](docs/GatewaysAPI.md#gatewaycertificates) | **GET** /span/collections/{collectionId}/gateways/{gatewayId}/certs | Get issued certificate(s) for gateway
*GatewaysAPI* | [**listGateways**](docs/GatewaysAPI.md#listgateways) | **GET** /span/collections/{collectionId}/gateways | List gateways
*GatewaysAPI* | [**retrieveGateway**](docs/GatewaysAPI.md#retrievegateway) | **GET** /span/collections/{collectionId}/gateways/{gatewayId} | Retrieve gateway
*GatewaysAPI* | [**retrieveGatewayStats**](docs/GatewaysAPI.md#retrievegatewaystats) | **GET** /span/collections/{collectionId}/gateways/{gatewayId}/stats | Retrieve gateway statistics
*GatewaysAPI* | [**updateGateway**](docs/GatewaysAPI.md#updategateway) | **PATCH** /span/collections/{existingCollectionId}/gateways/{gatewayId} | Update gateway
*OutputsAPI* | [**createOutput**](docs/OutputsAPI.md#createoutput) | **POST** /span/collections/{collectionId}/outputs | Create output
*OutputsAPI* | [**deleteOutput**](docs/OutputsAPI.md#deleteoutput) | **DELETE** /span/collections/{collectionId}/outputs/{outputId} | Delete output
*OutputsAPI* | [**listOutputs**](docs/OutputsAPI.md#listoutputs) | **GET** /span/collections/{collectionId}/outputs | List outputs
*OutputsAPI* | [**logs**](docs/OutputsAPI.md#logs) | **GET** /span/collections/{collectionId}/outputs/{outputId}/logs | Output logs
*OutputsAPI* | [**retrieveOutput**](docs/OutputsAPI.md#retrieveoutput) | **GET** /span/collections/{collectionId}/outputs/{outputId} | Retrieve output
*OutputsAPI* | [**retrieveOutputStats**](docs/OutputsAPI.md#retrieveoutputstats) | **GET** /span/collections/{collectionId}/outputs/{outputId}/stats | Retrieve output statistics
*OutputsAPI* | [**status**](docs/OutputsAPI.md#status) | **GET** /span/collections/{collectionId}/outputs/{outputId}/status | Output status
*OutputsAPI* | [**updateOutput**](docs/OutputsAPI.md#updateoutput) | **PATCH** /span/collections/{existingCollectionId}/outputs/{outputId} | Update output
*SpanAPI* | [**getSystemInfo**](docs/SpanAPI.md#getsysteminfo) | **GET** /span/system | System information


## Documentation For Models

 - [AddDownstreamMessageRequest](docs/AddDownstreamMessageRequest.md)
 - [Blob](docs/Blob.md)
 - [BlobStats](docs/BlobStats.md)
 - [CellularIoTConfig](docs/CellularIoTConfig.md)
 - [CellularIoTMetadata](docs/CellularIoTMetadata.md)
 - [CertificateChainResponse](docs/CertificateChainResponse.md)
 - [CertificateInfo](docs/CertificateInfo.md)
 - [ClearFirmwareErrorResponse](docs/ClearFirmwareErrorResponse.md)
 - [CoAPMetadata](docs/CoAPMetadata.md)
 - [Collection](docs/Collection.md)
 - [CollectionFirmware](docs/CollectionFirmware.md)
 - [CollectionStats](docs/CollectionStats.md)
 - [CreateCertificateRequest](docs/CreateCertificateRequest.md)
 - [CreateCertificateResponse](docs/CreateCertificateResponse.md)
 - [CreateCollectionRequest](docs/CreateCollectionRequest.md)
 - [CreateDeviceRequest](docs/CreateDeviceRequest.md)
 - [CreateFirmwareRequest](docs/CreateFirmwareRequest.md)
 - [CreateGatewayRequest](docs/CreateGatewayRequest.md)
 - [CreateOutputRequest](docs/CreateOutputRequest.md)
 - [DeleteDownstreamMessageResponse](docs/DeleteDownstreamMessageResponse.md)
 - [Device](docs/Device.md)
 - [DeviceCertificateResponse](docs/DeviceCertificateResponse.md)
 - [DeviceConfig](docs/DeviceConfig.md)
 - [DeviceMetadata](docs/DeviceMetadata.md)
 - [DeviceStats](docs/DeviceStats.md)
 - [Firmware](docs/Firmware.md)
 - [FirmwareManagement](docs/FirmwareManagement.md)
 - [FirmwareMetadata](docs/FirmwareMetadata.md)
 - [FirmwareStats](docs/FirmwareStats.md)
 - [FirmwareUsageResponse](docs/FirmwareUsageResponse.md)
 - [Gateway](docs/Gateway.md)
 - [GatewayCIoTConfig](docs/GatewayCIoTConfig.md)
 - [GatewayCertificateResponse](docs/GatewayCertificateResponse.md)
 - [GatewayConfig](docs/GatewayConfig.md)
 - [GatewayCustomConfig](docs/GatewayCustomConfig.md)
 - [GatewayDeviceConfig](docs/GatewayDeviceConfig.md)
 - [GatewayDeviceMetadata](docs/GatewayDeviceMetadata.md)
 - [GatewayInetConfig](docs/GatewayInetConfig.md)
 - [GatewayMetadata](docs/GatewayMetadata.md)
 - [GatewayStats](docs/GatewayStats.md)
 - [GatewayStatus](docs/GatewayStatus.md)
 - [GatewayType](docs/GatewayType.md)
 - [InetMetadata](docs/InetMetadata.md)
 - [ListBlobResponse](docs/ListBlobResponse.md)
 - [ListCollectionResponse](docs/ListCollectionResponse.md)
 - [ListDataResponse](docs/ListDataResponse.md)
 - [ListDevicesResponse](docs/ListDevicesResponse.md)
 - [ListDownstreamMessagesResponse](docs/ListDownstreamMessagesResponse.md)
 - [ListFirmwareResponse](docs/ListFirmwareResponse.md)
 - [ListGatewayResponse](docs/ListGatewayResponse.md)
 - [ListOutputResponse](docs/ListOutputResponse.md)
 - [ListUpstreamMessagesResponse](docs/ListUpstreamMessagesResponse.md)
 - [MQTTMetadata](docs/MQTTMetadata.md)
 - [MessageDownstream](docs/MessageDownstream.md)
 - [MessageState](docs/MessageState.md)
 - [MessageTransport](docs/MessageTransport.md)
 - [MessageUpstream](docs/MessageUpstream.md)
 - [ModelAny](docs/ModelAny.md)
 - [Output](docs/Output.md)
 - [OutputConfig](docs/OutputConfig.md)
 - [OutputDataMessage](docs/OutputDataMessage.md)
 - [OutputLogEntry](docs/OutputLogEntry.md)
 - [OutputLogResponse](docs/OutputLogResponse.md)
 - [OutputMessageType](docs/OutputMessageType.md)
 - [OutputStats](docs/OutputStats.md)
 - [OutputStatusResponse](docs/OutputStatusResponse.md)
 - [OutputType](docs/OutputType.md)
 - [RetrieveBlobResponse](docs/RetrieveBlobResponse.md)
 - [SignCertificateRequest](docs/SignCertificateRequest.md)
 - [SignCertificateResponse](docs/SignCertificateResponse.md)
 - [Status](docs/Status.md)
 - [SystemInfoResponse](docs/SystemInfoResponse.md)
 - [UDPMetadata](docs/UDPMetadata.md)
 - [UpdateCollectionRequest](docs/UpdateCollectionRequest.md)
 - [UpdateDeviceRequest](docs/UpdateDeviceRequest.md)
 - [UpdateFirmwareRequest](docs/UpdateFirmwareRequest.md)
 - [UpdateGatewayRequest](docs/UpdateGatewayRequest.md)
 - [UpdateOutputRequest](docs/UpdateOutputRequest.md)
 - [VerifyCertificateRequest](docs/VerifyCertificateRequest.md)
 - [VerifyCertificateResponse](docs/VerifyCertificateResponse.md)


## Documentation For Authorization


## APIToken

- **Type**: API key
- **API key parameter name**: X-API-Token
- **Location**: HTTP header


## Author

dev@lab5e.com


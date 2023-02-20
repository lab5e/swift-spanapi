# DevicesAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDownstreamMessage**](DevicesAPI.md#adddownstreammessage) | **POST** /span/collections/{collectionId}/devices/{deviceId}/outbox | Add message to oubox
[**createDevice**](DevicesAPI.md#createdevice) | **POST** /span/collections/{collectionId}/devices | Create device
[**deleteDevice**](DevicesAPI.md#deletedevice) | **DELETE** /span/collections/{collectionId}/devices/{deviceId} | Remove device.
[**deleteDownstreamMessage**](DevicesAPI.md#deletedownstreammessage) | **DELETE** /span/collections/{collectionId}/devices/{deviceId}/outbox/{messageId} | Delete outgoing message
[**deviceCertificate**](DevicesAPI.md#devicecertificate) | **GET** /span/collections/{collectionId}/devices/{deviceId}/certs | Get issued certificate(s) for device
[**listDeviceData**](DevicesAPI.md#listdevicedata) | **GET** /span/collections/{collectionId}/devices/{deviceId}/data | Retrieve data from device
[**listDevices**](DevicesAPI.md#listdevices) | **GET** /span/collections/{collectionId}/devices | List devices in collection.
[**listDownstreamMessages**](DevicesAPI.md#listdownstreammessages) | **GET** /span/collections/{collectionId}/devices/{deviceId}/outbox | List the messages in the outbox
[**listUpstreamMessages**](DevicesAPI.md#listupstreammessages) | **GET** /span/collections/{collectionId}/devices/{deviceId}/inbox | List incoming messages
[**retrieveDevice**](DevicesAPI.md#retrievedevice) | **GET** /span/collections/{collectionId}/devices/{deviceId} | Retrieve device
[**updateDevice**](DevicesAPI.md#updatedevice) | **PATCH** /span/collections/{existingCollectionId}/devices/{deviceId} | Update device


# **addDownstreamMessage**
```swift
    open class func addDownstreamMessage(collectionId: String, deviceId: String, body: AddDownstreamMessageRequest, completion: @escaping (_ data: MessageDownstream?, _ error: Error?) -> Void)
```

Add message to oubox

Add a new message in the outgoing queue to the device. If there is other messages in the outbox these messages will be sent first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 
let body = AddDownstreamMessageRequest(payload: 123) // AddDownstreamMessageRequest | 

// Add message to oubox
DevicesAPI.addDownstreamMessage(collectionId: collectionId, deviceId: deviceId, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** |  | 
 **deviceId** | **String** |  | 
 **body** | [**AddDownstreamMessageRequest**](AddDownstreamMessageRequest.md) |  | 

### Return type

[**MessageDownstream**](MessageDownstream.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDevice**
```swift
    open class func createDevice(collectionId: String, body: CreateDeviceRequest, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Create device

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | This is the containing collection
let body = CreateDeviceRequest(tags: "TODO", firmware: FirmwareMetadata(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", firmwareVersion: "firmwareVersion_example", serialNumber: "serialNumber_example", modelNumber: "modelNumber_example", manufacturer: "manufacturer_example", state: "state_example", stateMessage: "stateMessage_example"), config: DeviceConfig(ciot: CellularIoTConfig(imsi: "imsi_example", imei: "imei_example"), inet: "TODO", gateway: "TODO"), metadata: DeviceMetadata(simOperator: NetworkOperator(mcc: 123, mnc: 123, country: "country_example", network: "network_example", countryCode: "countryCode_example"), ciot: CellularIoTMetadata(gatewayId: "gatewayId_example", allocatedIp: "allocatedIp_example", allocatedAt: "allocatedAt_example", cellId: "cellId_example", mcc: 123, mnc: 123, country: "country_example", network: "network_example", countryCode: "countryCode_example", lastUpdate: "lastUpdate_example"), inet: InetMetadata(gatewayId: "gatewayId_example", lastUpdate: "lastUpdate_example", remoteAddress: "remoteAddress_example", certificateSerial: "certificateSerial_example"), gateway: GatewayDeviceMetadata(gatewayId: "gatewayId_example", lastUpdate: "lastUpdate_example", params: "TODO")), imsi: "imsi_example", imei: "imei_example", network: NetworkMetadata(allocatedIp: "allocatedIp_example", allocatedAt: "allocatedAt_example", cellId: "cellId_example")) // CreateDeviceRequest | 

// Create device
DevicesAPI.createDevice(collectionId: collectionId, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** | This is the containing collection | 
 **body** | [**CreateDeviceRequest**](CreateDeviceRequest.md) |  | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevice**
```swift
    open class func deleteDevice(collectionId: String, deviceId: String, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Remove device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | This is the containing collection
let deviceId = "deviceId_example" // String | The device ID is assigned by the backend.

// Remove device.
DevicesAPI.deleteDevice(collectionId: collectionId, deviceId: deviceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** | This is the containing collection | 
 **deviceId** | **String** | The device ID is assigned by the backend. | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDownstreamMessage**
```swift
    open class func deleteDownstreamMessage(collectionId: String, deviceId: String, messageId: String, completion: @escaping (_ data: DeleteDownstreamMessageResponse?, _ error: Error?) -> Void)
```

Delete outgoing message

Delete an outgoing (ie downstream) message from the outbox.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 
let messageId = "messageId_example" // String | 

// Delete outgoing message
DevicesAPI.deleteDownstreamMessage(collectionId: collectionId, deviceId: deviceId, messageId: messageId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** |  | 
 **deviceId** | **String** |  | 
 **messageId** | **String** |  | 

### Return type

[**DeleteDownstreamMessageResponse**](DeleteDownstreamMessageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deviceCertificate**
```swift
    open class func deviceCertificate(collectionId: String, deviceId: String, completion: @escaping (_ data: DeviceCertificateResponse?, _ error: Error?) -> Void)
```

Get issued certificate(s) for device

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 

// Get issued certificate(s) for device
DevicesAPI.deviceCertificate(collectionId: collectionId, deviceId: deviceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** |  | 
 **deviceId** | **String** |  | 

### Return type

[**DeviceCertificateResponse**](DeviceCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceData**
```swift
    open class func listDeviceData(collectionId: String, deviceId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil, completion: @escaping (_ data: ListDataResponse?, _ error: Error?) -> Void)
```

Retrieve data from device

List the data received from the device. Use the query parameters to control what data you retrieve. The maximum number of data points is 100.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The collection ID. This is included in the request path.
let deviceId = "deviceId_example" // String | The device ID. This is included in the request path.
let limit = 987 // Int | Limit the number of payloads to return. The default is 512. (optional)
let start = "start_example" // String | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. (optional)
let end = "end_example" // String | End of time range. The default is the current time stamp. Value is in milliseconds since epoch. (optional)
let offset = "offset_example" // String | The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. (optional)

// Retrieve data from device
DevicesAPI.listDeviceData(collectionId: collectionId, deviceId: deviceId, limit: limit, start: start, end: end, offset: offset) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** | The collection ID. This is included in the request path. | 
 **deviceId** | **String** | The device ID. This is included in the request path. | 
 **limit** | **Int** | Limit the number of payloads to return. The default is 512. | [optional] 
 **start** | **String** | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. | [optional] 
 **end** | **String** | End of time range. The default is the current time stamp. Value is in milliseconds since epoch. | [optional] 
 **offset** | **String** | The message offset based on the message ID. This parameter can&#39;t be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. | [optional] 

### Return type

[**ListDataResponse**](ListDataResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDevices**
```swift
    open class func listDevices(collectionId: String, completion: @escaping (_ data: ListDevicesResponse?, _ error: Error?) -> Void)
```

List devices in collection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 

// List devices in collection.
DevicesAPI.listDevices(collectionId: collectionId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** |  | 

### Return type

[**ListDevicesResponse**](ListDevicesResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDownstreamMessages**
```swift
    open class func listDownstreamMessages(collectionId: String, deviceId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil, completion: @escaping (_ data: ListDownstreamMessagesResponse?, _ error: Error?) -> Void)
```

List the messages in the outbox

List messages that should be sent to the device when it connects to the service. The messages are sent to the device when it connects to the service and either sends a message (via UDP or CoAP) or requests a message via CoAP GET request.option

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 
let limit = 987 // Int |  (optional)
let start = "start_example" // String | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. (optional)
let end = "end_example" // String | End of time range. The default is the current time stamp. Value is in milliseconds since epoch. (optional)
let offset = "offset_example" // String | The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. (optional)

// List the messages in the outbox
DevicesAPI.listDownstreamMessages(collectionId: collectionId, deviceId: deviceId, limit: limit, start: start, end: end, offset: offset) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** |  | 
 **deviceId** | **String** |  | 
 **limit** | **Int** |  | [optional] 
 **start** | **String** | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. | [optional] 
 **end** | **String** | End of time range. The default is the current time stamp. Value is in milliseconds since epoch. | [optional] 
 **offset** | **String** | The message offset based on the message ID. This parameter can&#39;t be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. | [optional] 

### Return type

[**ListDownstreamMessagesResponse**](ListDownstreamMessagesResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUpstreamMessages**
```swift
    open class func listUpstreamMessages(collectionId: String, deviceId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil, completion: @escaping (_ data: ListUpstreamMessagesResponse?, _ error: Error?) -> Void)
```

List incoming messages

Retrieve a list of incoming (ie upstream) messages, ie messages sent from the device to the service. These messages are buffered in the service until they expire.  Use the query parameters to limit the number of messages to return. If no limit is specified the default limit of 250 is used.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 
let limit = 987 // Int |  (optional)
let start = "start_example" // String | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. (optional)
let end = "end_example" // String | End of time range. The default is the current time stamp. Value is in milliseconds since epoch. (optional)
let offset = "offset_example" // String | The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. (optional)

// List incoming messages
DevicesAPI.listUpstreamMessages(collectionId: collectionId, deviceId: deviceId, limit: limit, start: start, end: end, offset: offset) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** |  | 
 **deviceId** | **String** |  | 
 **limit** | **Int** |  | [optional] 
 **start** | **String** | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. | [optional] 
 **end** | **String** | End of time range. The default is the current time stamp. Value is in milliseconds since epoch. | [optional] 
 **offset** | **String** | The message offset based on the message ID. This parameter can&#39;t be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. | [optional] 

### Return type

[**ListUpstreamMessagesResponse**](ListUpstreamMessagesResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveDevice**
```swift
    open class func retrieveDevice(collectionId: String, deviceId: String, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Retrieve device

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | This is the containing collection
let deviceId = "deviceId_example" // String | The device ID is assigned by the backend.

// Retrieve device
DevicesAPI.retrieveDevice(collectionId: collectionId, deviceId: deviceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectionId** | **String** | This is the containing collection | 
 **deviceId** | **String** | The device ID is assigned by the backend. | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevice**
```swift
    open class func updateDevice(existingCollectionId: String, deviceId: String, body: UpdateDeviceRequest, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Update device

The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections. A note on gateway configurations: Empty gateway configuration blocks are deleted. If the configuration block contains a gateway ID it will be updated  with the new values. All values must be submitted in the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let existingCollectionId = "existingCollectionId_example" // String | 
let deviceId = "deviceId_example" // String | 
let body = UpdateDeviceRequest(collectionId: "collectionId_example", imsi: "imsi_example", imei: "imei_example", tags: "TODO", firmware: FirmwareMetadata(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", firmwareVersion: "firmwareVersion_example", serialNumber: "serialNumber_example", modelNumber: "modelNumber_example", manufacturer: "manufacturer_example", state: "state_example", stateMessage: "stateMessage_example"), config: DeviceConfig(ciot: CellularIoTConfig(imsi: "imsi_example", imei: "imei_example"), inet: "TODO", gateway: "TODO")) // UpdateDeviceRequest | 

// Update device
DevicesAPI.updateDevice(existingCollectionId: existingCollectionId, deviceId: deviceId, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **existingCollectionId** | **String** |  | 
 **deviceId** | **String** |  | 
 **body** | [**UpdateDeviceRequest**](UpdateDeviceRequest.md) |  | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


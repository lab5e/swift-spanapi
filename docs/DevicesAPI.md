# DevicesAPI

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDevice**](DevicesAPI.md#createdevice) | **POST** /collections/{collectionId}/devices | Create device
[**deleteDevice**](DevicesAPI.md#deletedevice) | **DELETE** /collections/{collectionId}/devices/{deviceId} | Remove device.
[**listDeviceData**](DevicesAPI.md#listdevicedata) | **GET** /collections/{collectionId}/devices/{deviceId}/data | Get payloads
[**listDevices**](DevicesAPI.md#listdevices) | **GET** /collections/{collectionId}/devices | List devices in collection.
[**retrieveDevice**](DevicesAPI.md#retrievedevice) | **GET** /collections/{collectionId}/devices/{deviceId} | Retrieve device
[**sendMessage**](DevicesAPI.md#sendmessage) | **POST** /collections/{collectionId}/devices/{deviceId}/to | Send message to a device.
[**updateDevice**](DevicesAPI.md#updatedevice) | **PATCH** /collections/{existingCollectionId}/devices/{deviceId} | Update device. The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections.


# **createDevice**
```swift
    open class func createDevice(collectionId: String, body: Device, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Create device

Create a new device. This will add a device to the collection. You must have write access to the collection.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | This is the containing collection
let body = Device(deviceId: "deviceId_example", collectionId: "collectionId_example", imsi: "imsi_example", imei: "imei_example", tags: "TODO", network: NetworkMetadata(allocatedIp: "allocatedIp_example", allocatedAt: "allocatedAt_example", cellId: "cellId_example"), firmware: FirmwareMetadata(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", firmwareVersion: "firmwareVersion_example", serialNumber: "serialNumber_example", modelNumber: "modelNumber_example", manufacturer: "manufacturer_example", state: "state_example", stateMessage: "stateMessage_example"), metadata: DeviceMetadata(simOperator: NetworkOperator(mcc: 123, mnc: 123, country: "country_example", network: "network_example", countryCode: "countryCode_example"))) // Device | 

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
 **body** | [**Device**](Device.md) |  | 

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

Remove device from collection

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 

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
 **collectionId** | **String** |  | 
 **deviceId** | **String** |  | 

### Return type

[**Device**](Device.md)

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

Get payloads

List the data received from the device. Use the query parameters to control what data you retrieve. The maximumnumber of data points is 100.

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

// Get payloads
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

List devices in collection

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

# **retrieveDevice**
```swift
    open class func retrieveDevice(collectionId: String, deviceId: String, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Retrieve device

Retrieve a single device

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 

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
 **collectionId** | **String** |  | 
 **deviceId** | **String** |  | 

### Return type

[**Device**](Device.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessage**
```swift
    open class func sendMessage(collectionId: String, deviceId: String, body: SendMessageRequest, completion: @escaping (_ data: SendMessageResponse?, _ error: Error?) -> Void)
```

Send message to a device.

Send a message to the device

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 
let body = SendMessageRequest(collectionId: "collectionId_example", deviceId: "deviceId_example", port: 123, payload: 123, transport: "transport_example", coapPath: "coapPath_example") // SendMessageRequest | 

// Send message to a device.
DevicesAPI.sendMessage(collectionId: collectionId, deviceId: deviceId, body: body) { (response, error) in
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
 **body** | [**SendMessageRequest**](SendMessageRequest.md) |  | 

### Return type

[**SendMessageResponse**](SendMessageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevice**
```swift
    open class func updateDevice(existingCollectionId: String, deviceId: String, body: UpdateDeviceRequest, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Update device. The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections.

Update device. The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let existingCollectionId = "existingCollectionId_example" // String | 
let deviceId = "deviceId_example" // String | 
let body = UpdateDeviceRequest(existingCollectionId: "existingCollectionId_example", deviceId: "deviceId_example", collectionId: "collectionId_example", imsi: "imsi_example", imei: "imei_example", tags: "TODO", firmware: FirmwareMetadata(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", firmwareVersion: "firmwareVersion_example", serialNumber: "serialNumber_example", modelNumber: "modelNumber_example", manufacturer: "manufacturer_example", state: "state_example", stateMessage: "stateMessage_example")) // UpdateDeviceRequest | 

// Update device. The device can be moved from one collection to another by setting the collection ID field to the new collection. You must have administrative access to both collections.
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


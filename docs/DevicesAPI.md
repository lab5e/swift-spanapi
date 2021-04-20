# DevicesAPI

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spanCreateDevice**](DevicesAPI.md#spancreatedevice) | **POST** /collections/{collectionId}/devices | Create device
[**spanDeleteDevice**](DevicesAPI.md#spandeletedevice) | **DELETE** /collections/{collectionId}/devices/{deviceId} | Remove device
[**spanListDeviceData**](DevicesAPI.md#spanlistdevicedata) | **GET** /collections/{collectionId}/devices/{deviceId}/data | Get payloads
[**spanListDevices**](DevicesAPI.md#spanlistdevices) | **GET** /collections/{collectionId}/devices | List devices
[**spanRetrieveDevice**](DevicesAPI.md#spanretrievedevice) | **GET** /collections/{collectionId}/devices/{deviceId} | Retrieve device
[**spanSendMessage**](DevicesAPI.md#spansendmessage) | **POST** /collections/{collectionId}/devices/{deviceId}/to | Send message
[**spanUpdateDevice**](DevicesAPI.md#spanupdatedevice) | **PATCH** /collections/{existingCollectionId}/devices/{deviceId} | Update device


# **spanCreateDevice**
```swift
    open class func spanCreateDevice(collectionId: String, body: Device, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Create device

Create a new device. This will add a device to the collection. You must have write access to the collection.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | This is the containing collection
let body = Device(deviceId: "deviceId_example", collectionId: "collectionId_example", imsi: "imsi_example", imei: "imei_example", tags: "TODO", network: NetworkMetadata(allocatedIp: "allocatedIp_example", allocatedAt: "allocatedAt_example", cellId: "cellId_example"), firmware: FirmwareMetadata(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", firmwareVersion: "firmwareVersion_example", serialNumber: "serialNumber_example", modelNumber: "modelNumber_example", manufacturer: "manufacturer_example", state: "state_example", stateMessage: "stateMessage_example")) // Device | 

// Create device
DevicesAPI.spanCreateDevice(collectionId: collectionId, body: body) { (response, error) in
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

# **spanDeleteDevice**
```swift
    open class func spanDeleteDevice(collectionId: String, deviceId: String, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Remove device

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 

// Remove device
DevicesAPI.spanDeleteDevice(collectionId: collectionId, deviceId: deviceId) { (response, error) in
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

# **spanListDeviceData**
```swift
    open class func spanListDeviceData(collectionId: String, deviceId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil, completion: @escaping (_ data: ListDataResponse?, _ error: Error?) -> Void)
```

Get payloads

List the data received from the device. Use the query parameters to control what data you retrieve.

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
DevicesAPI.spanListDeviceData(collectionId: collectionId, deviceId: deviceId, limit: limit, start: start, end: end, offset: offset) { (response, error) in
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

# **spanListDevices**
```swift
    open class func spanListDevices(collectionId: String, completion: @escaping (_ data: ListDevicesResponse?, _ error: Error?) -> Void)
```

List devices

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 

// List devices
DevicesAPI.spanListDevices(collectionId: collectionId) { (response, error) in
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

# **spanRetrieveDevice**
```swift
    open class func spanRetrieveDevice(collectionId: String, deviceId: String, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
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
DevicesAPI.spanRetrieveDevice(collectionId: collectionId, deviceId: deviceId) { (response, error) in
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

# **spanSendMessage**
```swift
    open class func spanSendMessage(collectionId: String, deviceId: String, body: SendMessageRequest, completion: @escaping (_ data: SendMessageResponse?, _ error: Error?) -> Void)
```

Send message

Send a message to the device

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 
let body = SendMessageRequest(collectionId: "collectionId_example", deviceId: "deviceId_example", port: 123, payload: 123, transport: "transport_example", coapPath: "coapPath_example") // SendMessageRequest | 

// Send message
DevicesAPI.spanSendMessage(collectionId: collectionId, deviceId: deviceId, body: body) { (response, error) in
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

# **spanUpdateDevice**
```swift
    open class func spanUpdateDevice(existingCollectionId: String, deviceId: String, body: UpdateDeviceRequest, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Update device

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let existingCollectionId = "existingCollectionId_example" // String | 
let deviceId = "deviceId_example" // String | 
let body = UpdateDeviceRequest(existingCollectionId: "existingCollectionId_example", deviceId: "deviceId_example", collectionId: "collectionId_example", imsi: "imsi_example", imei: "imei_example", tags: "TODO", firmware: FirmwareMetadata(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", firmwareVersion: "firmwareVersion_example", serialNumber: "serialNumber_example", modelNumber: "modelNumber_example", manufacturer: "manufacturer_example", state: "state_example", stateMessage: "stateMessage_example")) // UpdateDeviceRequest | 

// Update device
DevicesAPI.spanUpdateDevice(existingCollectionId: existingCollectionId, deviceId: deviceId, body: body) { (response, error) in
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


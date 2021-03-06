# FotaAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearFirmwareError**](FotaAPI.md#clearfirmwareerror) | **DELETE** /span/collections/{collectionId}/devices/{deviceId}/fwerror | Clear FOTA error
[**createFirmware**](FotaAPI.md#createfirmware) | **POST** /span/collections/{collectionId}/firmware | Create firmware
[**deleteFirmware**](FotaAPI.md#deletefirmware) | **DELETE** /span/collections/{collectionId}/firmware/{imageId} | Delete firmware
[**firmwareUsage**](FotaAPI.md#firmwareusage) | **GET** /span/collections/{collectionId}/firmware/{imageId}/usage | Firmware usage
[**listFirmware**](FotaAPI.md#listfirmware) | **GET** /span/collections/{collectionId}/firmware | List firmware
[**retrieveFirmware**](FotaAPI.md#retrievefirmware) | **GET** /span/collections/{collectionId}/firmware/{imageId} | Retrieve firmware
[**updateFirmware**](FotaAPI.md#updatefirmware) | **PATCH** /span/collections/{existingCollectionId}/firmware/{imageId} | Update firmware


# **clearFirmwareError**
```swift
    open class func clearFirmwareError(collectionId: String, deviceId: String, completion: @escaping (_ data: ClearFirmwareErrorResponse?, _ error: Error?) -> Void)
```

Clear FOTA error

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 

// Clear FOTA error
FotaAPI.clearFirmwareError(collectionId: collectionId, deviceId: deviceId) { (response, error) in
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

[**ClearFirmwareErrorResponse**](ClearFirmwareErrorResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFirmware**
```swift
    open class func createFirmware(collectionId: String, body: CreateFirmwareRequest, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Create firmware

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = CreateFirmwareRequest(image: 123, version: "version_example", filename: "filename_example", tags: "TODO") // CreateFirmwareRequest | 

// Create firmware
FotaAPI.createFirmware(collectionId: collectionId, body: body) { (response, error) in
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
 **body** | [**CreateFirmwareRequest**](CreateFirmwareRequest.md) |  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFirmware**
```swift
    open class func deleteFirmware(collectionId: String, imageId: String, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Delete firmware

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let imageId = "imageId_example" // String | 

// Delete firmware
FotaAPI.deleteFirmware(collectionId: collectionId, imageId: imageId) { (response, error) in
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
 **imageId** | **String** |  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **firmwareUsage**
```swift
    open class func firmwareUsage(collectionId: String, imageId: String, completion: @escaping (_ data: FirmwareUsageResponse?, _ error: Error?) -> Void)
```

Firmware usage

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let imageId = "imageId_example" // String | 

// Firmware usage
FotaAPI.firmwareUsage(collectionId: collectionId, imageId: imageId) { (response, error) in
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
 **imageId** | **String** |  | 

### Return type

[**FirmwareUsageResponse**](FirmwareUsageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFirmware**
```swift
    open class func listFirmware(collectionId: String, completion: @escaping (_ data: ListFirmwareResponse?, _ error: Error?) -> Void)
```

List firmware

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 

// List firmware
FotaAPI.listFirmware(collectionId: collectionId) { (response, error) in
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

[**ListFirmwareResponse**](ListFirmwareResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveFirmware**
```swift
    open class func retrieveFirmware(collectionId: String, imageId: String, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Retrieve firmware

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let imageId = "imageId_example" // String | 

// Retrieve firmware
FotaAPI.retrieveFirmware(collectionId: collectionId, imageId: imageId) { (response, error) in
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
 **imageId** | **String** |  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFirmware**
```swift
    open class func updateFirmware(existingCollectionId: String, imageId: String, body: UpdateFirmwareRequest, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Update firmware

Only the version and tags fields can be updated. The other fields will be ignored.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let existingCollectionId = "existingCollectionId_example" // String | 
let imageId = "imageId_example" // String | 
let body = UpdateFirmwareRequest(collectionId: "collectionId_example", version: "version_example", tags: "TODO") // UpdateFirmwareRequest | 

// Update firmware
FotaAPI.updateFirmware(existingCollectionId: existingCollectionId, imageId: imageId, body: body) { (response, error) in
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
 **imageId** | **String** |  | 
 **body** | [**UpdateFirmwareRequest**](UpdateFirmwareRequest.md) |  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


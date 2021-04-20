# FotaAPI

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spanClearFirmwareError**](FotaAPI.md#spanclearfirmwareerror) | **DELETE** /collections/{collectionId}/devices/{deviceId}/fwerror | Clear FOTA error
[**spanCreateFirmware**](FotaAPI.md#spancreatefirmware) | **POST** /collections/{collectionId}/firmware | Create firmware
[**spanDeleteFirmware**](FotaAPI.md#spandeletefirmware) | **DELETE** /collections/{collectionId}/firmware/{imageId} | Delete firmware
[**spanFirmwareUsage**](FotaAPI.md#spanfirmwareusage) | **PATCH** /collections/{collectionId}/firmware/{imageId}/usage | Firmware usage
[**spanListFirmware**](FotaAPI.md#spanlistfirmware) | **GET** /collections/{collectionId}/firmware | List firmware
[**spanRetrieveFirmware**](FotaAPI.md#spanretrievefirmware) | **GET** /collections/{collectionId}/firmware/{imageId} | Retrieve firmware
[**spanUpdateFirmware**](FotaAPI.md#spanupdatefirmware) | **PATCH** /collections/{collectionId}/firmware/{imageId} | Update firmware


# **spanClearFirmwareError**
```swift
    open class func spanClearFirmwareError(collectionId: String, deviceId: String, completion: @escaping (_ data: ClearFirmwareErrorResponse?, _ error: Error?) -> Void)
```

Clear FOTA error

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 

// Clear FOTA error
FotaAPI.spanClearFirmwareError(collectionId: collectionId, deviceId: deviceId) { (response, error) in
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

# **spanCreateFirmware**
```swift
    open class func spanCreateFirmware(collectionId: String, body: CreateFirmwareRequest, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Create firmware

Create a new firmware image. This is also invoked by the custom HTTP uploader if the POST uses multipart/formdata for the request.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = CreateFirmwareRequest(collectionId: "collectionId_example", image: 123, version: "version_example", filename: "filename_example", tags: "TODO") // CreateFirmwareRequest | 

// Create firmware
FotaAPI.spanCreateFirmware(collectionId: collectionId, body: body) { (response, error) in
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

# **spanDeleteFirmware**
```swift
    open class func spanDeleteFirmware(collectionId: String, imageId: String, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Delete firmware

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let imageId = "imageId_example" // String | 

// Delete firmware
FotaAPI.spanDeleteFirmware(collectionId: collectionId, imageId: imageId) { (response, error) in
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

# **spanFirmwareUsage**
```swift
    open class func spanFirmwareUsage(collectionId: String, imageId: String, completion: @escaping (_ data: FirmwareUsageResponse?, _ error: Error?) -> Void)
```

Firmware usage

Shows the firmware usage for devices in the collection

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let imageId = "imageId_example" // String | 

// Firmware usage
FotaAPI.spanFirmwareUsage(collectionId: collectionId, imageId: imageId) { (response, error) in
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

# **spanListFirmware**
```swift
    open class func spanListFirmware(collectionId: String, completion: @escaping (_ data: ListFirmwareResponse?, _ error: Error?) -> Void)
```

List firmware

Lists available firmware images in collection

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 

// List firmware
FotaAPI.spanListFirmware(collectionId: collectionId) { (response, error) in
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

# **spanRetrieveFirmware**
```swift
    open class func spanRetrieveFirmware(collectionId: String, imageId: String, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Retrieve firmware

Retrieve information on a firmware image

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let imageId = "imageId_example" // String | 

// Retrieve firmware
FotaAPI.spanRetrieveFirmware(collectionId: collectionId, imageId: imageId) { (response, error) in
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

# **spanUpdateFirmware**
```swift
    open class func spanUpdateFirmware(collectionId: String, imageId: String, body: Firmware, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Update firmware

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | Collection ID  Collection ID for the collection owning the firmware image.
let imageId = "imageId_example" // String | Firmware image ID
let body = Firmware(imageId: "imageId_example", version: "version_example", filename: "filename_example", sha256: "sha256_example", length: 123, collectionId: "collectionId_example", created: "created_example", tags: "TODO") // Firmware | 

// Update firmware
FotaAPI.spanUpdateFirmware(collectionId: collectionId, imageId: imageId, body: body) { (response, error) in
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
 **collectionId** | **String** | Collection ID  Collection ID for the collection owning the firmware image. | 
 **imageId** | **String** | Firmware image ID | 
 **body** | [**Firmware**](Firmware.md) |  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


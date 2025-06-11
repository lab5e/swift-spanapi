# FotaAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignTargetImage**](FotaAPI.md#assigntargetimage) | **PATCH** /span/collections/{collectionId}/firmware/labeled/{imageId}/assign | BETA: Assign a target image
[**clearFirmwareError**](FotaAPI.md#clearfirmwareerror) | **DELETE** /span/collections/{collectionId}/devices/{deviceId}/fwerror | Clear FOTA error
[**createFirmware**](FotaAPI.md#createfirmware) | **POST** /span/collections/{collectionId}/firmware | Create firmware
[**createLabeledFirmware**](FotaAPI.md#createlabeledfirmware) | **POST** /span/collections/{collectionId}/firmware/labeled | BETA: Create a labeled firmware image
[**deleteFirmware**](FotaAPI.md#deletefirmware) | **DELETE** /span/collections/{collectionId}/firmware/{imageId} | Delete firmware
[**deleteLabeledImage**](FotaAPI.md#deletelabeledimage) | **DELETE** /span/collections/{collectionId}/firmware/labeled/{imageId} | BETA: Remove a tagged firmware image
[**firmwareUsage**](FotaAPI.md#firmwareusage) | **GET** /span/collections/{collectionId}/firmware/{imageId}/usage | Firmware usage
[**getImageState**](FotaAPI.md#getimagestate) | **PATCH** /span/collections/{collectionId}/devices/{deviceId}/fotastate | BETA: Get state for a single device
[**listFirmware**](FotaAPI.md#listfirmware) | **GET** /span/collections/{collectionId}/firmware | List firmware
[**listImageStates**](FotaAPI.md#listimagestates) | **GET** /span/collections/{collectionId}/firmware/labeled/states | BETA: List image assignments plus states
[**listImageVersionHistory**](FotaAPI.md#listimageversionhistory) | **PATCH** /span/collections/{collectionId}/devices/{deviceId}/fotalog | BETA: List version history for a single device
[**listLabeledFirmware**](FotaAPI.md#listlabeledfirmware) | **GET** /span/collections/{collectionId}/firmware/labeled | BETA: List the labeled firmware images for a collection
[**retrieveFirmware**](FotaAPI.md#retrievefirmware) | **GET** /span/collections/{collectionId}/firmware/{imageId} | Retrieve firmware
[**retrieveFirmwareStats**](FotaAPI.md#retrievefirmwarestats) | **GET** /span/collections/{collectionId}/firmware/{imageId}/stats | Retrieve firmware statistics
[**updateFirmware**](FotaAPI.md#updatefirmware) | **PATCH** /span/collections/{existingCollectionId}/firmware/{imageId} | Update firmware


# **assignTargetImage**
```swift
    open class func assignTargetImage(collectionId: String, imageId: String, label: String? = nil, deviceId: String? = nil, completion: @escaping (_ data: AssignTargetImageResponse?, _ error: Error?) -> Void)
```

BETA: Assign a target image

Assign a particular labeled image to a device or a collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let imageId = "imageId_example" // String | 
let label = "label_example" // String |  (optional)
let deviceId = "deviceId_example" // String |  (optional)

// BETA: Assign a target image
FotaAPI.assignTargetImage(collectionId: collectionId, imageId: imageId, label: label, deviceId: deviceId) { (response, error) in
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
 **label** | **String** |  | [optional] 
 **deviceId** | **String** |  | [optional] 

### Return type

[**AssignTargetImageResponse**](AssignTargetImageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
    open class func createFirmware(collectionId: String, body: CreateFirmwareBody, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Create firmware

Firmware images must have unique version numbers and have an unique checksum. The checksum is calculated when the firmware image is uploaded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = CreateFirmwareBody(image: 123, version: "version_example", filename: "filename_example", tags: "TODO") // CreateFirmwareBody | 

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
 **body** | [**CreateFirmwareBody**](CreateFirmwareBody.md) |  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLabeledFirmware**
```swift
    open class func createLabeledFirmware(collectionId: String, version: String? = nil, label: String? = nil, imageRef: String? = nil, completion: @escaping (_ data: CreateLabeledFirmwareResponse?, _ error: Error?) -> Void)
```

BETA: Create a labeled firmware image

Devices might need several different firmware images, depending on their configuration. Low-power devices usually have just a single firmware image but more complex devices might need several firmware images for their  subsystems. The firmware image must be uploaded prior to the call and the  returned data structure is included in the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let version = "version_example" // String |  (optional)
let label = "label_example" // String |  (optional)
let imageRef = "imageRef_example" // String |  (optional)

// BETA: Create a labeled firmware image
FotaAPI.createLabeledFirmware(collectionId: collectionId, version: version, label: label, imageRef: imageRef) { (response, error) in
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
 **version** | **String** |  | [optional] 
 **label** | **String** |  | [optional] 
 **imageRef** | **String** |  | [optional] 

### Return type

[**CreateLabeledFirmwareResponse**](CreateLabeledFirmwareResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
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

# **deleteLabeledImage**
```swift
    open class func deleteLabeledImage(collectionId: String, imageId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

BETA: Remove a tagged firmware image

Remove a tagged firmware image from the backing store and it's metadata

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let imageId = "imageId_example" // String | 

// BETA: Remove a tagged firmware image
FotaAPI.deleteLabeledImage(collectionId: collectionId, imageId: imageId) { (response, error) in
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

[**AnyCodable**](AnyCodable.md)

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

# **getImageState**
```swift
    open class func getImageState(collectionId: String, deviceId: String, completion: @escaping (_ data: GetImageStateResponse?, _ error: Error?) -> Void)
```

BETA: Get state for a single device

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 

// BETA: Get state for a single device
FotaAPI.getImageState(collectionId: collectionId, deviceId: deviceId) { (response, error) in
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

[**GetImageStateResponse**](GetImageStateResponse.md)

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

# **listImageStates**
```swift
    open class func listImageStates(collectionId: String, completion: @escaping (_ data: ListImageStatesResponse?, _ error: Error?) -> Void)
```

BETA: List image assignments plus states

List the status for the labeled firmware images in the collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 

// BETA: List image assignments plus states
FotaAPI.listImageStates(collectionId: collectionId) { (response, error) in
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

[**ListImageStatesResponse**](ListImageStatesResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listImageVersionHistory**
```swift
    open class func listImageVersionHistory(collectionId: String, deviceId: String, completion: @escaping (_ data: ListImageVersionHistoryResponse?, _ error: Error?) -> Void)
```

BETA: List version history for a single device

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let deviceId = "deviceId_example" // String | 

// BETA: List version history for a single device
FotaAPI.listImageVersionHistory(collectionId: collectionId, deviceId: deviceId) { (response, error) in
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

[**ListImageVersionHistoryResponse**](ListImageVersionHistoryResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLabeledFirmware**
```swift
    open class func listLabeledFirmware(collectionId: String, completion: @escaping (_ data: ListLabeledFirmwareResponse?, _ error: Error?) -> Void)
```

BETA: List the labeled firmware images for a collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 

// BETA: List the labeled firmware images for a collection
FotaAPI.listLabeledFirmware(collectionId: collectionId) { (response, error) in
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

[**ListLabeledFirmwareResponse**](ListLabeledFirmwareResponse.md)

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

# **retrieveFirmwareStats**
```swift
    open class func retrieveFirmwareStats(collectionId: String, imageId: String, completion: @escaping (_ data: FirmwareStats?, _ error: Error?) -> Void)
```

Retrieve firmware statistics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let imageId = "imageId_example" // String | 

// Retrieve firmware statistics
FotaAPI.retrieveFirmwareStats(collectionId: collectionId, imageId: imageId) { (response, error) in
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

[**FirmwareStats**](FirmwareStats.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFirmware**
```swift
    open class func updateFirmware(existingCollectionId: String, imageId: String, body: UpdateFirmwareBody, completion: @escaping (_ data: Firmware?, _ error: Error?) -> Void)
```

Update firmware

Only the version and tags fields can be updated. The other fields will be ignored.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let existingCollectionId = "existingCollectionId_example" // String | 
let imageId = "imageId_example" // String | 
let body = UpdateFirmwareBody(collectionId: "collectionId_example", version: "version_example", tags: "TODO", enabled: false) // UpdateFirmwareBody | 

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
 **body** | [**UpdateFirmwareBody**](UpdateFirmwareBody.md) |  | 

### Return type

[**Firmware**](Firmware.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


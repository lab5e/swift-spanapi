# CollectionsAPI

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spanBroadcastMessage**](CollectionsAPI.md#spanbroadcastmessage) | **POST** /collections/{collectionId}/to | Broadcast message
[**spanCreateCollection**](CollectionsAPI.md#spancreatecollection) | **POST** /collections | Create collection
[**spanDeleteCollection**](CollectionsAPI.md#spandeletecollection) | **DELETE** /collections/{collectionId} | Delete collection
[**spanListCollectionData**](CollectionsAPI.md#spanlistcollectiondata) | **GET** /collections/{collectionId}/data | Get payloads
[**spanListCollections**](CollectionsAPI.md#spanlistcollections) | **GET** /collections | List collections
[**spanRetrieveCollection**](CollectionsAPI.md#spanretrievecollection) | **GET** /collections/{collectionId} | Retrieve collection
[**spanUpdateCollection**](CollectionsAPI.md#spanupdatecollection) | **PATCH** /collections/{collectionId} | Update collection


# **spanBroadcastMessage**
```swift
    open class func spanBroadcastMessage(collectionId: String, body: BroadcastMessageRequest, completion: @escaping (_ data: MultiSendMessageResponse?, _ error: Error?) -> Void)
```

Broadcast message

Broadcast a message to all devices in the collection. This request will always succeed if the collection exists, even if there are one or more send errors. Individual errors are returned as an array of error messages in the response. Use equivalent to resource for devices to send a message to single device.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = BroadcastMessageRequest(collectionId: "collectionId_example", port: 123, payload: 123, transport: "transport_example", coapPath: "coapPath_example") // BroadcastMessageRequest | 

// Broadcast message
CollectionsAPI.spanBroadcastMessage(collectionId: collectionId, body: body) { (response, error) in
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
 **body** | [**BroadcastMessageRequest**](BroadcastMessageRequest.md) |  | 

### Return type

[**MultiSendMessageResponse**](MultiSendMessageResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanCreateCollection**
```swift
    open class func spanCreateCollection(body: Collection, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Create collection

The returned collection is the collection stored in the backend. Defaults have been set. There are no required fields in a collection

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let body = Collection(collectionId: "collectionId_example", teamId: "teamId_example", fieldMask: FieldMask(imsi: false, imei: false, msisdn: false, location: false), firmware: CollectionFirmware(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", management: CollectionFirmwareFirmwareManagement()), tags: "TODO") // Collection | 

// Create collection
CollectionsAPI.spanCreateCollection(body: body) { (response, error) in
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
 **body** | [**Collection**](Collection.md) |  | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanDeleteCollection**
```swift
    open class func spanDeleteCollection(collectionId: String, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Delete collection

You must have write access to the collection

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The ID of the collection you want to delete

// Delete collection
CollectionsAPI.spanDeleteCollection(collectionId: collectionId) { (response, error) in
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
 **collectionId** | **String** | The ID of the collection you want to delete | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanListCollectionData**
```swift
    open class func spanListCollectionData(collectionId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil, completion: @escaping (_ data: ListDataResponse?, _ error: Error?) -> Void)
```

Get payloads

List the data received from all the devices in the collection.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The collection ID requested. This is included in the request path.
let limit = 987 // Int | Limit the number of payloads to return. The default is 512. (optional)
let start = "start_example" // String | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. (optional)
let end = "end_example" // String | End of time range. The default is the current time stamp. Value is in milliseconds since epoch. (optional)
let offset = "offset_example" // String | The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. (optional)

// Get payloads
CollectionsAPI.spanListCollectionData(collectionId: collectionId, limit: limit, start: start, end: end, offset: offset) { (response, error) in
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
 **collectionId** | **String** | The collection ID requested. This is included in the request path. | 
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

# **spanListCollections**
```swift
    open class func spanListCollections(completion: @escaping (_ data: ListCollectionResponse?, _ error: Error?) -> Void)
```

List collections

Lists all the collections that one of your teams owns.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span


// List collections
CollectionsAPI.spanListCollections() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ListCollectionResponse**](ListCollectionResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanRetrieveCollection**
```swift
    open class func spanRetrieveCollection(collectionId: String, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Retrieve collection

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The collection ID of the collection you are requesting

// Retrieve collection
CollectionsAPI.spanRetrieveCollection(collectionId: collectionId) { (response, error) in
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
 **collectionId** | **String** | The collection ID of the collection you are requesting | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanUpdateCollection**
```swift
    open class func spanUpdateCollection(collectionId: String, body: Collection, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Update collection

You must have write access to the collection, ie. you must administer it

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The ID of the collection. This is assigned by the backend.
let body = Collection(collectionId: "collectionId_example", teamId: "teamId_example", fieldMask: FieldMask(imsi: false, imei: false, msisdn: false, location: false), firmware: CollectionFirmware(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", management: CollectionFirmwareFirmwareManagement()), tags: "TODO") // Collection | 

// Update collection
CollectionsAPI.spanUpdateCollection(collectionId: collectionId, body: body) { (response, error) in
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
 **collectionId** | **String** | The ID of the collection. This is assigned by the backend. | 
 **body** | [**Collection**](Collection.md) |  | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

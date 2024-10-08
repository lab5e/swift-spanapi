# CollectionsAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCollection**](CollectionsAPI.md#createcollection) | **POST** /span/collections | Create collection
[**deleteCollection**](CollectionsAPI.md#deletecollection) | **DELETE** /span/collections/{collectionId} | Delete collection
[**listCollectionData**](CollectionsAPI.md#listcollectiondata) | **GET** /span/collections/{collectionId}/data | Retrieve data from devices
[**listCollections**](CollectionsAPI.md#listcollections) | **GET** /span/collections | List collections
[**retrieveCollection**](CollectionsAPI.md#retrievecollection) | **GET** /span/collections/{collectionId} | Retrieve collection
[**retrieveCollectionStats**](CollectionsAPI.md#retrievecollectionstats) | **GET** /span/collections/{collectionId}/stats | Retrieve collection statistics
[**updateCollection**](CollectionsAPI.md#updatecollection) | **PATCH** /span/collections/{collectionId} | Update collection


# **createCollection**
```swift
    open class func createCollection(body: CreateCollectionRequest, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Create collection

Create a new collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let body = CreateCollectionRequest(teamId: "teamId_example", firmware: CollectionFirmware(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", management: FirmwareManagement()), tags: "TODO") // CreateCollectionRequest | Request object when creating a collection. The collect ID is assigned by the service.

// Create collection
CollectionsAPI.createCollection(body: body) { (response, error) in
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
 **body** | [**CreateCollectionRequest**](CreateCollectionRequest.md) | Request object when creating a collection. The collect ID is assigned by the service. | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCollection**
```swift
    open class func deleteCollection(collectionId: String, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Delete collection

Remove the collection. Devices, firmware images, outputs and all other related resources must be removed from the collection before it can be deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The ID of the collection you want to delete

// Delete collection
CollectionsAPI.deleteCollection(collectionId: collectionId) { (response, error) in
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

# **listCollectionData**
```swift
    open class func listCollectionData(collectionId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil, completion: @escaping (_ data: ListDataResponse?, _ error: Error?) -> Void)
```

Retrieve data from devices

Retrieve data sent by the devices in the collection. The maximum number of data points is 100.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The collection ID requested. This is included in the request path.
let limit = 987 // Int | Limit the number of payloads to return. The default is 512. (optional)
let start = "start_example" // String | Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. (optional)
let end = "end_example" // String | End of time range. The default is the current time stamp. Value is in milliseconds since epoch. (optional)
let offset = "offset_example" // String | The message offset based on the message ID. This parameter can't be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. (optional)

// Retrieve data from devices
CollectionsAPI.listCollectionData(collectionId: collectionId, limit: limit, start: start, end: end, offset: offset) { (response, error) in
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

# **listCollections**
```swift
    open class func listCollections(completion: @escaping (_ data: ListCollectionResponse?, _ error: Error?) -> Void)
```

List collections

Lists all the collections that one of your teams owns. The collections returned includes only the data on the collection and not the summary information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span


// List collections
CollectionsAPI.listCollections() { (response, error) in
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

# **retrieveCollection**
```swift
    open class func retrieveCollection(collectionId: String, upstream: Bool? = nil, downstream: Bool? = nil, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Retrieve collection

Retrieve collection information. This includes a list of the most recent messages in the inbox. The upstream and downstream parameters are optional and if set to true will include the timestamps for up to 100 messages up- and downstream for the last hour.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The collection ID of the collection you are requesting
let upstream = true // Bool |  (optional)
let downstream = true // Bool |  (optional)

// Retrieve collection
CollectionsAPI.retrieveCollection(collectionId: collectionId, upstream: upstream, downstream: downstream) { (response, error) in
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
 **upstream** | **Bool** |  | [optional] 
 **downstream** | **Bool** |  | [optional] 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCollectionStats**
```swift
    open class func retrieveCollectionStats(collectionId: String, completion: @escaping (_ data: CollectionStats?, _ error: Error?) -> Void)
```

Retrieve collection statistics

Retrieve statistics for the collection. This is the aggregated metrics for devices, outputs, firmware images, blobs and gateways in the collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The collection ID of the collection you are requesting

// Retrieve collection statistics
CollectionsAPI.retrieveCollectionStats(collectionId: collectionId) { (response, error) in
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

[**CollectionStats**](CollectionStats.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCollection**
```swift
    open class func updateCollection(collectionId: String, body: UpdateCollectionBody, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Update collection

Update a collection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | The ID of the collection. This is assigned by the backend.
let body = UpdateCollectionBody(teamId: "teamId_example", firmware: CollectionFirmware(currentFirmwareId: "currentFirmwareId_example", targetFirmwareId: "targetFirmwareId_example", management: FirmwareManagement()), tags: "TODO", enabled: false) // UpdateCollectionBody | 

// Update collection
CollectionsAPI.updateCollection(collectionId: collectionId, body: body) { (response, error) in
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
 **body** | [**UpdateCollectionBody**](UpdateCollectionBody.md) |  | 

### Return type

[**Collection**](Collection.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


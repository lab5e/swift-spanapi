# BlobsAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteBlob**](BlobsAPI.md#deleteblob) | **DELETE** /span/collections/{collectionId}/blobs/{blobId} | Remove a blob stored on a collection
[**listBlobs**](BlobsAPI.md#listblobs) | **GET** /span/collections/{collectionId}/blobs | List the blobs for a collection


# **deleteBlob**
```swift
    open class func deleteBlob(collectionId: String, blobId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Remove a blob stored on a collection

Remove a blob stored on the collection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let blobId = "blobId_example" // String | 

// Remove a blob stored on a collection
BlobsAPI.deleteBlob(collectionId: collectionId, blobId: blobId) { (response, error) in
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
 **blobId** | **String** |  | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlobs**
```swift
    open class func listBlobs(collectionId: String, limit: Int? = nil, completion: @escaping (_ data: ListBlobResponse?, _ error: Error?) -> Void)
```

List the blobs for a collection

Retrieve a list of all the blobs stored on this collection. Blobs are uploaded by the devices through one of the blob endpoints.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let limit = 987 // Int |  (optional)

// List the blobs for a collection
BlobsAPI.listBlobs(collectionId: collectionId, limit: limit) { (response, error) in
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
 **limit** | **Int** |  | [optional] 

### Return type

[**ListBlobResponse**](ListBlobResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


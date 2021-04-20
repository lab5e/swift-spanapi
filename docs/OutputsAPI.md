# OutputsAPI

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spanCreateOutput**](OutputsAPI.md#spancreateoutput) | **POST** /collections/{collectionId}/outputs | Create output
[**spanDeleteOutput**](OutputsAPI.md#spandeleteoutput) | **DELETE** /collections/{collectionId}/outputs/{outputId} | Delete output
[**spanListOutputs**](OutputsAPI.md#spanlistoutputs) | **GET** /collections/{collectionId}/outputs | List outputs
[**spanLogs**](OutputsAPI.md#spanlogs) | **GET** /collections/{collectionId}/outputs/{outputId}/logs | Output logs
[**spanRetrieveOutput**](OutputsAPI.md#spanretrieveoutput) | **GET** /collections/{collectionId}/outputs/{outputId} | Retrieve output
[**spanStatus**](OutputsAPI.md#spanstatus) | **GET** /collections/{collectionId}/outputs/{outputId}/status | Output status
[**spanUpdateOutput**](OutputsAPI.md#spanupdateoutput) | **PATCH** /collections/{collectionId}/outputs/{outputId} | Update output


# **spanCreateOutput**
```swift
    open class func spanCreateOutput(collectionId: String, body: Output, completion: @escaping (_ data: Output?, _ error: Error?) -> Void)
```

Create output

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = Output(outputId: "outputId_example", collectionId: "collectionId_example", type: OutputType(), config: OutputConfig(url: "url_example", basicAuthUser: "basicAuthUser_example", basicAuthPass: "basicAuthPass_example", customHeaderName: "customHeaderName_example", customHeaderValue: "customHeaderValue_example", host: "host_example", port: 123, key: "key_example", eventName: "eventName_example", asIsPayload: false, endpoint: "endpoint_example", disableCertCheck: false, username: "username_example", password: "password_example", clientId: "clientId_example", topicName: "topicName_example"), enabled: false, tags: "TODO") // Output | 

// Create output
OutputsAPI.spanCreateOutput(collectionId: collectionId, body: body) { (response, error) in
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
 **body** | [**Output**](Output.md) |  | 

### Return type

[**Output**](Output.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanDeleteOutput**
```swift
    open class func spanDeleteOutput(collectionId: String, outputId: String, completion: @escaping (_ data: Output?, _ error: Error?) -> Void)
```

Delete output

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 

// Delete output
OutputsAPI.spanDeleteOutput(collectionId: collectionId, outputId: outputId) { (response, error) in
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
 **outputId** | **String** |  | 

### Return type

[**Output**](Output.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanListOutputs**
```swift
    open class func spanListOutputs(collectionId: String, completion: @escaping (_ data: ListOutputResponse?, _ error: Error?) -> Void)
```

List outputs

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 

// List outputs
OutputsAPI.spanListOutputs(collectionId: collectionId) { (response, error) in
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

[**ListOutputResponse**](ListOutputResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanLogs**
```swift
    open class func spanLogs(collectionId: String, outputId: String, completion: @escaping (_ data: OutputLogResponse?, _ error: Error?) -> Void)
```

Output logs

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 

// Output logs
OutputsAPI.spanLogs(collectionId: collectionId, outputId: outputId) { (response, error) in
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
 **outputId** | **String** |  | 

### Return type

[**OutputLogResponse**](OutputLogResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanRetrieveOutput**
```swift
    open class func spanRetrieveOutput(collectionId: String, outputId: String, completion: @escaping (_ data: Output?, _ error: Error?) -> Void)
```

Retrieve output

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 

// Retrieve output
OutputsAPI.spanRetrieveOutput(collectionId: collectionId, outputId: outputId) { (response, error) in
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
 **outputId** | **String** |  | 

### Return type

[**Output**](Output.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanStatus**
```swift
    open class func spanStatus(collectionId: String, outputId: String, completion: @escaping (_ data: OutputStatusResponse?, _ error: Error?) -> Void)
```

Output status

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 

// Output status
OutputsAPI.spanStatus(collectionId: collectionId, outputId: outputId) { (response, error) in
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
 **outputId** | **String** |  | 

### Return type

[**OutputStatusResponse**](OutputStatusResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spanUpdateOutput**
```swift
    open class func spanUpdateOutput(collectionId: String, outputId: String, body: Output, completion: @escaping (_ data: Output?, _ error: Error?) -> Void)
```

Update output

Running outputs will be restarted if required. Note that the collection ID can't be changed on an existing output.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 
let body = Output(outputId: "outputId_example", collectionId: "collectionId_example", type: OutputType(), config: OutputConfig(url: "url_example", basicAuthUser: "basicAuthUser_example", basicAuthPass: "basicAuthPass_example", customHeaderName: "customHeaderName_example", customHeaderValue: "customHeaderValue_example", host: "host_example", port: 123, key: "key_example", eventName: "eventName_example", asIsPayload: false, endpoint: "endpoint_example", disableCertCheck: false, username: "username_example", password: "password_example", clientId: "clientId_example", topicName: "topicName_example"), enabled: false, tags: "TODO") // Output | 

// Update output
OutputsAPI.spanUpdateOutput(collectionId: collectionId, outputId: outputId, body: body) { (response, error) in
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
 **outputId** | **String** |  | 
 **body** | [**Output**](Output.md) |  | 

### Return type

[**Output**](Output.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


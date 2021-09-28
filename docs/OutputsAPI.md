# OutputsAPI

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOutput**](OutputsAPI.md#createoutput) | **POST** /collections/{collectionId}/outputs | Create output
[**deleteOutput**](OutputsAPI.md#deleteoutput) | **DELETE** /collections/{collectionId}/outputs/{outputId} | Delete output
[**listOutputs**](OutputsAPI.md#listoutputs) | **GET** /collections/{collectionId}/outputs | List outputs
[**logs**](OutputsAPI.md#logs) | **GET** /collections/{collectionId}/outputs/{outputId}/logs | Output logs
[**retrieveOutput**](OutputsAPI.md#retrieveoutput) | **GET** /collections/{collectionId}/outputs/{outputId} | Retrieve output
[**status**](OutputsAPI.md#status) | **GET** /collections/{collectionId}/outputs/{outputId}/status | Output status
[**updateOutput**](OutputsAPI.md#updateoutput) | **PATCH** /collections/{collectionId}/outputs/{outputId} | Update output


# **createOutput**
```swift
    open class func createOutput(collectionId: String, body: Output, completion: @escaping (_ data: Output?, _ error: Error?) -> Void)
```

Create output

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = Output(outputId: "outputId_example", collectionId: "collectionId_example", type: OutputType(), config: OutputConfig(url: "url_example", basicAuthUser: "basicAuthUser_example", basicAuthPass: "basicAuthPass_example", customHeaderName: "customHeaderName_example", customHeaderValue: "customHeaderValue_example", host: "host_example", port: 123, key: "key_example", eventName: "eventName_example", asIsPayload: false, endpoint: "endpoint_example", disableCertCheck: false, username: "username_example", password: "password_example", clientId: "clientId_example", topicName: "topicName_example", topicTemplate: 123, payloadFormat: "payloadFormat_example", payloadTemplate: 123), enabled: false, tags: "TODO") // Output | 

// Create output
OutputsAPI.createOutput(collectionId: collectionId, body: body) { (response, error) in
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

# **deleteOutput**
```swift
    open class func deleteOutput(collectionId: String, outputId: String, completion: @escaping (_ data: Output?, _ error: Error?) -> Void)
```

Delete output

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 

// Delete output
OutputsAPI.deleteOutput(collectionId: collectionId, outputId: outputId) { (response, error) in
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

# **listOutputs**
```swift
    open class func listOutputs(collectionId: String, completion: @escaping (_ data: ListOutputResponse?, _ error: Error?) -> Void)
```

List outputs

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 

// List outputs
OutputsAPI.listOutputs(collectionId: collectionId) { (response, error) in
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

# **logs**
```swift
    open class func logs(collectionId: String, outputId: String, completion: @escaping (_ data: OutputLogResponse?, _ error: Error?) -> Void)
```

Output logs

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 

// Output logs
OutputsAPI.logs(collectionId: collectionId, outputId: outputId) { (response, error) in
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

# **retrieveOutput**
```swift
    open class func retrieveOutput(collectionId: String, outputId: String, completion: @escaping (_ data: Output?, _ error: Error?) -> Void)
```

Retrieve output

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 

// Retrieve output
OutputsAPI.retrieveOutput(collectionId: collectionId, outputId: outputId) { (response, error) in
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

# **status**
```swift
    open class func status(collectionId: String, outputId: String, completion: @escaping (_ data: OutputStatusResponse?, _ error: Error?) -> Void)
```

Output status

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 

// Output status
OutputsAPI.status(collectionId: collectionId, outputId: outputId) { (response, error) in
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

# **updateOutput**
```swift
    open class func updateOutput(collectionId: String, outputId: String, body: Output, completion: @escaping (_ data: Output?, _ error: Error?) -> Void)
```

Update output

Running outputs will be restarted if required. Note that the collection ID can't be changed on an existing output.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let outputId = "outputId_example" // String | 
let body = Output(outputId: "outputId_example", collectionId: "collectionId_example", type: OutputType(), config: OutputConfig(url: "url_example", basicAuthUser: "basicAuthUser_example", basicAuthPass: "basicAuthPass_example", customHeaderName: "customHeaderName_example", customHeaderValue: "customHeaderValue_example", host: "host_example", port: 123, key: "key_example", eventName: "eventName_example", asIsPayload: false, endpoint: "endpoint_example", disableCertCheck: false, username: "username_example", password: "password_example", clientId: "clientId_example", topicName: "topicName_example", topicTemplate: 123, payloadFormat: "payloadFormat_example", payloadTemplate: 123), enabled: false, tags: "TODO") // Output | 

// Update output
OutputsAPI.updateOutput(collectionId: collectionId, outputId: outputId, body: body) { (response, error) in
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


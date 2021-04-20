# DatadumpAPI

All URIs are relative to *https://api.lab5e.com/span*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spanDataDump**](DatadumpAPI.md#spandatadump) | **POST** /datadump | Data dump


# **spanDataDump**
```swift
    open class func spanDataDump(body: DataDumpRequest, completion: @escaping (_ data: DataDumpResponse?, _ error: Error?) -> Void)
```

Data dump

Do a complete data dump of your data, devices, outputs and collections.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let body = DataDumpRequest(comment: "comment_example") // DataDumpRequest | 

// Data dump
DatadumpAPI.spanDataDump(body: body) { (response, error) in
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
 **body** | [**DataDumpRequest**](DataDumpRequest.md) |  | 

### Return type

[**DataDumpResponse**](DataDumpResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


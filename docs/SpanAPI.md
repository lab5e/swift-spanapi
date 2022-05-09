# SpanAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSystemInfo**](SpanAPI.md#getsysteminfo) | **GET** /span/system | System information


# **getSystemInfo**
```swift
    open class func getSystemInfo(completion: @escaping (_ data: SystemInfoResponse?, _ error: Error?) -> Void)
```

System information

Get system information. This will show the current version of the API that you are using.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span


// System information
SpanAPI.getSystemInfo() { (response, error) in
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

[**SystemInfoResponse**](SystemInfoResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


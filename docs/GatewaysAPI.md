# GatewaysAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listGateways**](GatewaysAPI.md#listgateways) | **GET** /span/networks/{networkId}/gateways | List gateways
[**listNetworks**](GatewaysAPI.md#listnetworks) | **GET** /span/networks | List networks
[**retrieveGateway**](GatewaysAPI.md#retrievegateway) | **GET** /span/networks/{networkId}/gateways/{gatewayId} | Retrieve gateway


# **listGateways**
```swift
    open class func listGateways(networkId: String, completion: @escaping (_ data: ListGatewayResponse?, _ error: Error?) -> Void)
```

List gateways

List the gatways for the network. Some of the gatways are built into Span and can't be deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let networkId = "networkId_example" // String | 

// List gateways
GatewaysAPI.listGateways(networkId: networkId) { (response, error) in
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
 **networkId** | **String** |  | 

### Return type

[**ListGatewayResponse**](ListGatewayResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNetworks**
```swift
    open class func listNetworks(completion: @escaping (_ data: ListNetworkResponse?, _ error: Error?) -> Void)
```

List networks

List networks available to the collection. This will include the built-in networks in Span.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span


// List networks
GatewaysAPI.listNetworks() { (response, error) in
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

[**ListNetworkResponse**](ListNetworkResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGateway**
```swift
    open class func retrieveGateway(networkId: String, gatewayId: String, completion: @escaping (_ data: Gateway?, _ error: Error?) -> Void)
```

Retrieve gateway

Get gateway information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let networkId = "networkId_example" // String | 
let gatewayId = "gatewayId_example" // String | 

// Retrieve gateway
GatewaysAPI.retrieveGateway(networkId: networkId, gatewayId: gatewayId) { (response, error) in
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
 **networkId** | **String** |  | 
 **gatewayId** | **String** |  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# GatewaysAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGateway**](GatewaysAPI.md#creategateway) | **POST** /span/collections/{collectionId}/gateways | Create gateway
[**deleteGateway**](GatewaysAPI.md#deletegateway) | **DELETE** /span/collections/{collectionId}/gateways/{gatewayId} | Delete gateway
[**gatewayCertificates**](GatewaysAPI.md#gatewaycertificates) | **GET** /span/collections/{collectionId}/gateways/{gatewayId}/certs | Get issued certificate(s) for gateway
[**listGateways**](GatewaysAPI.md#listgateways) | **GET** /span/collections/{collectionId}/gateways | List gateways
[**retrieveGateway**](GatewaysAPI.md#retrievegateway) | **GET** /span/collections/{collectionId}/gateways/{gatewayId} | Retrieve gateway
[**retrieveGatewayStats**](GatewaysAPI.md#retrievegatewaystats) | **GET** /span/collections/{collectionId}/gateways/{gatewayId}/stats | Retrieve gateway statistics
[**updateGateway**](GatewaysAPI.md#updategateway) | **PATCH** /span/collections/{existingCollectionId}/gateways/{gatewayId} | Update gateway


# **createGateway**
```swift
    open class func createGateway(collectionId: String, body: CreateGatewayRequest, completion: @escaping (_ data: Gateway?, _ error: Error?) -> Void)
```

Create gateway

Create a new gateway.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = CreateGateway_request(name: "name_example", type: GatewayType(), config: GatewayConfig(ciot: GatewayCIoTConfig(apn: "apn_example", udpEndpoint: "udpEndpoint_example", coapEndpoint: "coapEndpoint_example"), inet: GatewayInetConfig(dtlsEndpoint: "dtlsEndpoint_example", coapEndpoint: "coapEndpoint_example", mqttEndpoint: "mqttEndpoint_example"), user: GatewayCustomConfig(params: "TODO")), tags: "TODO") // CreateGatewayRequest | 

// Create gateway
GatewaysAPI.createGateway(collectionId: collectionId, body: body) { (response, error) in
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
 **body** | [**CreateGatewayRequest**](CreateGatewayRequest.md) |  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGateway**
```swift
    open class func deleteGateway(collectionId: String, gatewayId: String, completion: @escaping (_ data: Gateway?, _ error: Error?) -> Void)
```

Delete gateway

Remove a gateway from Span.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let gatewayId = "gatewayId_example" // String | 

// Delete gateway
GatewaysAPI.deleteGateway(collectionId: collectionId, gatewayId: gatewayId) { (response, error) in
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
 **gatewayId** | **String** |  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayCertificates**
```swift
    open class func gatewayCertificates(collectionId: String, gatewayId: String, completion: @escaping (_ data: GatewayCertificateResponse?, _ error: Error?) -> Void)
```

Get issued certificate(s) for gateway

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let gatewayId = "gatewayId_example" // String | 

// Get issued certificate(s) for gateway
GatewaysAPI.gatewayCertificates(collectionId: collectionId, gatewayId: gatewayId) { (response, error) in
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
 **gatewayId** | **String** |  | 

### Return type

[**GatewayCertificateResponse**](GatewayCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGateways**
```swift
    open class func listGateways(collectionId: String, completion: @escaping (_ data: ListGatewayResponse?, _ error: Error?) -> Void)
```

List gateways

List the user's gatways, including built-in gateways.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 

// List gateways
GatewaysAPI.listGateways(collectionId: collectionId) { (response, error) in
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

[**ListGatewayResponse**](ListGatewayResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGateway**
```swift
    open class func retrieveGateway(collectionId: String, gatewayId: String, completion: @escaping (_ data: Gateway?, _ error: Error?) -> Void)
```

Retrieve gateway

Get gateway information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let gatewayId = "gatewayId_example" // String | 

// Retrieve gateway
GatewaysAPI.retrieveGateway(collectionId: collectionId, gatewayId: gatewayId) { (response, error) in
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
 **gatewayId** | **String** |  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGatewayStats**
```swift
    open class func retrieveGatewayStats(collectionId: String, gatewayId: String, completion: @escaping (_ data: GatewayStats?, _ error: Error?) -> Void)
```

Retrieve gateway statistics

Get statistics for gateway

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let gatewayId = "gatewayId_example" // String | 

// Retrieve gateway statistics
GatewaysAPI.retrieveGatewayStats(collectionId: collectionId, gatewayId: gatewayId) { (response, error) in
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
 **gatewayId** | **String** |  | 

### Return type

[**GatewayStats**](GatewayStats.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGateway**
```swift
    open class func updateGateway(existingCollectionId: String, gatewayId: String, body: UpdateGatewayRequest, completion: @escaping (_ data: Gateway?, _ error: Error?) -> Void)
```

Update gateway

Update a gateway in Span

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let existingCollectionId = "existingCollectionId_example" // String | 
let gatewayId = "gatewayId_example" // String | 
let body = UpdateGateway_request(name: "name_example", collectionId: "collectionId_example", type: GatewayType(), config: GatewayConfig(ciot: GatewayCIoTConfig(apn: "apn_example", udpEndpoint: "udpEndpoint_example", coapEndpoint: "coapEndpoint_example"), inet: GatewayInetConfig(dtlsEndpoint: "dtlsEndpoint_example", coapEndpoint: "coapEndpoint_example", mqttEndpoint: "mqttEndpoint_example"), user: GatewayCustomConfig(params: "TODO")), tags: "TODO") // UpdateGatewayRequest | 

// Update gateway
GatewaysAPI.updateGateway(existingCollectionId: existingCollectionId, gatewayId: gatewayId, body: body) { (response, error) in
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
 **gatewayId** | **String** |  | 
 **body** | [**UpdateGatewayRequest**](UpdateGatewayRequest.md) |  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


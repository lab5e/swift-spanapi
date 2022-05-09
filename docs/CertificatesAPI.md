# CertificatesAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCertificate**](CertificatesAPI.md#createcertificate) | **POST** /span/collections/{collectionId}/certificates/create | Create certificate
[**retrieveCertificateChain**](CertificatesAPI.md#retrievecertificatechain) | **GET** /span/collections/{collectionId}/certificates | Get certificate chain
[**signCertificate**](CertificatesAPI.md#signcertificate) | **POST** /span/collections/{collectionId}/certificates/sign | Sign certificate
[**verifyCertificate**](CertificatesAPI.md#verifycertificate) | **POST** /span/collections/{collectionId}/certificates/verify | Verify certificate


# **createCertificate**
```swift
    open class func createCertificate(collectionId: String, body: CreateCertificateRequest, completion: @escaping (_ data: CreateCertificateResponse?, _ error: Error?) -> Void)
```

Create certificate

Create a new device or gateway (client) certificate for an internet-connected device. The devices will use this client certificate to authenticate when sending data via the Internet endpoint. This will create a X509 client certificate with an ECC public key. The key is not stored by the service so keep it in a secure place once it is downloaded. The returned certificate will be valid for 14 days. The key for the certificate is your own responsibility. The client certificate is used in both the TLS, DTLS and gRPC service endpoints.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = CreateCertificateRequest(gatewayId: "gatewayId_example", deviceId: "deviceId_example") // CreateCertificateRequest | 

// Create certificate
CertificatesAPI.createCertificate(collectionId: collectionId, body: body) { (response, error) in
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
 **body** | [**CreateCertificateRequest**](CreateCertificateRequest.md) |  | 

### Return type

[**CreateCertificateResponse**](CreateCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCertificateChain**
```swift
    open class func retrieveCertificateChain(collectionId: String, gatewayId: String? = nil, deviceId: String? = nil, completion: @escaping (_ data: CertificateChainResponse?, _ error: Error?) -> Void)
```

Get certificate chain

Get the certificate chain for the root CA and intermediate certificates used by the device, gateway and server certificates. It is highly recommended to verify the server certificate when sending data to avoid any man-in-the-middle attacks. This chain will contain all required certificates needed to verify the client certificate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let gatewayId = "gatewayId_example" // String |  (optional)
let deviceId = "deviceId_example" // String |  (optional)

// Get certificate chain
CertificatesAPI.retrieveCertificateChain(collectionId: collectionId, gatewayId: gatewayId, deviceId: deviceId) { (response, error) in
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
 **gatewayId** | **String** |  | [optional] 
 **deviceId** | **String** |  | [optional] 

### Return type

[**CertificateChainResponse**](CertificateChainResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signCertificate**
```swift
    open class func signCertificate(collectionId: String, body: SignCertificateRequest, completion: @escaping (_ data: SignCertificateResponse?, _ error: Error?) -> Void)
```

Sign certificate

Sign a device or gateway (aka client) certificate. The certificate is a X509 Certificate signing request PEM encoded. The certificate will be valid for 14 days and must be renewed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = SignCertificateRequest(gatewayId: "gatewayId_example", deviceId: "deviceId_example", csr: 123) // SignCertificateRequest | 

// Sign certificate
CertificatesAPI.signCertificate(collectionId: collectionId, body: body) { (response, error) in
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
 **body** | [**SignCertificateRequest**](SignCertificateRequest.md) |  | 

### Return type

[**SignCertificateResponse**](SignCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyCertificate**
```swift
    open class func verifyCertificate(collectionId: String, body: VerifyCertificateRequest, completion: @escaping (_ data: VerifyCertificateResponse?, _ error: Error?) -> Void)
```

Verify certificate

Verify client certificate. If a client certificate fails it can be tricky to pinpoint exactly *why* the certificate isn't accepted. This resource validates the client certificate and returns the error in plain text.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Span

let collectionId = "collectionId_example" // String | 
let body = VerifyCertificateRequest(gatewayId: "gatewayId_example", deviceId: "deviceId_example", certificate: 123) // VerifyCertificateRequest | 

// Verify certificate
CertificatesAPI.verifyCertificate(collectionId: collectionId, body: body) { (response, error) in
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
 **body** | [**VerifyCertificateRequest**](VerifyCertificateRequest.md) |  | 

### Return type

[**VerifyCertificateResponse**](VerifyCertificateResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


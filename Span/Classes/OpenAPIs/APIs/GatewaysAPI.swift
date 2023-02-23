//
// GatewaysAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GatewaysAPI {

    /**
     Create gateway
     
     - parameter collectionId: (path)  
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createGateway(collectionId: String, body: InlineObject, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Gateway?, _ error: Error?) -> Void)) -> RequestTask {
        return createGatewayWithRequestBuilder(collectionId: collectionId, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create gateway
     - POST /span/collections/{collectionId}/gateways
     - Create a new gateway.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path)  
     - parameter body: (body)  
     - returns: RequestBuilder<Gateway> 
     */
    open class func createGatewayWithRequestBuilder(collectionId: String, body: InlineObject) -> RequestBuilder<Gateway> {
        var localVariablePath = "/span/collections/{collectionId}/gateways"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Gateway>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete gateway
     
     - parameter collectionId: (path)  
     - parameter gatewayId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteGateway(collectionId: String, gatewayId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Gateway?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteGatewayWithRequestBuilder(collectionId: collectionId, gatewayId: gatewayId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete gateway
     - DELETE /span/collections/{collectionId}/gateways/{gatewayId}
     - Remove a gateway from Span.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path)  
     - parameter gatewayId: (path)  
     - returns: RequestBuilder<Gateway> 
     */
    open class func deleteGatewayWithRequestBuilder(collectionId: String, gatewayId: String) -> RequestBuilder<Gateway> {
        var localVariablePath = "/span/collections/{collectionId}/gateways/{gatewayId}"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let gatewayIdPreEscape = "\(APIHelper.mapValueToPathItem(gatewayId))"
        let gatewayIdPostEscape = gatewayIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gatewayId}", with: gatewayIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Gateway>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get issued certificate(s) for gateway
     
     - parameter collectionId: (path)  
     - parameter gatewayId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func gatewayCertificates(collectionId: String, gatewayId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: GatewayCertificateResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return gatewayCertificatesWithRequestBuilder(collectionId: collectionId, gatewayId: gatewayId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get issued certificate(s) for gateway
     - GET /span/collections/{collectionId}/gateways/{gatewayId}/certs
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path)  
     - parameter gatewayId: (path)  
     - returns: RequestBuilder<GatewayCertificateResponse> 
     */
    open class func gatewayCertificatesWithRequestBuilder(collectionId: String, gatewayId: String) -> RequestBuilder<GatewayCertificateResponse> {
        var localVariablePath = "/span/collections/{collectionId}/gateways/{gatewayId}/certs"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let gatewayIdPreEscape = "\(APIHelper.mapValueToPathItem(gatewayId))"
        let gatewayIdPostEscape = gatewayIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gatewayId}", with: gatewayIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GatewayCertificateResponse>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List gateways
     
     - parameter collectionId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listGateways(collectionId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: ListGatewayResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return listGatewaysWithRequestBuilder(collectionId: collectionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List gateways
     - GET /span/collections/{collectionId}/gateways
     - List the user's gatways, including built-in gateways.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path)  
     - returns: RequestBuilder<ListGatewayResponse> 
     */
    open class func listGatewaysWithRequestBuilder(collectionId: String) -> RequestBuilder<ListGatewayResponse> {
        var localVariablePath = "/span/collections/{collectionId}/gateways"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListGatewayResponse>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Retrieve gateway
     
     - parameter collectionId: (path)  
     - parameter gatewayId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func retrieveGateway(collectionId: String, gatewayId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Gateway?, _ error: Error?) -> Void)) -> RequestTask {
        return retrieveGatewayWithRequestBuilder(collectionId: collectionId, gatewayId: gatewayId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve gateway
     - GET /span/collections/{collectionId}/gateways/{gatewayId}
     - Get gateway information
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path)  
     - parameter gatewayId: (path)  
     - returns: RequestBuilder<Gateway> 
     */
    open class func retrieveGatewayWithRequestBuilder(collectionId: String, gatewayId: String) -> RequestBuilder<Gateway> {
        var localVariablePath = "/span/collections/{collectionId}/gateways/{gatewayId}"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let gatewayIdPreEscape = "\(APIHelper.mapValueToPathItem(gatewayId))"
        let gatewayIdPostEscape = gatewayIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gatewayId}", with: gatewayIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Gateway>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update gateway
     
     - parameter existingCollectionId: (path)  
     - parameter gatewayId: (path)  
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateGateway(existingCollectionId: String, gatewayId: String, body: InlineObject1, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Gateway?, _ error: Error?) -> Void)) -> RequestTask {
        return updateGatewayWithRequestBuilder(existingCollectionId: existingCollectionId, gatewayId: gatewayId, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update gateway
     - PATCH /span/collections/{existingCollectionId}/gateways/{gatewayId}
     - Update a gateway in Span
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter existingCollectionId: (path)  
     - parameter gatewayId: (path)  
     - parameter body: (body)  
     - returns: RequestBuilder<Gateway> 
     */
    open class func updateGatewayWithRequestBuilder(existingCollectionId: String, gatewayId: String, body: InlineObject1) -> RequestBuilder<Gateway> {
        var localVariablePath = "/span/collections/{existingCollectionId}/gateways/{gatewayId}"
        let existingCollectionIdPreEscape = "\(APIHelper.mapValueToPathItem(existingCollectionId))"
        let existingCollectionIdPostEscape = existingCollectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{existingCollectionId}", with: existingCollectionIdPostEscape, options: .literal, range: nil)
        let gatewayIdPreEscape = "\(APIHelper.mapValueToPathItem(gatewayId))"
        let gatewayIdPostEscape = gatewayIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{gatewayId}", with: gatewayIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Gateway>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
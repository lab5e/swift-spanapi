//
// CollectionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CollectionsAPI {

    /**
     Create collection
     
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createCollection(body: CreateCollectionRequest, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Collection?, _ error: Error?) -> Void)) -> RequestTask {
        return createCollectionWithRequestBuilder(body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create collection
     - POST /span/collections
     - Create a new collection
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter body: (body)  
     - returns: RequestBuilder<Collection> 
     */
    open class func createCollectionWithRequestBuilder(body: CreateCollectionRequest) -> RequestBuilder<Collection> {
        let localVariablePath = "/span/collections"
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Collection>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete collection
     
     - parameter collectionId: (path) The ID of the collection you want to delete 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteCollection(collectionId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Collection?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteCollectionWithRequestBuilder(collectionId: collectionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete collection
     - DELETE /span/collections/{collectionId}
     - Remove the collection. Devices, firmware images, outputs and all other related resources must be removed from the collection before it can be deleted.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path) The ID of the collection you want to delete 
     - returns: RequestBuilder<Collection> 
     */
    open class func deleteCollectionWithRequestBuilder(collectionId: String) -> RequestBuilder<Collection> {
        var localVariablePath = "/span/collections/{collectionId}"
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

        let localVariableRequestBuilder: RequestBuilder<Collection>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Retrieve data from devices
     
     - parameter collectionId: (path) The collection ID requested. This is included in the request path. 
     - parameter limit: (query) Limit the number of payloads to return. The default is 512. (optional)
     - parameter start: (query) Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. (optional)
     - parameter end: (query) End of time range. The default is the current time stamp. Value is in milliseconds since epoch. (optional)
     - parameter offset: (query) The message offset based on the message ID. This parameter can&#39;t be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listCollectionData(collectionId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: ListDataResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return listCollectionDataWithRequestBuilder(collectionId: collectionId, limit: limit, start: start, end: end, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve data from devices
     - GET /span/collections/{collectionId}/data
     - Retrieve data sent by the devices in the collection. The maximum number of data points is 100.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path) The collection ID requested. This is included in the request path. 
     - parameter limit: (query) Limit the number of payloads to return. The default is 512. (optional)
     - parameter start: (query) Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. (optional)
     - parameter end: (query) End of time range. The default is the current time stamp. Value is in milliseconds since epoch. (optional)
     - parameter offset: (query) The message offset based on the message ID. This parameter can&#39;t be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. (optional)
     - returns: RequestBuilder<ListDataResponse> 
     */
    open class func listCollectionDataWithRequestBuilder(collectionId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil) -> RequestBuilder<ListDataResponse> {
        var localVariablePath = "/span/collections/{collectionId}/data"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(),
            "start": start?.encodeToJSON(),
            "end": end?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListDataResponse>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List collections
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listCollections(apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: ListCollectionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return listCollectionsWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List collections
     - GET /span/collections
     - Lists all the collections that one of your teams owns.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - returns: RequestBuilder<ListCollectionResponse> 
     */
    open class func listCollectionsWithRequestBuilder() -> RequestBuilder<ListCollectionResponse> {
        let localVariablePath = "/span/collections"
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListCollectionResponse>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Retrieve collection
     
     - parameter collectionId: (path) The collection ID of the collection you are requesting 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func retrieveCollection(collectionId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Collection?, _ error: Error?) -> Void)) -> RequestTask {
        return retrieveCollectionWithRequestBuilder(collectionId: collectionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve collection
     - GET /span/collections/{collectionId}
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path) The collection ID of the collection you are requesting 
     - returns: RequestBuilder<Collection> 
     */
    open class func retrieveCollectionWithRequestBuilder(collectionId: String) -> RequestBuilder<Collection> {
        var localVariablePath = "/span/collections/{collectionId}"
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

        let localVariableRequestBuilder: RequestBuilder<Collection>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update collection
     
     - parameter collectionId: (path) The ID of the collection. This is assigned by the backend. 
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateCollection(collectionId: String, body: UpdateCollectionRequest, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Collection?, _ error: Error?) -> Void)) -> RequestTask {
        return updateCollectionWithRequestBuilder(collectionId: collectionId, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update collection
     - PATCH /span/collections/{collectionId}
     - Update a collection.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path) The ID of the collection. This is assigned by the backend. 
     - parameter body: (body)  
     - returns: RequestBuilder<Collection> 
     */
    open class func updateCollectionWithRequestBuilder(collectionId: String, body: UpdateCollectionRequest) -> RequestBuilder<Collection> {
        var localVariablePath = "/span/collections/{collectionId}"
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

        let localVariableRequestBuilder: RequestBuilder<Collection>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}

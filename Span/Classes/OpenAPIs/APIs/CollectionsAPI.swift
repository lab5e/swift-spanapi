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
     
     - parameter body: (body) Request object when creating a collection. The collect ID is assigned by the service. 
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
       - type: apiKey X-API-Token (HEADER)
       - name: APIToken
     - parameter body: (body) Request object when creating a collection. The collect ID is assigned by the service. 
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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
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
       - type: apiKey X-API-Token (HEADER)
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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
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
       - type: apiKey X-API-Token (HEADER)
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
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: false),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: false),
            "end": (wrappedValue: end?.encodeToJSON(), isExplode: false),
            "offset": (wrappedValue: offset?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListDataResponse>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
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
     - Lists all the collections that one of your teams owns. The collections returned includes only the data on the collection and not the summary information
     - API Key:
       - type: apiKey X-API-Token (HEADER)
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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Retrieve collection
     
     - parameter collectionId: (path) The collection ID of the collection you are requesting 
     - parameter upstream: (query)  (optional)
     - parameter downstream: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func retrieveCollection(collectionId: String, upstream: Bool? = nil, downstream: Bool? = nil, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Collection?, _ error: Error?) -> Void)) -> RequestTask {
        return retrieveCollectionWithRequestBuilder(collectionId: collectionId, upstream: upstream, downstream: downstream).execute(apiResponseQueue) { result in
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
     - Retrieve collection information. This includes a list of the most recent messages in the inbox. The upstream and downstream parameters are optional and if set to true will include the timestamps for up to 100 messages up- and downstream for the last hour.
     - API Key:
       - type: apiKey X-API-Token (HEADER)
       - name: APIToken
     - parameter collectionId: (path) The collection ID of the collection you are requesting 
     - parameter upstream: (query)  (optional)
     - parameter downstream: (query)  (optional)
     - returns: RequestBuilder<Collection> 
     */
    open class func retrieveCollectionWithRequestBuilder(collectionId: String, upstream: Bool? = nil, downstream: Bool? = nil) -> RequestBuilder<Collection> {
        var localVariablePath = "/span/collections/{collectionId}"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = SpanAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "upstream": (wrappedValue: upstream?.encodeToJSON(), isExplode: false),
            "downstream": (wrappedValue: downstream?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Collection>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Retrieve collection statistics
     
     - parameter collectionId: (path) The collection ID of the collection you are requesting 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func retrieveCollectionStats(collectionId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionStats?, _ error: Error?) -> Void)) -> RequestTask {
        return retrieveCollectionStatsWithRequestBuilder(collectionId: collectionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve collection statistics
     - GET /span/collections/{collectionId}/stats
     - Retrieve statistics for the collection. This is the aggregated metrics for devices, outputs, firmware images, blobs and gateways in the collection
     - API Key:
       - type: apiKey X-API-Token (HEADER)
       - name: APIToken
     - parameter collectionId: (path) The collection ID of the collection you are requesting 
     - returns: RequestBuilder<CollectionStats> 
     */
    open class func retrieveCollectionStatsWithRequestBuilder(collectionId: String) -> RequestBuilder<CollectionStats> {
        var localVariablePath = "/span/collections/{collectionId}/stats"
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

        let localVariableRequestBuilder: RequestBuilder<CollectionStats>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update collection
     
     - parameter collectionId: (path) The ID of the collection. This is assigned by the backend. 
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateCollection(collectionId: String, body: UpdateCollectionBody, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Collection?, _ error: Error?) -> Void)) -> RequestTask {
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
       - type: apiKey X-API-Token (HEADER)
       - name: APIToken
     - parameter collectionId: (path) The ID of the collection. This is assigned by the backend. 
     - parameter body: (body)  
     - returns: RequestBuilder<Collection> 
     */
    open class func updateCollectionWithRequestBuilder(collectionId: String, body: UpdateCollectionBody) -> RequestBuilder<Collection> {
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

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}

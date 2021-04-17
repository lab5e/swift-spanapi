//
// DevicesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class DevicesAPI {
    /**
     Create device
     
     - parameter collectionId: (path) This is the containing collection 
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func spanCreateDevice(collectionId: String, body: Device, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Device?, _ error: Error?) -> Void)) {
        spanCreateDeviceWithRequestBuilder(collectionId: collectionId, body: body).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create device
     - POST /collections/{collectionId}/devices
     - Create a new device. This will add a device to the collection. You must have write access to the collection.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path) This is the containing collection 
     - parameter body: (body)  
     - returns: RequestBuilder<Device> 
     */
    open class func spanCreateDeviceWithRequestBuilder(collectionId: String, body: Device) -> RequestBuilder<Device> {
        var path = "/collections/{collectionId}/devices"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let URLString = SpanAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Device>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Remove device
     
     - parameter collectionId: (path)  
     - parameter deviceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func spanDeleteDevice(collectionId: String, deviceId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Device?, _ error: Error?) -> Void)) {
        spanDeleteDeviceWithRequestBuilder(collectionId: collectionId, deviceId: deviceId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove device
     - DELETE /collections/{collectionId}/devices/{deviceId}
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path)  
     - parameter deviceId: (path)  
     - returns: RequestBuilder<Device> 
     */
    open class func spanDeleteDeviceWithRequestBuilder(collectionId: String, deviceId: String) -> RequestBuilder<Device> {
        var path = "/collections/{collectionId}/devices/{deviceId}"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{deviceId}", with: deviceIdPostEscape, options: .literal, range: nil)
        let URLString = SpanAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Device>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get payloads
     
     - parameter collectionId: (path) The collection ID. This is included in the request path. 
     - parameter deviceId: (path) The device ID. This is included in the request path. 
     - parameter limit: (query) Limit the number of payloads to return. The default is 512. (optional)
     - parameter start: (query) Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. (optional)
     - parameter end: (query) End of time range. The default is the current time stamp. Value is in milliseconds since epoch. (optional)
     - parameter offset: (query) The message offset based on the message ID. This parameter can&#39;t be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func spanListDeviceData(collectionId: String, deviceId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: ListDataResponse?, _ error: Error?) -> Void)) {
        spanListDeviceDataWithRequestBuilder(collectionId: collectionId, deviceId: deviceId, limit: limit, start: start, end: end, offset: offset).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get payloads
     - GET /collections/{collectionId}/devices/{deviceId}/data
     - List the data received from the device. Use the query parameters to control what data you retrieve.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path) The collection ID. This is included in the request path. 
     - parameter deviceId: (path) The device ID. This is included in the request path. 
     - parameter limit: (query) Limit the number of payloads to return. The default is 512. (optional)
     - parameter start: (query) Start of time range. The default is 24 hours ago. Value is in milliseconds since epoch. (optional)
     - parameter end: (query) End of time range. The default is the current time stamp. Value is in milliseconds since epoch. (optional)
     - parameter offset: (query) The message offset based on the message ID. This parameter can&#39;t be combined with the start and end parameters. If no parameter is set the first N messages will be returned. If this parameter is set the next N messages (from newest to oldest) with message ID less than the offset will be returned. (optional)
     - returns: RequestBuilder<ListDataResponse> 
     */
    open class func spanListDeviceDataWithRequestBuilder(collectionId: String, deviceId: String, limit: Int? = nil, start: String? = nil, end: String? = nil, offset: String? = nil) -> RequestBuilder<ListDataResponse> {
        var path = "/collections/{collectionId}/devices/{deviceId}/data"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{deviceId}", with: deviceIdPostEscape, options: .literal, range: nil)
        let URLString = SpanAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(),
            "start": start?.encodeToJSON(),
            "end": end?.encodeToJSON(),
            "offset": offset?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ListDataResponse>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     List devices
     
     - parameter collectionId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func spanListDevices(collectionId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: ListDevicesResponse?, _ error: Error?) -> Void)) {
        spanListDevicesWithRequestBuilder(collectionId: collectionId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List devices
     - GET /collections/{collectionId}/devices
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path)  
     - returns: RequestBuilder<ListDevicesResponse> 
     */
    open class func spanListDevicesWithRequestBuilder(collectionId: String) -> RequestBuilder<ListDevicesResponse> {
        var path = "/collections/{collectionId}/devices"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let URLString = SpanAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ListDevicesResponse>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Retrieve device
     
     - parameter collectionId: (path)  
     - parameter deviceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func spanRetrieveDevice(collectionId: String, deviceId: String, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Device?, _ error: Error?) -> Void)) {
        spanRetrieveDeviceWithRequestBuilder(collectionId: collectionId, deviceId: deviceId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve device
     - GET /collections/{collectionId}/devices/{deviceId}
     - Retrieve a single device
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path)  
     - parameter deviceId: (path)  
     - returns: RequestBuilder<Device> 
     */
    open class func spanRetrieveDeviceWithRequestBuilder(collectionId: String, deviceId: String) -> RequestBuilder<Device> {
        var path = "/collections/{collectionId}/devices/{deviceId}"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{deviceId}", with: deviceIdPostEscape, options: .literal, range: nil)
        let URLString = SpanAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Device>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Send message
     
     - parameter collectionId: (path)  
     - parameter deviceId: (path)  
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func spanSendMessage(collectionId: String, deviceId: String, body: SendMessageRequest, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Any?, _ error: Error?) -> Void)) {
        spanSendMessageWithRequestBuilder(collectionId: collectionId, deviceId: deviceId, body: body).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Send message
     - POST /collections/{collectionId}/devices/{deviceId}/to
     - Send a message to the device
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter collectionId: (path)  
     - parameter deviceId: (path)  
     - parameter body: (body)  
     - returns: RequestBuilder<Any> 
     */
    open class func spanSendMessageWithRequestBuilder(collectionId: String, deviceId: String, body: SendMessageRequest) -> RequestBuilder<Any> {
        var path = "/collections/{collectionId}/devices/{deviceId}/to"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{deviceId}", with: deviceIdPostEscape, options: .literal, range: nil)
        let URLString = SpanAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Any>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update device
     
     - parameter existingCollectionId: (path)  
     - parameter deviceId: (path)  
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func spanUpdateDevice(existingCollectionId: String, deviceId: String, body: UpdateDeviceRequest, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: Device?, _ error: Error?) -> Void)) {
        spanUpdateDeviceWithRequestBuilder(existingCollectionId: existingCollectionId, deviceId: deviceId, body: body).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update device
     - PATCH /collections/{existingCollectionId}/devices/{deviceId}
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter existingCollectionId: (path)  
     - parameter deviceId: (path)  
     - parameter body: (body)  
     - returns: RequestBuilder<Device> 
     */
    open class func spanUpdateDeviceWithRequestBuilder(existingCollectionId: String, deviceId: String, body: UpdateDeviceRequest) -> RequestBuilder<Device> {
        var path = "/collections/{existingCollectionId}/devices/{deviceId}"
        let existingCollectionIdPreEscape = "\(APIHelper.mapValueToPathItem(existingCollectionId))"
        let existingCollectionIdPostEscape = existingCollectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{existingCollectionId}", with: existingCollectionIdPostEscape, options: .literal, range: nil)
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{deviceId}", with: deviceIdPostEscape, options: .literal, range: nil)
        let URLString = SpanAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Device>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}

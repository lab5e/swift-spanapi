//
// DatadumpAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class DatadumpAPI {
    /**
     Data dump
     
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func spanDataDump(body: Any, apiResponseQueue: DispatchQueue = SpanAPI.apiResponseQueue, completion: @escaping ((_ data: DataDumpResponse?, _ error: Error?) -> Void)) {
        spanDataDumpWithRequestBuilder(body: body).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Data dump
     - POST /datadump
     - Do a complete data dump of your data, devices, outputs and collections.
     - API Key:
       - type: apiKey X-API-Token 
       - name: APIToken
     - parameter body: (body)  
     - returns: RequestBuilder<DataDumpResponse> 
     */
    open class func spanDataDumpWithRequestBuilder(body: Any) -> RequestBuilder<DataDumpResponse> {
        let path = "/datadump"
        let URLString = SpanAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DataDumpResponse>.Type = SpanAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
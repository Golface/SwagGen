//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Place {

    /** Gets all places that matches the given query */
    public enum PlaceSearch {

        public static let service = APIService<Response>(id: "Place_Search", tag: "Place", method: "GET", path: "/Place/Search", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The name of the place, you can use the /Place/Types/{types} endpoint to get a list of places for a given type including their names. */
                public var name: String

                /** A comma-separated list of the types to return. Max. approx 12 types. */
                public var types: [String]?

                public init(
                    name: String, 
                    types: [String]? = nil
                ) {
                    self.name = name
                    self.types = types
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: PlaceSearch.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(name: String, types: [String]? = nil) {
                let options = Options(name: name, types: types)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                params["name"] = options.name
                if let types = options.types?.joined(separator: ",") {
                  params["types"] = types
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [Place]

            /** OK */
            case status200([Place])

            public var success: [Place]? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode([Place].self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}

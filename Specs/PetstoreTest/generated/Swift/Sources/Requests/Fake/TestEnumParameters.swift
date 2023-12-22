//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension PetstoreTest.Fake {

    /** To test enum parameters */
    public enum TestEnumParameters {

        public static let service = APIService<Response>(id: "testEnumParameters", tag: "fake", method: "GET", path: "/fake", hasBody: true, securityRequirements: [])

        /** Header parameter enum test (string array) */
        public enum EnumHeaderStringArray: String, Codable, Equatable, CaseIterable {
            case greaterThan = ">"
            case dollar = "$"
        }

        /** Header parameter enum test (string) */
        public enum EnumHeaderString: String, Codable, Equatable, CaseIterable {
            case abc = "_abc"
            case efg = "-efg"
            case xyz = "(xyz)"
        }

        /** Query parameter enum test (string array) */
        public enum EnumQueryStringArray: String, Codable, Equatable, CaseIterable {
            case greaterThan = ">"
            case dollar = "$"
        }

        /** Query parameter enum test (string) */
        public enum EnumQueryString: String, Codable, Equatable, CaseIterable {
            case abc = "_abc"
            case efg = "-efg"
            case xyz = "(xyz)"
        }

        /** Query parameter enum test (double) */
        public enum EnumQueryInteger: Int, Codable, Equatable, CaseIterable {
            case _1 = 1
            case negative2 = -2
        }

        /** Form parameter enum test (string) */
        public enum EnumFormString: String, Codable, Equatable, CaseIterable {
            case abc = "_abc"
            case efg = "-efg"
            case xyz = "(xyz)"
        }

        /** Form parameter enum test (string array) */
        public enum EnumFormStringArray: String, Codable, Equatable, CaseIterable {
            case greaterThan = ">"
            case dollar = "$"
        }

        /** Query parameter enum test (double) */
        public enum EnumQueryDouble: Double, Codable, Equatable, CaseIterable {
            case _11 = 1.1
            case negative12 = -1.2
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Header parameter enum test (string array) */
                public var enumHeaderStringArray: [EnumHeaderStringArray]?

                /** Header parameter enum test (string) */
                public var enumHeaderString: EnumHeaderString?

                /** Query parameter enum test (string array) */
                public var enumQueryStringArray: [EnumQueryStringArray]?

                /** Query parameter enum test (string) */
                public var enumQueryString: EnumQueryString?

                /** Query parameter enum test (double) */
                public var enumQueryInteger: EnumQueryInteger?

                /** Form parameter enum test (string) */
                public var enumFormString: EnumFormString?

                /** Form parameter enum test (string array) */
                public var enumFormStringArray: [EnumFormStringArray]?

                /** Query parameter enum test (double) */
                public var enumQueryDouble: EnumQueryDouble?

                public init(
                    enumHeaderStringArray: [EnumHeaderStringArray]? = nil, 
                    enumHeaderString: EnumHeaderString? = nil, 
                    enumQueryStringArray: [EnumQueryStringArray]? = nil, 
                    enumQueryString: EnumQueryString? = nil, 
                    enumQueryInteger: EnumQueryInteger? = nil, 
                    enumFormString: EnumFormString? = nil, 
                    enumFormStringArray: [EnumFormStringArray]? = nil, 
                    enumQueryDouble: EnumQueryDouble? = nil
                ) {
                    self.enumHeaderStringArray = enumHeaderStringArray
                    self.enumHeaderString = enumHeaderString
                    self.enumQueryStringArray = enumQueryStringArray
                    self.enumQueryString = enumQueryString
                    self.enumQueryInteger = enumQueryInteger
                    self.enumFormString = enumFormString
                    self.enumFormStringArray = enumFormStringArray
                    self.enumQueryDouble = enumQueryDouble
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: TestEnumParameters.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(enumHeaderStringArray: [EnumHeaderStringArray]? = nil, enumHeaderString: EnumHeaderString? = nil, enumQueryStringArray: [EnumQueryStringArray]? = nil, enumQueryString: EnumQueryString? = nil, enumQueryInteger: EnumQueryInteger? = nil, enumFormString: EnumFormString? = nil, enumFormStringArray: [EnumFormStringArray]? = nil, enumQueryDouble: EnumQueryDouble? = nil) {
                let options = Options(enumHeaderStringArray: enumHeaderStringArray, enumHeaderString: enumHeaderString, enumQueryStringArray: enumQueryStringArray, enumQueryString: enumQueryString, enumQueryInteger: enumQueryInteger, enumFormString: enumFormString, enumFormStringArray: enumFormStringArray, enumQueryDouble: enumQueryDouble)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let enumQueryStringArray = options.enumQueryStringArray?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["enum_query_string_array"] = enumQueryStringArray
                }
                if let enumQueryString = options.enumQueryString?.encode() {
                  params["enum_query_string"] = enumQueryString
                }
                if let enumQueryInteger = options.enumQueryInteger?.encode() {
                  params["enum_query_integer"] = enumQueryInteger
                }
                return params
            }

            public override var formParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let enumFormString = options.enumFormString?.encode() {
                  params["enum_form_string"] = enumFormString
                }
                if let enumFormStringArray = options.enumFormStringArray?.encode() {
                  params["enum_form_string_array"] = enumFormStringArray
                }
                if let enumQueryDouble = options.enumQueryDouble?.encode() {
                  params["enum_query_double"] = enumQueryDouble
                }
                return params
            }

            override var headerParameters: [String: String] {
                var headers: [String: String] = [:]
                if let enumHeaderStringArray = options.enumHeaderStringArray?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  headers["enum_header_string_array"] = String(describing: enumHeaderStringArray)
                }
                if let enumHeaderString = options.enumHeaderString?.encode() {
                  headers["enum_header_string"] = String(describing: enumHeaderString)
                }
                return headers
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Invalid request */
            case status400

            /** Not found */
            case status404

            public var success: Void? {
                switch self {
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status400: return 400
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status400: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 400: self = .status400
                case 404: self = .status404
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

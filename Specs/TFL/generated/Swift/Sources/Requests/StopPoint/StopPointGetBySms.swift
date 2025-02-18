//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.StopPoint {

    /** Gets a StopPoint for a given sms code. */
    public enum StopPointGetBySms {

        public static let service = APIService<Response>(id: "StopPoint_GetBySms", tag: "StopPoint", method: "GET", path: "/StopPoint/Sms/{id}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A 5-digit Countdown Bus Stop Code e.g. 73241, 50435, 56334. */
                public var id: String

                /** If set to "web", a 302 redirect to relevant website bus stop page is returned. Valid values are : web. All other values are ignored. */
                public var output: String?

                public init(
                    id: String, 
                    output: String? = nil
                ) {
                    self.id = id
                    self.output = output
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: StopPointGetBySms.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, output: String? = nil) {
                let options = Options(id: id, output: output)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let output = options.output {
                  params["output"] = output
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Object

            /** OK */
            case status200(Object)

            public var success: Object? {
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
                case 200: self = try .status200(decoder.decode(Object.self, from: data))
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

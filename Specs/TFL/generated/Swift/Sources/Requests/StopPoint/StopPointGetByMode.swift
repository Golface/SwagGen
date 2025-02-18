//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.StopPoint {

    /** Gets a list of StopPoints filtered by the modes available at that StopPoint. */
    public enum StopPointGetByMode {

        public static let service = APIService<Response>(id: "StopPoint_GetByMode", tag: "StopPoint", method: "GET", path: "/StopPoint/Mode/{modes}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A comma-separated list of modes e.g. tube,dlr */
                public var modes: [String]

                /** The data set page to return. Page 1 equates to the first 1000 stop points, page 2 equates to 1001-2000 etc. Must be entered for bus mode as data set is too large. */
                public var page: Int?

                public init(
                    modes: [String], 
                    page: Int? = nil
                ) {
                    self.modes = modes
                    self.page = page
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: StopPointGetByMode.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(modes: [String], page: Int? = nil) {
                let options = Options(modes: modes, page: page)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "modes" + "}", with: "\(self.options.modes.joined(separator: ","))")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let page = options.page {
                  params["page"] = page
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = StopPointsResponse

            /** OK */
            case status200(StopPointsResponse)

            public var success: StopPointsResponse? {
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
                case 200: self = try .status200(decoder.decode(StopPointsResponse.self, from: data))
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

//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.StopPoint {

    /** Gets a distinct list of disrupted stop points for the given modes */
    public enum StopPointDisruptionByMode {

        public static let service = APIService<Response>(id: "StopPoint_DisruptionByMode", tag: "StopPoint", method: "GET", path: "/StopPoint/Mode/{modes}/Disruption", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A comma-separated list of modes e.g. tube,dlr */
                public var modes: [String]

                public var includeRouteBlockedStops: Bool?

                public init(
                    modes: [String], 
                    includeRouteBlockedStops: Bool? = nil
                ) {
                    self.modes = modes
                    self.includeRouteBlockedStops = includeRouteBlockedStops
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: StopPointDisruptionByMode.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(modes: [String], includeRouteBlockedStops: Bool? = nil) {
                let options = Options(modes: modes, includeRouteBlockedStops: includeRouteBlockedStops)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "modes" + "}", with: "\(self.options.modes.joined(separator: ","))")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let includeRouteBlockedStops = options.includeRouteBlockedStops {
                  params["includeRouteBlockedStops"] = includeRouteBlockedStops
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [DisruptedPoint]

            /** OK */
            case status200([DisruptedPoint])

            public var success: [DisruptedPoint]? {
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
                case 200: self = try .status200(decoder.decode([DisruptedPoint].self, from: data))
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

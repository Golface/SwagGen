//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.StopPoint {

    /** Get car parks corresponding to the given stop point id. */
    public enum StopPointGetCarParksById {

        public static let service = APIService<Response>(id: "StopPoint_GetCarParksById", tag: "StopPoint", method: "GET", path: "/StopPoint/{stopPointId}/CarParks", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** stopPointId is required to get the car parks. */
                public var stopPointId: String

                public init(
                    stopPointId: String
                ) {
                    self.stopPointId = stopPointId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: StopPointGetCarParksById.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(stopPointId: String) {
                let options = Options(stopPointId: stopPointId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "stopPointId" + "}", with: "\(self.options.stopPointId)")
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

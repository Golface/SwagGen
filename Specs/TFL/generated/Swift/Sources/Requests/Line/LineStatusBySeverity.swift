//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Line {

    /** Gets the line status for all lines with a given severity
            A list of valid severity codes can be obtained from a call to Line/Meta/Severity */
    public enum LineStatusBySeverity {

        public static let service = APIService<Response>(id: "Line_StatusBySeverity", tag: "Line", method: "GET", path: "/Line/Status/{severity}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The level of severity (eg: a number from 0 to 14) */
                public var severity: Int

                public init(
                    severity: Int
                ) {
                    self.severity = severity
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: LineStatusBySeverity.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(severity: Int) {
                let options = Options(severity: severity)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "severity" + "}", with: "\(self.options.severity)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [Line]

            /** OK */
            case status200([Line])

            public var success: [Line]? {
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
                case 200: self = try .status200(decoder.decode([Line].self, from: data))
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

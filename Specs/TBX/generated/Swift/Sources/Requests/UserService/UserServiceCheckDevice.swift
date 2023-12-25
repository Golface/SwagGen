//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TBX.UserService {

    /** Check if a Device exists and this is active */
    public enum UserServiceCheckDevice {

        public static let service = APIService<Response>(id: "UserService.checkDevice", tag: "UserService", method: "HEAD", path: "/UserServices/device/{device}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The device token */
                public var device: String

                public init(
                    device: String
                ) {
                    self.device = device
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: UserServiceCheckDevice.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(device: String) {
                let options = Options(device: device)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "device" + "}", with: "\(self.options.device)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Request was successful */
            case status204

            /** Bad Request  */
            case status400(XAny)

            /** Unauthorized  */
            case status401(XAny)

            /** Customer or Device not Found */
            case status404(XAny)

            /** Device was Logged Out or the customer not longer exists */
            case status410(XAny)

            public var success: Void? {
                switch self {
                case .status204: return ()
                default: return nil
                }
            }

            public var failure: XAny? {
                switch self {
                case .status400(let response): return response
                case .status401(let response): return response
                case .status404(let response): return response
                case .status410(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Void, XAny> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status400(let response): return response
                case .status401(let response): return response
                case .status404(let response): return response
                case .status410(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .status400: return 400
                case .status401: return 401
                case .status404: return 404
                case .status410: return 410
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .status400: return false
                case .status401: return false
                case .status404: return false
                case .status410: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
                case 400: self = try .status400(decoder.decodeAny(XAny.self, from: data))
                case 401: self = try .status401(decoder.decodeAny(XAny.self, from: data))
                case 404: self = try .status404(decoder.decodeAny(XAny.self, from: data))
                case 410: self = try .status410(decoder.decodeAny(XAny.self, from: data))
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

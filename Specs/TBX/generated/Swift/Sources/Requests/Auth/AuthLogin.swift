//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TBX.Auth {

    /** URL for the client can start a new login with your IDP */
    public enum AuthLogin {

        public static let service = APIService<Response>(id: "auth.login", tag: "auth", method: "GET", path: "/auth/{cp}/login.html", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** ShortName of Content Provider */
                public var cp: String

                /** ShortName of Identity Provider */
                public var idp: String

                /** URL to send the client after login or if client press the cancel button in case cancel parameter was not be set, but if this parameter is blank the token will be returned as json */
                public var `return`: String?

                /** URL to send the client if he press the cancel button */
                public var cancel: String?

                /** If the Identity Provider have multiple countries, this option is to tell him what country was chosen by the client */
                public var country: String?

                /** Token created by one Identity Provider to login a client without send the client to him */
                public var token: String?

                public init(
                    cp: String, 
                    idp: String, 
                    `return`: String? = nil, 
                    cancel: String? = nil, 
                    country: String? = nil, 
                    token: String? = nil
                ) {
                    self.cp = cp
                    self.idp = idp
                    self.`return` = `return`
                    self.cancel = cancel
                    self.country = country
                    self.token = token
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AuthLogin.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(cp: String, idp: String, `return`: String? = nil, cancel: String? = nil, country: String? = nil, token: String? = nil) {
                let options = Options(cp: cp, idp: idp, `return`: `return`, cancel: cancel, country: country, token: token)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "cp" + "}", with: "\(self.options.cp)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                params["idp"] = options.idp
                if let `return` = options.`return` {
                  params["return"] = `return`
                }
                if let cancel = options.cancel {
                  params["cancel"] = cancel
                }
                if let country = options.country {
                  params["country"] = country
                }
                if let token = options.token {
                  params["token"] = token
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Auth

            /** Request was successful */
            case status200(Auth)

            public var success: Auth? {
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
                case 200: self = try .status200(decoder.decode(Auth.self, from: data))
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

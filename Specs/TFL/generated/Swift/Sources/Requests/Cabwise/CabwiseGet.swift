//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Cabwise {

    /** Gets taxis and minicabs contact information */
    public enum CabwiseGet {

        public static let service = APIService<Response>(id: "Cabwise_Get", tag: "Cabwise", method: "GET", path: "/Cabwise/search", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Latitude */
                public var lat: Double

                /** Longitude */
                public var lon: Double

                /** Operator Type e.g Minicab, Executive, Limousine */
                public var optype: String?

                /** Wheelchair accessible */
                public var wc: String?

                /** The radius of the bounding circle in metres */
                public var radius: Double?

                /** Trading name of operating company */
                public var name: String?

                /** An optional parameter to limit the number of results return. Default and maximum is 20. */
                public var maxResults: Int?

                /** Legacy Format */
                public var legacyFormat: Bool?

                /** Force Xml */
                public var forceXml: Bool?

                /** Twenty Four Seven Only */
                public var twentyFourSevenOnly: Bool?

                public init(
                    lat: Double, 
                    lon: Double, 
                    optype: String? = nil, 
                    wc: String? = nil, 
                    radius: Double? = nil, 
                    name: String? = nil, 
                    maxResults: Int? = nil, 
                    legacyFormat: Bool? = nil, 
                    forceXml: Bool? = nil, 
                    twentyFourSevenOnly: Bool? = nil
                ) {
                    self.lat = lat
                    self.lon = lon
                    self.optype = optype
                    self.wc = wc
                    self.radius = radius
                    self.name = name
                    self.maxResults = maxResults
                    self.legacyFormat = legacyFormat
                    self.forceXml = forceXml
                    self.twentyFourSevenOnly = twentyFourSevenOnly
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: CabwiseGet.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(lat: Double, lon: Double, optype: String? = nil, wc: String? = nil, radius: Double? = nil, name: String? = nil, maxResults: Int? = nil, legacyFormat: Bool? = nil, forceXml: Bool? = nil, twentyFourSevenOnly: Bool? = nil) {
                let options = Options(lat: lat, lon: lon, optype: optype, wc: wc, radius: radius, name: name, maxResults: maxResults, legacyFormat: legacyFormat, forceXml: forceXml, twentyFourSevenOnly: twentyFourSevenOnly)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                params["lat"] = options.lat
                params["lon"] = options.lon
                if let optype = options.optype {
                  params["optype"] = optype
                }
                if let wc = options.wc {
                  params["wc"] = wc
                }
                if let radius = options.radius {
                  params["radius"] = radius
                }
                if let name = options.name {
                  params["name"] = name
                }
                if let maxResults = options.maxResults {
                  params["maxResults"] = maxResults
                }
                if let legacyFormat = options.legacyFormat {
                  params["legacyFormat"] = legacyFormat
                }
                if let forceXml = options.forceXml {
                  params["forceXml"] = forceXml
                }
                if let twentyFourSevenOnly = options.twentyFourSevenOnly {
                  params["twentyFourSevenOnly"] = twentyFourSevenOnly
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

//
// VcenterHostCreateSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterHostCreateSpec: Codable {

    /** The IP address or DNS resolvable name of the host. */
    public var hostname: String
    /** The port of the host. If unset, port 443 will be used. */
    public var port: Int64?
    /** The administrator account on the host. */
    public var userName: String
    /** The password for the administrator account on the host. */
    public var password: String
    /** Host and cluster folder in which the new standalone host should be created. This field is currently required. In the future, if this field is unset, the system will attempt to choose a suitable folder for the host; if a folder cannot be chosen, the host creation operation will fail. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Folder. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Folder. */
    public var folder: String?
    /** Type of host&#39;s SSL certificate verification to be done. */
    public var thumbprintVerification: VcenterHostCreateSpecThumbprintVerification
    /** The thumbprint of the SSL certificate, which the host is expected to have. The thumbprint is always computed using the SHA1 hash and is the string representation of that hash in the format: xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx where, &#39;x&#39; represents a hexadecimal digit. This field is optional and it is only relevant when the value of Host.CreateSpec.thumbprint-verification is THUMBPRINT. */
    public var thumbprint: String?
    /** Whether host should be added to the vCenter Server even if it is being managed by another vCenter Server. The original vCenterServer loses connection to the host. If unset, forceAdd is default to false. */
    public var forceAdd: Bool?

    public init(hostname: String, port: Int64?, userName: String, password: String, folder: String?, thumbprintVerification: VcenterHostCreateSpecThumbprintVerification, thumbprint: String?, forceAdd: Bool?) {
        self.hostname = hostname
        self.port = port
        self.userName = userName
        self.password = password
        self.folder = folder
        self.thumbprintVerification = thumbprintVerification
        self.thumbprint = thumbprint
        self.forceAdd = forceAdd
    }

    public enum CodingKeys: String, CodingKey { 
        case hostname
        case port
        case userName = "user_name"
        case password
        case folder
        case thumbprintVerification = "thumbprint_verification"
        case thumbprint
        case forceAdd = "force_add"
    }


}

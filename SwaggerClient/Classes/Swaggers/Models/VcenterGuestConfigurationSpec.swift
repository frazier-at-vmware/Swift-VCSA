//
// VcenterGuestConfigurationSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterGuestConfigurationSpec: Codable {

    /** Guest customization specification for a Windows guest operating system If unset, ConfigurationSpec.linux-config or ConfigurationSpec.cloud-config must be set. Otherwise, an appropriate fault will be thrown. */
    public var windowsConfig: VcenterGuestWindowsConfiguration?
    /** Guest customization specification for a linux guest operating system If unset, ConfigurationSpec.windows-config or ConfigurationSpec.cloud-config must be set. Otherwise, an appropriate fault will be thrown. */
    public var linuxConfig: VcenterGuestLinuxConfiguration?
    /** Guest customization specification with cloud configuration. If unset, ConfigurationSpec.windows-config or ConfigurationSpec.linux-config must be set. Otherwise, an appropriate fault will be thrown. */
    public var cloudConfig: VcenterGuestCloudConfiguration?

    public init(windowsConfig: VcenterGuestWindowsConfiguration?, linuxConfig: VcenterGuestLinuxConfiguration?, cloudConfig: VcenterGuestCloudConfiguration?) {
        self.windowsConfig = windowsConfig
        self.linuxConfig = linuxConfig
        self.cloudConfig = cloudConfig
    }

    public enum CodingKeys: String, CodingKey { 
        case windowsConfig = "windows_config"
        case linuxConfig = "linux_config"
        case cloudConfig = "cloud_config"
    }


}

//
// VcenterGuestLinuxConfiguration.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterGuestLinuxConfiguration: Codable {

    /** The network host name of the Linux virtual machine. */
    public var hostname: VcenterGuestHostnameGenerator
    /** The fully qualified domain name. */
    public var domain: String
    /** The case-sensitive time zone, such as Europe/Sofia. Valid time zone values are based on the tz (time zone) database used by Linux. The values are strings (string) in the form \&quot;Area/Location,\&quot; in which Area is a continent or ocean name, and Location is the city, island, or other regional designation.   See the https://kb.vmware.com/kb/2145518 for a list of supported time zones for different versions in Linux.  If unset, time zone is not modified inside guest operating system. */
    public var timeZone: String?
    /** The script to run before and after Linux guest customization.  The max size of the script is 65536 bytes. As long as the script (shell, perl, python...) has the right \&quot;#!\&quot; in the header, it is supported. The caller should not assume any environment variables when the script is run.   The script is invoked by the customization engine using the command line: 1) with argument \&quot;precustomization\&quot; before customization, 2) with argument \&quot;postcustomization\&quot; after customization. The script should parse this argument and implement pre-customization or post-customization task code details in the corresponding block.    A Linux shell script example:     #!/bin/sh  if [ x$1 &#x3D;&#x3D; x\&quot;precustomization\&quot; ]; then  echo \&quot;Do Precustomization tasks\&quot;  #code for pre-customization actions...  elif [ x$1 &#x3D;&#x3D; x\&quot;postcustomization\&quot; ]; then  echo \&quot;Do Postcustomization tasks\&quot;  #code for post-customization actions...  fi    If unset, no script will be executed. */
    public var scriptText: String?

    public init(hostname: VcenterGuestHostnameGenerator, domain: String, timeZone: String?, scriptText: String?) {
        self.hostname = hostname
        self.domain = domain
        self.timeZone = timeZone
        self.scriptText = scriptText
    }

    public enum CodingKeys: String, CodingKey { 
        case hostname
        case domain
        case timeZone = "time_zone"
        case scriptText = "script_text"
    }


}


//
// VcenterVmGuestOS.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The {@name GuestOS} {@term enumerated type} defines the valid guest operating system types used for configuring a virtual machine. */
public enum VcenterVmGuestOS: String, Codable {
    case dos = "DOS"
    case win31 = "WIN_31"
    case win95 = "WIN_95"
    case win98 = "WIN_98"
    case winMe = "WIN_ME"
    case winNt = "WIN_NT"
    case win2000Pro = "WIN_2000_PRO"
    case win2000Serv = "WIN_2000_SERV"
    case win2000AdvServ = "WIN_2000_ADV_SERV"
    case winXpHome = "WIN_XP_HOME"
    case winXpPro = "WIN_XP_PRO"
    case winXpPro64 = "WIN_XP_PRO_64"
    case winNetWeb = "WIN_NET_WEB"
    case winNetStandard = "WIN_NET_STANDARD"
    case winNetEnterprise = "WIN_NET_ENTERPRISE"
    case winNetDatacenter = "WIN_NET_DATACENTER"
    case winNetBusiness = "WIN_NET_BUSINESS"
    case winNetStandard64 = "WIN_NET_STANDARD_64"
    case winNetEnterprise64 = "WIN_NET_ENTERPRISE_64"
    case winLonghorn = "WIN_LONGHORN"
    case winLonghorn64 = "WIN_LONGHORN_64"
    case winNetDatacenter64 = "WIN_NET_DATACENTER_64"
    case winVista = "WIN_VISTA"
    case winVista64 = "WIN_VISTA_64"
    case windows7 = "WINDOWS_7"
    case windows764 = "WINDOWS_7_64"
    case windows7Server64 = "WINDOWS_7_SERVER_64"
    case windows8 = "WINDOWS_8"
    case windows864 = "WINDOWS_8_64"
    case windows8Server64 = "WINDOWS_8_SERVER_64"
    case windows9 = "WINDOWS_9"
    case windows964 = "WINDOWS_9_64"
    case windows9Server64 = "WINDOWS_9_SERVER_64"
    case windows1164 = "WINDOWS_11_64"
    case windows1264 = "WINDOWS_12_64"
    case windowsHyperv = "WINDOWS_HYPERV"
    case windowsServer2019 = "WINDOWS_SERVER_2019"
    case windowsServer2021 = "WINDOWS_SERVER_2021"
    case windowsServer2025 = "WINDOWS_SERVER_2025"
    case freebsd = "FREEBSD"
    case freebsd64 = "FREEBSD_64"
    case freebsd11 = "FREEBSD_11"
    case freebsd12 = "FREEBSD_12"
    case freebsd13 = "FREEBSD_13"
    case freebsd14 = "FREEBSD_14"
    case freebsd1164 = "FREEBSD_11_64"
    case freebsd1264 = "FREEBSD_12_64"
    case freebsd1364 = "FREEBSD_13_64"
    case freebsd1464 = "FREEBSD_14_64"
    case redhat = "REDHAT"
    case rhel2 = "RHEL_2"
    case rhel3 = "RHEL_3"
    case rhel364 = "RHEL_3_64"
    case rhel4 = "RHEL_4"
    case rhel464 = "RHEL_4_64"
    case rhel5 = "RHEL_5"
    case rhel564 = "RHEL_5_64"
    case rhel6 = "RHEL_6"
    case rhel664 = "RHEL_6_64"
    case rhel7 = "RHEL_7"
    case rhel764 = "RHEL_7_64"
    case rhel864 = "RHEL_8_64"
    case rhel964 = "RHEL_9_64"
    case centos = "CENTOS"
    case centos64 = "CENTOS_64"
    case centos6 = "CENTOS_6"
    case centos664 = "CENTOS_6_64"
    case centos7 = "CENTOS_7"
    case centos764 = "CENTOS_7_64"
    case centos864 = "CENTOS_8_64"
    case centos964 = "CENTOS_9_64"
    case oracleLinux = "ORACLE_LINUX"
    case oracleLinux64 = "ORACLE_LINUX_64"
    case oracleLinux6 = "ORACLE_LINUX_6"
    case oracleLinux664 = "ORACLE_LINUX_6_64"
    case oracleLinux7 = "ORACLE_LINUX_7"
    case oracleLinux764 = "ORACLE_LINUX_7_64"
    case oracleLinux864 = "ORACLE_LINUX_8_64"
    case oracleLinux964 = "ORACLE_LINUX_9_64"
    case suse = "SUSE"
    case suse64 = "SUSE_64"
    case sles = "SLES"
    case sles64 = "SLES_64"
    case sles10 = "SLES_10"
    case sles1064 = "SLES_10_64"
    case sles11 = "SLES_11"
    case sles1164 = "SLES_11_64"
    case sles12 = "SLES_12"
    case sles1264 = "SLES_12_64"
    case sles1564 = "SLES_15_64"
    case sles1664 = "SLES_16_64"
    case nld9 = "NLD_9"
    case oes = "OES"
    case sjds = "SJDS"
    case mandrake = "MANDRAKE"
    case mandriva = "MANDRIVA"
    case mandriva64 = "MANDRIVA_64"
    case turboLinux = "TURBO_LINUX"
    case turboLinux64 = "TURBO_LINUX_64"
    case ubuntu = "UBUNTU"
    case ubuntu64 = "UBUNTU_64"
    case debian4 = "DEBIAN_4"
    case debian464 = "DEBIAN_4_64"
    case debian5 = "DEBIAN_5"
    case debian564 = "DEBIAN_5_64"
    case debian6 = "DEBIAN_6"
    case debian664 = "DEBIAN_6_64"
    case debian7 = "DEBIAN_7"
    case debian764 = "DEBIAN_7_64"
    case debian8 = "DEBIAN_8"
    case debian864 = "DEBIAN_8_64"
    case debian9 = "DEBIAN_9"
    case debian964 = "DEBIAN_9_64"
    case debian10 = "DEBIAN_10"
    case debian1064 = "DEBIAN_10_64"
    case debian11 = "DEBIAN_11"
    case debian1164 = "DEBIAN_11_64"
    case debian12 = "DEBIAN_12"
    case debian1264 = "DEBIAN_12_64"
    case asianux3 = "ASIANUX_3"
    case asianux364 = "ASIANUX_3_64"
    case asianux4 = "ASIANUX_4"
    case asianux464 = "ASIANUX_4_64"
    case asianux564 = "ASIANUX_5_64"
    case asianux764 = "ASIANUX_7_64"
    case asianux864 = "ASIANUX_8_64"
    case asianux964 = "ASIANUX_9_64"
    case opensuse = "OPENSUSE"
    case opensuse64 = "OPENSUSE_64"
    case fedora = "FEDORA"
    case fedora64 = "FEDORA_64"
    case coreos64 = "COREOS_64"
    case vmwarePhoton64 = "VMWARE_PHOTON_64"
    case other24xLinux = "OTHER_24X_LINUX"
    case other24xLinux64 = "OTHER_24X_LINUX_64"
    case other26xLinux = "OTHER_26X_LINUX"
    case other26xLinux64 = "OTHER_26X_LINUX_64"
    case other3xLinux = "OTHER_3X_LINUX"
    case other3xLinux64 = "OTHER_3X_LINUX_64"
    case other4xLinux = "OTHER_4X_LINUX"
    case other4xLinux64 = "OTHER_4X_LINUX_64"
    case other5xLinux = "OTHER_5X_LINUX"
    case other5xLinux64 = "OTHER_5X_LINUX_64"
    case other6xLinux = "OTHER_6X_LINUX"
    case other6xLinux64 = "OTHER_6X_LINUX_64"
    case otherLinux = "OTHER_LINUX"
    case genericLinux = "GENERIC_LINUX"
    case otherLinux64 = "OTHER_LINUX_64"
    case solaris6 = "SOLARIS_6"
    case solaris7 = "SOLARIS_7"
    case solaris8 = "SOLARIS_8"
    case solaris9 = "SOLARIS_9"
    case solaris10 = "SOLARIS_10"
    case solaris1064 = "SOLARIS_10_64"
    case solaris1164 = "SOLARIS_11_64"
    case os2 = "OS2"
    case ecomstation = "ECOMSTATION"
    case ecomstation2 = "ECOMSTATION_2"
    case netware4 = "NETWARE_4"
    case netware5 = "NETWARE_5"
    case netware6 = "NETWARE_6"
    case openserver5 = "OPENSERVER_5"
    case openserver6 = "OPENSERVER_6"
    case unixware7 = "UNIXWARE_7"
    case darwin = "DARWIN"
    case darwin64 = "DARWIN_64"
    case darwin10 = "DARWIN_10"
    case darwin1064 = "DARWIN_10_64"
    case darwin11 = "DARWIN_11"
    case darwin1164 = "DARWIN_11_64"
    case darwin1264 = "DARWIN_12_64"
    case darwin1364 = "DARWIN_13_64"
    case darwin1464 = "DARWIN_14_64"
    case darwin1564 = "DARWIN_15_64"
    case darwin1664 = "DARWIN_16_64"
    case darwin1764 = "DARWIN_17_64"
    case darwin1864 = "DARWIN_18_64"
    case darwin1964 = "DARWIN_19_64"
    case darwin2064 = "DARWIN_20_64"
    case darwin2164 = "DARWIN_21_64"
    case darwin2264 = "DARWIN_22_64"
    case darwin2364 = "DARWIN_23_64"
    case vmkernel = "VMKERNEL"
    case vmkernel5 = "VMKERNEL_5"
    case vmkernel6 = "VMKERNEL_6"
    case vmkernel65 = "VMKERNEL_65"
    case vmkernel7 = "VMKERNEL_7"
    case vmkernel8 = "VMKERNEL_8"
    case amazonlinux264 = "AMAZONLINUX2_64"
    case amazonlinux364 = "AMAZONLINUX3_64"
    case crxpod1 = "CRXPOD_1"
    case rockylinux64 = "ROCKYLINUX_64"
    case almalinux64 = "ALMALINUX_64"
    case other = "OTHER"
    case other64 = "OTHER_64"

}

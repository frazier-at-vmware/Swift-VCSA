//
// VcenterNamespaceManagementSupervisorsImageSyncConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VcenterNamespaceManagementSupervisorsImageSyncConfig: Codable {

    /** The ImageSyncConfig.registry structure contains the specification required to configure container image registry endpoint. Defaults to Docker Hub if unset. */
    public var registry: VcenterNamespaceManagementSupervisorsImageRegistry?
    /**  The ImageSyncConfig.repository specifies the default container image repository to use when the Kubernetes Pod specification does not specify it. For example, hub.docker.com is the image repository for a Pod whose image specification is hub.docker.com/nginx.  If unset, and if docker hub is the configured ImageSyncConfig.registry, then ImageSyncConfig.repository defaults to Docker Hub. If Docker Hub is not the configured image registry, ImageSyncConfig.repository remains unset.  If {#member} repository is unset, you must supply an image repository in your Pod spec or else images will not be able to be synced into the cluster.  */
    public var repository: String?
    /**  ImageSyncConfig.kubernetes-content-library is the UUID of the Content Library which holds the VM Images for Tanzu Kubernetes Service for vSphere.   This Content Library should be subscribed to VMware&#39;s hosted vSphere Kubernetes Service Repository. Optionally, you can configure your own local content library and host images locally.  If the Content Library identifier is unset, you will not be able to deploy Tanzu Kubernetes Clusters. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: content.Library. When operations return a value of this structure as a result, the field will be an identifier for the resource type: content.Library. */
    public var kubernetesContentLibrary: String?

    public init(registry: VcenterNamespaceManagementSupervisorsImageRegistry?, repository: String?, kubernetesContentLibrary: String?) {
        self.registry = registry
        self.repository = repository
        self.kubernetesContentLibrary = kubernetesContentLibrary
    }

    public enum CodingKeys: String, CodingKey { 
        case registry
        case repository
        case kubernetesContentLibrary = "kubernetes_content_library"
    }


}


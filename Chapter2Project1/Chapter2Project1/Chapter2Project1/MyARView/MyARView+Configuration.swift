//
//  MyARView+Configuration.swift
//  Chapter1
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import RealityKit
import ARKit

extension MyARView {
    func configureWithImageTracking() {
        guard let trackedImages = ARReferenceImage.referenceImages(
            inGroupNamed: "AR Images",
            bundle: Bundle.main
        )
        else { return }
        
        let configuration = ARWorldTrackingConfiguration()
        configuration.maximumNumberOfTrackedImages = 1
        configuration.detectionImages = trackedImages
        
        session.run(configuration)
    }
    
    func configureWithObjectTracking() {
        guard let trackedObjects = ARReferenceObject.referenceObjects(
            inGroupNamed: "AR Objects",
            bundle: Bundle.main
        )
        else { return }
        
        let configuration = ARWorldTrackingConfiguration()
        configuration.detectionObjects = trackedObjects
        
        session.run(configuration)
    }
}



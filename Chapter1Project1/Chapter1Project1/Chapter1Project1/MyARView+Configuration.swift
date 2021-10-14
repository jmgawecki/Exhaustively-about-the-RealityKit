//
//  MyARView+Configuration.swift
//  Chapter1
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import RealityKit
import ARKit

extension MyARView {
    func configure() {
        debugOptions = [.showAnchorOrigins, .showFeaturePoints]
        environment.background = .cameraFeed(exposureCompensation: 3)
        
        let configuration = ARFaceTrackingConfiguration()
        configuration.maximumNumberOfTrackedFaces = 1
        
        session.run(configuration)
    }
    
    func configureWithSceneReconstruction() {
        guard ARWorldTrackingConfiguration.supportsSceneReconstruction(.meshWithClassification) else {
            fatalError("App runs only for the devices with the LiDAR scanner. Sorry about that.")
        }
        
        let configuration = ARWorldTrackingConfiguration()
        configuration.sceneReconstruction = .meshWithClassification
        
        debugOptions = [.showSceneUnderstanding]
        
        session.run(configuration)
    }
}

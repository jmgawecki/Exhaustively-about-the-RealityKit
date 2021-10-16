//
//  MyARView+Configuration.swift
//  Chapter1
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import RealityKit
import ARKit

extension MyARView {
    func configureWithBodyTracking() {
        guard ARBodyTrackingConfiguration.isSupported,
              ARBodyTrackingConfiguration.supportsFrameSemantics(.bodyDetection)
        else { return }
        
        let configuration = ARBodyTrackingConfiguration()
        
        session.run(configuration)
    }
}



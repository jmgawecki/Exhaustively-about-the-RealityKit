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
        let configuration = ARImageTrackingConfiguration()
        configuration.maximumNumberOfTrackedImages = 1
        configuration.trackingImages = []
    }
}



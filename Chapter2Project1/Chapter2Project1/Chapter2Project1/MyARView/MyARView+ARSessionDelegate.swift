//
//  MyARView+ARSessionDelegate.swift
//  Chapter2Project1
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import ARKit
import RealityKit

extension MyARView: ARSessionDelegate {
    func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        guard let objectAnchor = anchors.first as? ARObjectAnchor,
              objectAnchor.name == "Clock"
        else { return }
        
        let anchorEntity = AnchorEntity(anchor: objectAnchor)
        scene.addAnchor(anchorEntity)
        smallBall.transform.translation = [0, 0.5, 0]
        anchorEntity.addChild(smallBall)
    }
}

/*
func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
    guard let imageAnchor = anchors.first as? ARImageAnchor,
          imageAnchor.name == "image1"
    else { return }

    let anchorEntity = AnchorEntity(anchor: imageAnchor)
    scene.addAnchor(anchorEntity)
    anchorEntity.addChild(smallBall)
}
 */

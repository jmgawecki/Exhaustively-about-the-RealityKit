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
        guard let bodyAnchor = anchors.first as? ARBodyAnchor
        else { return }
        
        let skeleton = bodyAnchor.skeleton.jointModelTransforms
        
        let anchorEntity = AnchorEntity(anchor: bodyAnchor)
        scene.addAnchor(anchorEntity)
        
        
        
        for joint in skeleton {
            let sphere = smallBall.clone(recursive: false)
            sphere.transform = Transform.init(matrix: joint)
            self.skeleton.append(sphere)
            anchorEntity.addChild(sphere)
        }
    }
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        guard let bodyAnchor = anchors.first as? ARBodyAnchor
        else { return }
        
        let skeleton = bodyAnchor.skeleton.jointModelTransforms
        
        for (index, joint) in skeleton.enumerated() {
            self.skeleton[index].transform = Transform.init(matrix: joint)
        }
    }
}

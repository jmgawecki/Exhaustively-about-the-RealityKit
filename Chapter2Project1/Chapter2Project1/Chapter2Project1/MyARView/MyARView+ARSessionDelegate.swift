//
//  MyARView+ARSessionDelegate.swift
//  Chapter2Project1
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import ARKit

extension MyARView: ARSessionDelegate {
    func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        guard let bodyAnchor = anchors.first as? ARBodyAnchor
        else { return }
        
        print("body anchor detected!")
              
    }
}

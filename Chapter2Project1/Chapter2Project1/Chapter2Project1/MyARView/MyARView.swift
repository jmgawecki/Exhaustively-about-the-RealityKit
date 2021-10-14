//
//  MyARView.swift
//  MyProjects name
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import UIKit
import RealityKit
import ARKit
import Combine


class MyARView: ARView {
    
    let referenceImage = ARReferenceImage.referenceImages(inGroupNamed: <#T##String#>)
    
    let anchorEntity = AnchorEntity(
        plane: .vertical,
        classification: .wall,
        minimumBounds: [1,1]
    )
    
    lazy var smallBall: Entity = {
        let mesh = MeshResource.generateSphere(radius: 0.2)
        let ball = ModelEntity(mesh: mesh)
        return ball
    }()
    
    required init() {
        super.init(frame: .zero)
        
        session.delegate = self
    }
    
    @MainActor @objc required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @MainActor @objc required dynamic init(frame frameRect: CGRect) {
        fatalError("init(frame:) has not been implemented")
    }
}

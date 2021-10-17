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
    private lazy var anchorEntity = AnchorEntity(
        plane: .horizontal,
        classification: .any,
        minimumBounds: [1,1]
    )
    
    private lazy var spotLight: SpotLight = {
        let spotLight = SpotLight()
        spotLight.light = SpotLightComponent.init(
            color: .green,
            intensity: 2_500_000,
            innerAngleInDegrees: 70,
            outerAngleInDegrees: 120,
            attenuationRadius: 9.0
        )
        
        spotLight.position.y = 5
        spotLight.orientation = simd_quatf(
            angle: -.pi/1.5,
            axis: [0,5,0]
        )
        spotLight.shadow = SpotLightComponent.Shadow()
        return spotLight
    }()
    
    private lazy var pointLight: PointLight = {
        let spotLight = PointLight()
        spotLight.light = PointLightComponent.init(
            color: .green,
            intensity: 2_500_000,
            
            
            
            attenuationRadius: 9.0
        )
        spotLight.position.y = 5
        spotLight.orientation = simd_quatf(
            angle: -.pi/1.5,
            axis: [0,5,0.5]
        )
        
        return spotLight
    }()
    
    private lazy var simpleBox: ModelEntity = {
        let mesh = MeshResource.generateBox(size: 1)
        let material = SimpleMaterial(color: .gray, isMetallic: false)
        let box = ModelEntity(mesh: mesh, materials: [material])
        return box
    }()
    
    
    required init() {
        super.init(frame: .zero)
        
        scene.addAnchor(anchorEntity)
        anchorEntity.addChild(spotLight)
        anchorEntity.addChild(pointLight)
        anchorEntity.addChild(simpleBox)
    }
    
    @MainActor @objc required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @MainActor @objc required dynamic init(frame frameRect: CGRect) {
        fatalError("init(frame:) has not been implemented")
    }
}

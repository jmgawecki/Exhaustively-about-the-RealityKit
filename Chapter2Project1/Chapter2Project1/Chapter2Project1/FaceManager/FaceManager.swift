//
//  Face.swift
//  Chapter2Project1
//
//  Created by Jakub Gawecki on 15/10/2021.
//

import RealityKit
import ARKit

enum EyeType {
    case left, right
}

class FaceManager {
    let leftEye: Entity = {
        let mesh = MeshResource.generateSphere(radius: 0.03)
        let eye = ModelEntity(mesh: mesh)
        return eye
    }()
    
    var rightEye: Entity
    var eyeSize: SIMD3<Float>
    
    init() {
        rightEye = leftEye.clone(recursive: false)
        eyeSize = leftEye.scale
    }
    
    func scaleEye(eye: EyeType, by eyeState: NSNumber) {
        switch eye {
        case .left:
            leftEye.scale = eyeSize * Float(truncating: eyeState) + 0.5
        case .right:
            rightEye.scale = eyeSize * Float(truncating: eyeState) + 0.5
        }
    }
}

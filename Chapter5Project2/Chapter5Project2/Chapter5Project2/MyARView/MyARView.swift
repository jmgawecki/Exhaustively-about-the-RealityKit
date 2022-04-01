//
//  MyARView.swift
//  MyProjects name
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import UIKit
import RealityKit
import ARKit

class MyARView: ARView {
    let coachingOverlay = ARCoachingOverlayView()
 
    required init() {
        super.init(frame: .zero)
        addCoachingOverlay()
        session.delegate = self
    }
    
    @MainActor @objc required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @MainActor @objc required dynamic init(frame frameRect: CGRect) {
        fatalError("init(frame:) has not been implemented")
    }
}


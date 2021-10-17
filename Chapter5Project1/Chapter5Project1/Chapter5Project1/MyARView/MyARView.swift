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


protocol MyARViewDelegate: NSObject {
    func didUpdateTrackingState(with message: CurrentTrackingState)
}

class MyARView: ARView {
    weak var delegate: MyARViewDelegate?
 
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


//
//  MyARView.swift
//  MyProjects name
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import UIKit
import RealityKit
import Combine


class MyARView: ARView {
    var subscriptions: Set<AnyCancellable> = []
    
    let anchorEntity = AnchorEntity(
        plane: .horizontal,
        classification: .any,
        minimumBounds: [1,1]
    )
    
    
    required init() {
        super.init(frame: .zero)
        scene.anchors.append(anchorEntity)
        
        let _ = ModelEntity.loadAsync(named: "toy_drummer")
            .sink { _ in } receiveValue: { [weak self] drummer in
                guard let self = self else { return }
                self.anchorEntity.addChild(drummer)
            }
            .store(in: &subscriptions)
        
        
    }
    
    @MainActor @objc required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @MainActor @objc required dynamic init(frame frameRect: CGRect) {
        fatalError("init(frame:) has not been implemented")
    }
}

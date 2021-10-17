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
    var skeleton: [Entity] = []
    var dancingRobot: BodyTrackedEntity?
    
    var subscriptions: Set<AnyCancellable> = []

    let anchorEntity = AnchorEntity(
        plane: .vertical,
        classification: .wall,
        minimumBounds: [2,2]
    )
    
    required init() {
        super.init(frame: .zero)
        configureWithBodyTracking()
        session.delegate = self
        Entity.loadBodyTrackedAsync(named: "robot")
            .sink { _ in
            } receiveValue: { dancingRobot in
                guard let dancingRobot = dancingRobot as? BodyTrackedEntity
                else { return }
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

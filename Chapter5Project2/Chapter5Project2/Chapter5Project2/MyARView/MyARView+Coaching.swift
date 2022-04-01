//
//  MyARView+Coaching.swift
//  Chapter5Project2
//
//  Created by Jakub Gawecki on 17/10/2021.
//

import ARKit

extension MyARView: ARCoachingOverlayViewDelegate {
    func addCoachingOverlay() {
        coachingOverlay.delegate = self
        coachingOverlay.session = session
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.goal = .anyPlane
        addSubview(coachingOverlay)
    }
}


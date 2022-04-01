//
//  MyARView+ARSessionDelegate.swift
//  Chapter2Project1
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import ARKit
import RealityKit
import SwiftUI

extension MyARView: ARSessionDelegate {
    func session(_ session: ARSession, cameraDidChangeTrackingState camera: ARCamera) {
        switch camera.trackingState {
        case .notAvailable:
            delegate?.didUpdateTrackingState(with: .notAvailable)

        case .limited(.initializing):
            delegate?.didUpdateTrackingState(with: .initialising)

        case .limited(.excessiveMotion):
            delegate?.didUpdateTrackingState(with: .excessiveMotion)

        case .limited(.insufficientFeatures):
            delegate?.didUpdateTrackingState(with: .insufficientFeatures)

        case .limited(.relocalizing):
            delegate?.didUpdateTrackingState(with: .relocalising)

        case .limited(_):
            delegate?.didUpdateTrackingState(with: .limitedUnknown)

        case .normal:
            delegate?.didUpdateTrackingState(with: .normal)
        }
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        print("Session was interrupted.")
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        print("Session's interruption has ended.")
    }
}

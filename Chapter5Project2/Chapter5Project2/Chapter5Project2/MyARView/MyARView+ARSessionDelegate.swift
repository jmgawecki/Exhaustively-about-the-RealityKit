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
    func sessionShouldAttemptRelocalization(_ session: ARSession) -> Bool {
        return true
    }
}

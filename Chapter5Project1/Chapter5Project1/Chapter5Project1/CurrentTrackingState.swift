//
//  TrackingStateMessage.swift
//  Chapter5Project1
//
//  Created by Jakub Gawecki on 16/10/2021.
//

import SwiftUI

enum CurrentTrackingState {
    case notAvailable
    case initialising
    case excessiveMotion
    case insufficientFeatures
    case relocalising
    case limitedUnknown
    case normal
}

extension CurrentTrackingState {
    var description: String {
        switch self {
        case .notAvailable:
            return "Tracking is not available"
        case .initialising:
            return "Tracking is limited due to initialising."
        case .excessiveMotion:
            return "Excessive motion limits the trakcing state. Please slow down."
        case .insufficientFeatures:
            return "Insufficient feature points, please move the camera."
        case .relocalising:
            return "Tracking is limited due to relocalising."
        case .limitedUnknown:
            return "Tracking is limited for unknown reason."
        case .normal:
            return "Session tracked fully"
        }
    }
}

extension CurrentTrackingState {
    var colour: Color {
        switch self {
        case .notAvailable:
            return .red
        case .initialising, .excessiveMotion, .insufficientFeatures, .relocalising, .limitedUnknown:
            return .orange
        case .normal:
            return .mint
        }
    }
}






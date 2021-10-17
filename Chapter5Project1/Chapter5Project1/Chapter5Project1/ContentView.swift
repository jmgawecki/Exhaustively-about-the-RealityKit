//
//  ContentView.swift
//  Chapter5Project1
//
//  Created by Jakub Gawecki on 16/10/2021.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @State var trackingStateLabel: CurrentTrackingState = .initialising
    var body: some View {
        ZStack(alignment: .bottom) {
            ARViewContainer(trackingStateLabel: $trackingStateLabel)
                .edgesIgnoringSafeArea(.all)
            Text(trackingStateLabel.description)
                .fontWeight(.bold)
                .font(.subheadline)
                .foregroundColor(trackingStateLabel.colour)
                .padding()
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    @Binding var trackingStateLabel: CurrentTrackingState
    
    func makeUIView(context: Context) -> ARView {
        let arView = MyARView()
        arView.delegate = context.coordinator
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(arViewContainer: self)
    }
    
    final class Coordinator: NSObject, MyARViewDelegate {
        fileprivate var arViewContainer: ARViewContainer
        
        init(arViewContainer: ARViewContainer) {
            self.arViewContainer = arViewContainer
        }
        
        func didUpdateTrackingState(with message: CurrentTrackingState) {
            arViewContainer.trackingStateLabel = message
        }
    }
}



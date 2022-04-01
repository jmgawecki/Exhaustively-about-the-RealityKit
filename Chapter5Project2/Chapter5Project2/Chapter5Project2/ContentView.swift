//
//  ContentView.swift
//  Chapter5Project2
//
//  Created by Jakub Gawecki on 17/10/2021.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        ARViewContainer()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        let arView = MyARView()
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

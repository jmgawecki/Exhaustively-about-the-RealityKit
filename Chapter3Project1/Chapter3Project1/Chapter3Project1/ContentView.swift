//
//  ContentView.swift
//  Chapter3Project1
//
//  Created by Jakub Gawecki on 16/10/2021.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        let arView = MyARView()
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

//
//  ContentView.swift
//  MyProjects name
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import SwiftUI
import RealityKit
import Combine

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


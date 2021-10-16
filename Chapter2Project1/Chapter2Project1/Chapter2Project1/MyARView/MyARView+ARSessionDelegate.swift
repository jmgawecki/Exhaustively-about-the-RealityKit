//
//  MyARView+ARSessionDelegate.swift
//  Chapter2Project1
//
//  Created by Jakub Gawecki on 13/10/2021.
//

import ARKit
import RealityKit

extension MyARView: ARSessionDelegate {
     func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
         guard let faceAnchor = anchors.first as? ARFaceAnchor
         else { return }
         
         let anchorEntity = AnchorEntity(anchor: faceAnchor)
         scene.addAnchor(anchorEntity)
         
         faceManager.leftEye.transform.matrix = faceAnchor.leftEyeTransform
         faceManager.rightEye.transform.matrix = faceAnchor.rightEyeTransform
         
         anchorEntity.addChild(faceManager.leftEye)
         anchorEntity.addChild(faceManager.rightEye)
     }
}

/*
 
 func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
     guard let faceAnchor = anchors.first as? ARFaceAnchor
     else { return }

     if let rightEyeState = faceAnchor.blendShapes[ARFaceAnchor.BlendShapeLocation.eyeBlinkRight] {
         faceManager.scaleEye(eye: .right, by: rightEyeState)
     }
     
     if let leftEyeState = faceAnchor.blendShapes[ARFaceAnchor.BlendShapeLocation.eyeBlinkLeft] {
         faceManager.scaleEye(eye: .left, by: leftEyeState)
     }
 }
 */

/*
 ARObjectAnchor
 func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
     guard let objectAnchor = anchors.first as? ARObjectAnchor,
           objectAnchor.name == "Clock"
     else { return }
     
     let anchorEntity = AnchorEntity(anchor: objectAnchor)
     scene.addAnchor(anchorEntity)
     smallBall.transform.translation = [0, 0.5, 0]
     anchorEntity.addChild(smallBall)
 }
 */

/*
 ARImageAnchor
func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
    guard let imageAnchor = anchors.first as? ARImageAnchor,
          imageAnchor.name == "image1"
    else { return }

    let anchorEntity = AnchorEntity(anchor: imageAnchor)
    scene.addAnchor(anchorEntity)
    anchorEntity.addChild(smallBall)
}
 */

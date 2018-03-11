//
//  SKScene.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 6/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKScene: SKScene {
	
	// [custom properties]
	var baseNode: MySKNode!
	
	
	// Presenting a scene
	// ------------------------------
	// view: SKView?
	override func sceneDidLoad() {
		baseNode = MySKNode(name: "test node")
		addChild(baseNode)
		//
		determineVisibleRegion()
		coordinatesConversions()
		addingAudio()
		setupPhysicsWorld()
	}
	override func didMove(to view: SKView) {
		baseNode.addActions()
	}
	override func willMove(from view: SKView) {
		baseNode.removeActions()
	}
	
	
	// Determining the visible region
	// ------------------------------
	func determineVisibleRegion() {
		
		// You can add an optional SKCameraNode object to determine the region of the scene to be rendered, the camera node must also be added as a child node for this to work
		// let cameraNode = SKCameraNode() ???
		// addChild(cameraNode)
		// camera = cameraNode
		
		// If there's no camera, then the anchorPoint and size properties will be used to determine the region to render
		print("scene size: \(size)")				// The base scene size, if changed manually or automatically it will trigger the 'didChangeSize' method
		print("scene anchor point: \(anchorPoint)")	// The origin point for the coordinates system, only used if a camera is not present. Defaults to (0,0)
		
		// If the scene size doesn't match the size of the presenting view, then it will be scaled according to the 'scaleMode' property:
		scaleMode = .fill			// Scales the scene to fit the view (distortion may occur)
		scaleMode = .aspectFill		// Preserves aspect ratio, fills the view entirely (cropping may occur)
		scaleMode = .aspectFit		// Preserves aspect ratio, makes sure the entire scene is visible (letterboxing may occur)
		scaleMode = .resizeFill		// The scene is not scaled, it is resized to always match the view (updates the 'size' property and triggers 'didChangeSize')
		
		// Set background colour, defaults to a mid grey colour
		backgroundColor = .blue
	}
	override func didChangeSize(_ oldSize: CGSize) {}
	
	
	// Coordinates conversions
	// ------------------------------
	func coordinatesConversions() {
		// the origin point on views is on the top left, on scenes is on the bottom left
		// The scene must be presented in a view before calling this method
		let testPoint = CGPoint(x: 10, y: 10)
		convertPoint(fromView: testPoint)	// converts a point in the view into a point in the scene
		convertPoint(toView: testPoint)		// vice versa
	}
	
	
	// Rendering loop
	// ------------------------------
	// The rendering loop only runs while the scene is currently being presented:
	override func update(_ currentTime: TimeInterval) {}
	// - actions are evaluated
	override func didEvaluateActions() {}
	// - physics are simulated, physics contact delegate methods are triggered if applicable
	override func didSimulatePhysics() {}
	// - constraints are applied
	override func didApplyConstraints() {}
	override func didFinishUpdate() {}
	// - the scene is rendered
	
	
	// Pr - SKSceneDelegate methods
	// ------------------------------
	// If you specify a delegate object, the corresponding methods implemented by the delegate will be triggered instead of the ones from the scene class
	//
	// delegate: SKSceneDelegate?
	func update(_ currentTime: TimeInterval, for scene: SKScene) {}
	func didEvaluateActions(for scene: SKScene) {}
	func didSimulatePhysics(for scene: SKScene) {}
	func didApplyConstraints(for scene: SKScene) {}
	func didFinishUpdate(for scene: SKScene) {}
	
	
	// Adding audio
	// ------------------------------
	func addingAudio() {
		/*
		- The simplest way to add audio is to add a child SKAudioNode
		addChild( SKAudioNode(fileNamed: "drums.mp3") )
		
		- By default, the origin of the generated audio is the scene's origin point, to change this use an existing SKNode as the 'listener' property
		listener: SKNode?
		
		- For more advanced functionality, an AVAudioEngine instance is automatically made available.
		Example for lowering the volume and then pausing the audio:
		audioEngine.mainMixerNode.outputVolume = 0.2
		audioEngine.pause()
		*/
	}
	
	
	// ------------------------------
	// SKPhysicsWorld ???
	// ------------------------------
	func setupPhysicsWorld() {
		// self.physicsWorld
	}
	
	
}

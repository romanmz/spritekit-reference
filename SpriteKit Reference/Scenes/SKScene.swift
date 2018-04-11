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
	// Scenes are each of the different types of screens or gameplay stages that the game presents
	// They are loaded from within a SKView as required, an only one scene can be presented at a time
	// It is actually a subclass of SKNode, but it's specifically set up to be the top node and manage the general scene settings
	
	// [custom properties]
	var baseNode: MySKNode!
	
	
	// Presenting a scene
	// ------------------------------
	// view: SKView?
	override func sceneDidLoad() {
		baseNode = MySKNode(test: "test")
		addChild(baseNode)
		//
		determineVisibleRegion()
		coordinatesConversions()
		addingAudio()
		setupPhysicsWorld()
	}
	override func didMove(to view: SKView) {
		baseNode.initNodes()
	}
	override func willMove(from view: SKView) {
		baseNode.destroyNodes()
	}
	
	
	// Determining the visible region
	// ------------------------------
	func determineVisibleRegion() {
		
		// Set the SKCameraNode object to use to render the scene (optional)
		let cameraNode = SKCameraNode()
		cameraNode.position = CGPoint(x: size.width/2, y: size.height/2)
		addChild(cameraNode)
		camera = cameraNode
		// [test camera movements]
		let cameraMove = SKAction.moveBy(x: 0, y: 25, duration: 5)
		let cameraRotate = SKAction.rotate(byAngle: CGFloat.pi / 4, duration: 5)
		let cameraScale = SKAction.scale(by: 1.2, duration: 5)
		cameraNode.run( SKAction.sequence([ cameraMove, cameraRotate, cameraScale ]) )
		
		// If there's no camera, then the anchorPoint and size properties will be used to determine the region to render
		print("scene size: \(size)")				// The base scene size, if changed manually or automatically it will trigger the 'didChangeSize' method
		print("scene anchor point: \(anchorPoint)")	// The origin point for the coordinates system, only used if a camera is not present. Defaults to (0,0)
		
		// If the scene size doesn't match the size of the presenting view, then it will be scaled according to the 'scaleMode' property:
		scaleMode = .fill			// Scales the scene to fit the view (distortion may occur)
		scaleMode = .aspectFill		// Preserves aspect ratio, fills the view entirely (cropping may occur)
		scaleMode = .aspectFit		// Preserves aspect ratio, makes sure the entire scene is visible (letterboxing may occur)
		scaleMode = .resizeFill		// The scene is not scaled, it is resized to always match the view (updates the 'size' property and triggers 'didChangeSize')
		
		// Set background colour, defaults to a mid grey colour
		backgroundColor = .lightGray
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
		// The simplest way to add audio is to add a child SKAudioNode
		addChild( SKAudioNode(fileNamed: "drums.mp3") )
		
		// By default, the origin of audio nodes are relative to the scene's origin point, to make them relative to a particular node, assign it to the 'listener' property
		listener: SKNode?
		
		// For more advanced functionality, an AVAudioEngine instance is automatically made available
		// Example for lowering the volume and then pausing the audio:
		audioEngine.mainMixerNode.outputVolume = 0.2
		audioEngine.pause()
		*/
	}
	
	
	// Physics simulations
	// ------------------------------
	// Each scene has a built-in physics world object you can use to manage the physics simulation
	func setupPhysicsWorld() {
		// physicsWorld: SKPhysicsWorld
	}
	
	
}

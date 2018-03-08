//
//  SKView.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 7/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class GameView: SKView, SKViewDelegate {
	
	// [custom properties]
	var gameScene: GameScene!
	var settingsScene: SettingsScene!
	var sceneTransition: SKTransition!
	
	// Initialize
	override func didMoveToWindow() {
		
		// [custom properties]
		gameScene = GameScene(size: bounds.size)
		settingsScene = SettingsScene(size: bounds.size)
		sceneTransition = SKTransition.flipHorizontal(withDuration: 0.5)
		
		
		// Debugging info
		// ------------------------------
		// All default to 'false'
		showsNodeCount = true				// displays the total amount of nodes. fewer are better
		showsQuadCount = true				// displays the total amount of quads (actual textured rectangles) used to render the scene. fewer are better
		showsDrawCount = true				// displays the total amount of render passes (some special effects may require multiple). fewer are better
		showsFPS = true						// displays the frame rate. higher is better
		showsPhysics = true					// makes the physics bodies visible
		showsFields = true					// makes the physics fields visible
		
		
		// Performance configuration
		// ------------------------------
		delegate = self
		preferredFramesPerSecond = 30		// defaults to 60
		isAsynchronous = true				// defaults to true.  if false the contents of the view will be synchronized with Core Animation updates ???
		allowsTransparency = true			// defaults to false. defines whether the view will have transparent regions or if it's all opaque (opaque performs better)
		ignoresSiblingOrder = true			// defaults to false. set to true if the order in which sibling nodes are rendered is not important (which improves performance)
		shouldCullNonVisibleNodes = true	// defaults to true.  by default scenes check for offscreen or hidden nodes on every frame and removes them,
											//					  setting this to false improves performance as you'll skip this check, but you'll need to do this culling manually
		
		// Coordinates conversions
		// ------------------------------
		// the origin point on views is on the top left, on scenes is on the bottom left
		let testPoint = CGPoint(x: 10, y: 10)
		convert(testPoint, to: gameScene)	// converts a point in the view into a point in the scene
		convert(testPoint, from: gameScene) // vice versa
		
		
		// Getting rendered nodes as SKTexture's
		// ------------------------------
		// the nodes don't necessarily need to belong to the currently presented scene
		// if the node is not a scene, it will be rendered with a transparent background
		// texture(from: SKNode)
		// texture(from: SKNode, crop: CGRect)
		
		
		// [present default scene]
		presentGame()
	}
	
	
	// SKViewDelegate methods
	// ------------------------------
	func view(_ view: SKView, shouldRenderAtTime time: TimeInterval) -> Bool {
		return true
	}
	
	
	// Presenting scenes
	// ------------------------------
	func presentGame() {
		presentScene(gameScene, transition: sceneTransition)
	}
	func presentSettings() {
		presentScene(settingsScene, transition: sceneTransition)
	}
	func toggleScene() {
		if scene is GameScene {
			presentSettings()
		} else {
			presentGame()
		}
	}
	func pauseScene() {
		isPaused = !isPaused
	}
}

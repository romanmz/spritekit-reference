//
//  ViewController.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 6/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
	
	
	// SKView
	// ------------------------------
	// Represents the root object for a game, since it is a subclass of UIView it can be added anywhere a regular view can,
	// but most of the time you'll want to make it your root view and take up the whole screen. You can define it…
	//
	// 1. As the root view
	//	- Set the root view as SKView on the storyboard
	//	- Then in the controller, cast the default 'view' property as SKView
	//		(whenever needed, as a computed property, or in a function)
	// 2. As subview
	//	- Leave root view as the default UIView
	//	- Create a separate SKView in the controller
	//	- Add it as a subview of the root view
	
	// ***** Pr - SKViewDelegate
	
	
	// SKScene
	// ------------------------------
	// Scenes are each of the different types of screens or gameplay stages that the game presents
	// They are loaded from within a SKView as required, an only one scene can be presented at a time
	// It is actually a subclass of SKNode, but it's specifically set up to be the top node and manage the general scene settings
	
	// ***** Pr - SKSceneDelegate
	
	
	// SKTransition
	// ------------------------------
	// Allows you to create animated transitions between scenes
	
	
	// SKNode
	// ------------------------------
	// Represents the building blocks for the game
	// They have a tree structure, so each node can have a ancestors, siblings and descendants
	// A node's position is relative to its parent
	// They are 'responder' objects which means that you can listen and respond to events and user input
	// The top node is always a scene node
	
	// ----- SKScene
	// ***** SKSpriteNode
	// ***** SKShapeNode
	// ***** SKLabelNode
	// ***** SKVideoNode
	// ***** SKCropNode
	// ***** SKReferenceNode
	// ----- SKTileMapNode
	// ----- SKFieldNode
	// ----- SKCameraNode
	// ----- SKLightNode
	// ----- SKAudioNode
	// ----- SKEmitterNode
	// ----- SKEffectNode
	// ----- SK3DNode
	// ----- SKTransformNode
	
	
	// SKTexture, SKMutableTexture, and SKTextureAtlas
	// ------------------------------
	// Textures hold reusable graphics
	// Mutable textures hold graphics that can be dynamically changed
	// Atlases collect multiple textures and generate a sprite (to improve performance)
	
	
	// Tiles
	// ------------------------------
	// To create large scenes it's better to use tiled graphics instead of a few large images
	// Tiles can be arranged in rectangular, hexagonal or isometric grids
	
	// ***** SKTileMapNode
	// ***** SKTileDefinition
	// ***** SKTileGroupRule
	// ***** SKTileGroup
	// ***** SKTileSet
	// ***** St - SKTileAdjacencyMask
	
	
	// SKAction
	// ------------------------------
	// Actions are used on a node to trigger animations, tree updates, play sounds, or execute custom code
	// They can be individual actions, sequences (multiple actions that run one after the other), or groups (multiple actions running at once)
	// They can also be set to repeat and revert back to a previous state
	// For more advanced actions, there's also the option to define custom logic that will be evaluated every frame
	
	
	// (SKScene)
	//		SKPhysicsWorld				general settings
	//			.add(SKPhysicsJoint)	activates a joint
	//		SKFieldNode*				additional settings applied to child bodies
	// (SKNode)
	//		SKPhysicsBody?				individual settings
	//		SKFieldNode*				=
	// SKPhysicsJoint					links two or more bodies
	//		SKPhysicsBody+
	// ------------------------------
	// If you need to have nodes interact with each other, it is often better to use physics simulations instead of manually managing each node's individual properties
	// This also allows you to simulate gravity and other forces
	//
	// To define the global settings (like gravity), read the 'physics world' property of a scene and modify it (only one per scene, added automatically)
	// Create a 'physics body' and attach it to a node (only one per node) to have the physics forces applied to it, a physics body defines the shape, size, mass, etc… of a node
	//
	// The physics world adds some basic forces by default (like gravity and friction)
	// but you can apply other custom forces using 'field nodes' which you can add to the scene (applies to all bodies)
	// or to individual nodes (affecting only the descendant bodies of that node)
	//
	// You can also link two or more nodes together using 'joints', and adding those joints to the physical world
	//
	// On all cases you can control which physics effects interact with each other (collisions, contact, etc)
	
	// ***** Pr - SKPhysicsContactDelegate
	// ***** SKPhysicsContact
	// ***** SKPhysicsJointFixed
	// ***** SKPhysicsJointLimit
	// ***** SKPhysicsJointPin
	// ***** SKPhysicsJointSliding
	// ***** SKPhysicsJointSpring
	// ***** SKRegion
	
	
	// Particle Systems
	// ------------------------------
	// ***** SKEmitterNode
	// ***** SKKeyframeSequence
	
	
	// Constraints
	// ------------------------------
	// ***** SKConstraint
	// ***** SKRange
	// ***** SKReachConstraints
	
	
	// Transforming Nodes
	// ------------------------------
	// ***** SKWarpGeometry
	// ***** SKWarpGeometryGrid
	// ***** Pr - SKWarpable
	// ***** SKTransformNode
	// ***** SKEffectNode
	
	
	// Cameras, Lightning and Audio
	// ------------------------------
	// ***** SKCameraNode
	// ***** SKLightNode
	// ***** SKAudioNode
	
	
	// Shaders
	// ------------------------------
	// Custom effects for nodes and particles systems
	
	// ***** SKShader
	// ***** SKAttribute
	// ***** SKAttributeValue
	// ***** SKUniform
	
	
	// Integrations
	// ------------------------------
	// ***** SK3DNode		(renders a SceneKit scene as a 2D image)
	// ***** SKRenderer		(allows integration with Metal)
	
	
	// Related Frameworks ???
	// ------------------------------
	// SceneKit
	// Metal
	// Core Graphics
	// Core Image
	// Quartz 2D image (CGImage)
	// OpenGL ES 2.0
	
	
	// Reference
	// ------------------------------
	// Enumerations: https://developer.apple.com/documentation/spritekit/spritekit_enumerations
	// Data Types: https://developer.apple.com/documentation/spritekit/spritekit_data_types
	// Type Aliases: https://developer.apple.com/documentation/spritekit/spritekit_type_aliases
	
	
	// ViewController properties
	var skView: MySKView { return view as! MySKView }
	override var prefersStatusBarHidden: Bool { return true }
	
	// Initialize
	override func viewDidLoad() {
		super.viewDidLoad()
		// manually adding the SKView as a subview:
		// skView = MySKView(frame: view.frame)
		// view.insertSubview(skView, at: 0)
	}
	
	// Event: Button was pressed
	@IBAction func didPressChangeButton(_ sender: UIButton) {
		skView.toggleScene()
	}
	@IBAction func didPressPauseButton(_ sender: UIButton) {
		skView.pauseScene()
	}
}

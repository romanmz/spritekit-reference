//
//  SKNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 9/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKNode: SKNode {
	// this is the class that defines the base behaviour for all nodes, it doesn't draw any contents by itself,
	// however you can use it to represent invisible elements, group other nodes, organise all content into layers, or implement your own subclasses
	// NOTE: Node manipulation should always occur on the main thread, methods implemented by SKViewDelegate, SKScene, and SKSceneDelegate already take care of this
	// to make changes to nodes in other places you need to manually ensure you are on the main thread, or always defer to a delegate object
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(fileNamed:)					// Creates the node based on the given .sks file
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		/*
		// Basic properties
		// ------------------------------
		// Each node is positioned relative to its parent's coordinates system, and any transformations applied to a parent also affects their children
		
		// Size/position
		frame							// get rect of the bounding box of the node's contents (not including children)
		calculateAccumulatedFrame()		// get rect of the bounding box of the node's contents, including all descendant nodes
		position						// get/set the position of the node relative to the coordinates system of its parent. Defaults to (0,0)
		zPosition						// get/set the z position of the node relative to its parent. Defaults to 0. See notes about render order and hit testing.
		
		// Scale/rotation
		xScale							// get/set the scale on the x axis. Defaults to 1
		yScale							// get/set the scale on the y axis. Defaults to 1
		zRotation						// get/set the rotation on the z axis. Defaults to 0 (uses radians, applied counterclockwise)
		setScale( 2.0 )					// set the scale on both axis at once
		
		// Visibility
		alpha							// get/set opacity level from 0 to 1. Defauts to 1
		isHidden						// get/set if a node is rendered in the scene or not (hidden nodes still interact with the scene and other nodes). Defaults to false
		
		// Custom data
		userData						// get/set a dictionary for your own custom data as required by the game, not used by SpriteKit, automatically encoded and decoded
		
		
		// Working with node trees
		// ------------------------------
		
		// Related nodes
		scene: SKScene?
		parent: SKNode?
		children: [SKNode]
		
		// Managing child nodes
		addChild()					// Adds a child node to the end of the array
		insertChild(_:at:)			// Adds a child node at the specified array index
		move(toParent:)				// Moves the current node to a different parent node
		removeFromParent()			// Removes the current node from its parent
		removeAllChildren()			// Removes all child nodes from the current node
		removeChildren(in:)			// Removes a specific list of nodes from the current node
		
		// Comparing nodes
		isEqual(to:)				// Compares the current node to a given node, returns true if they are both the same
		inParentHierarchy(_:)		// Compares the current node to a given node, returns true if the current node is a descendant of the given node
		
		// Naming nodes. See detailed notes later in this doc
		name: String?
		childNode(withName:)					// Returns the first matching node
		enumerateChildNodes(withName:using:)	// Finds all matching nodes and applies a callback to each of them
		[String]								// Returns an array with all matching nodes
		
		
		// Running actions
		// ------------------------------
		// Animations are defined as SKAction ??? elements
		
		// run animations
		run(_:)					// Runs an action on a node, you can call this many times to add multiple actions, but it's best practice to use an 'action group' instead
		run(_:completion:)		// Same but runs a callback block when the action has ended
		
		// using id keys
		run(_:withKey:)			// Runs an action and specifies an id key for it, if an action with the same id is already running it will be removed before adding the new one
		action(forKey:)			// Returns the action that matches the id, if any (actions that already ended are removed from the node, so won't be returned here)
		removeAction(forKey:)	// Removes the action that matches the id, if any
		
		// checks
		hasActions()			// Checks whether or not the node is currently running actions
		removeAllActions()		// Cancels and removes all actions from a node
		
		// properties related to animation
		speed					// get/set the speed modifier at which actions will run in the node. Defaults to 1
		isPaused				// get/set whether or not the actions applied to the node should be paused. Defaults to false
		*/
		
		
		// Coordinates conversions
		// ------------------------------
		
		// [setup test node]
		let testPoint = CGPoint(x: 10, y: 10)
		let testNode = SKNode()
		testNode.position = testPoint
		addChild(testNode)
		
		// Convert coordinates between nodes
		convert(testPoint, from: testNode)		// converts a point in a given node into a point in the current node
		convert(testPoint, to: testNode)		// vice versa
		
		// Check for overlaps
		contains(testPoint)			// checks if a given point is located within the current node's accumulated bounding box, returns a boolean
		atPoint(testPoint)			// returns a descendant node that intersects the point (only looks for visible nodes)
									// if there's multiple nodes that match, returns the one with higher zPosition, and that is deeper on the tree node
									// if there's no matching nodes, then the current node itself will be returned
		nodes(at: testPoint)		// returns all descendant nodes that intersect the point (only visible nodes)
		intersects(testNode)		// returns true if the (non accumulated) bounding box of the given node intersects the bounding box of the current node
		
		
		/*
		// ------------------------------
		// SKPhysicsBody ???
		// ------------------------------
		physicsBody: SKPhysicsBody?
		
		
		// ------------------------------
		// SKConstraint, SKReachConstraints ???
		// ------------------------------
		constraints: [SKConstraint]?
		reachConstraints: SKReachConstraints?
		
		
		// ------------------------------
		// GameplayKit ???
		// ------------------------------
		// Assign an entity to the node
		entity: GKEntity?
		// Create obstacles from existing nodes
		SKNode.obstacles(fromNodeBounds:)
		SKNode.obstacles(fromNodePhysicsBodies:)
		SKNode.obstacles(fromSpriteTextures:, accuracy:)
		
		
		// ------------------------------
		// Accessibility ???
		// ------------------------------
		accessibilityChildren: [Any]?
		accessibilityFrame: CGRect
		accessibilityHelp: String?
		accessibilityLabel: String?
		accessibilityParent: AnyObject?
		accessibilityRole: String?
		accessibilityRoleDescription: String?
		accessibilitySubrole: String?
		focusBehavior: SKNodeFocusBehavior
		isAccessibilityElement: Bool
		isAccessibilityEnabled: Bool
		accessibilityHitTest(_:)
		*/
		
		
		// User interaction
		// ------------------------------
		isUserInteractionEnabled = true		// get/set whether or not the node should detect user interactions and trigger events. Defaults to false
		
		// To handle those events you need to implement the methods of the UIResponder class
		// this example uses 'touchesBegan' but there's many others, for a full reference check out:
		// https://developer.apple.com/documentation/uikit/uiresponder
	}
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		guard
			let scene = self.scene,
			let view = scene.view,
			let touch = touches.first else { return }
		// The UITouch class includes methods for getting the location of the user's touch in the window (passing nil) or in a view's coordinates
		print( "Touch position in window: \(touch.location(in: nil))" )
		print( "Touch position in view: \(touch.location(in: view))" )
		// it also supports passing SKNode elements to find the touch location relative to a node's coordinates:
		print( "Touch position in scene: \(touch.location(in: scene))")
		print( "Touch position in node: \(touch.location(in: self))" )
	}
	
	
	/*
	// ------------------------------
	// Render order and Hit testing
	// ------------------------------
	The order of the nodes in the 'children' array affects rendering and hit testing
	
	ORDER:
	- parent nodes are rendered before their children
	- child nodes are rendered in the order in which they appear in the array
	
	LAYERS:
	- nodes with different 'zPosition' properties are layered on top of each other based on that value
	- nodes with the same 'zPosition' are layered in the order in which they appear in the tree, with later nodes rendered on top of the previous ones
	
	GLOBAL Z POSITION:
	- the 'zPosition' value of child nodes is relative to their parents, but an accumulated global value is calculated for all nodes
	- this makes it possible for nodes in different tree branches to still overlap based on this global value
	- (unlike css in web browsers, where an element's z position is scoped within their parents)
	- an exception is child nodes of SKCropNode and SKEffectNode instances, in these cases the child nodes are scoped
	
	RENDERING OPTIMISATIONS:
	the default behaviour of rendering the nodes in array order prevents the system from applying certain performance optimisations,
	you can enable those but that means that the order in which nodes are rendered will be unpredictable, so make sure you avoid causing issues:
	1. make sure you manually give different 'zPosition' values to nodes that can potentially overlap, where you must ensure that one is always on top of the other
	2. give the same 'zPosition' value to nodes that will never overlap, or that can potentially overlap but it's not important which one ends up on top of the other
	3. set the 'ignoresSiblingOrder' property of the SKView element to 'true'
	this will make it so all nodes with the same 'zPosition' will be grouped together and rendered in one pass instead of multiple individual passes
	
	HIT TESTING:
	- nodes are evaluated for hit-testing (user actions detection) in the reverse order as the rendering order (nodes on top are evaluated before elements on the bottom)
	- to handle user interactions, the nodes already implement the UIResponder class, you just need to manually implement its methods

	
	// ------------------------------
	// Name search syntax
	// ------------------------------
	Types of name search:
	myName						// node names
	StandardClass				// standard class names
	MyModule.CustomClass		// your own custom class names, must be prefixed with the module name
	
	Navigating the tree:
	myName						// only matches direct children of the current node
	/myName						// moves up to the root node
	myName/anotherName			// matches grandchildren
	//myName					// moves up to the root node, and searches all descendant nodes
	myName//anotherName			// matches grandchildren and also further descendants

	Special characters:
	./myName					// . represents to the current node, this example is the same as just passing the name
	../myName					// .. represents to the parent node, this example matches sibling nodes with the passed name
	*							// * matches 0 or more characters (any)
	[0-9]						// matches one character that must be a number between 0 and 9
	[a-z]						// matches one character that must be a letter between a and z
	*/
	
	
	// [adding different types of nodes for testing]
	func initNodes() {
		guard let scene = self.scene else { return }
		
		// test actions (animations)
		let whiteDot = SKSpriteNode(color: .white, size: CGSize(width: 10, height: 10))
		let redDot = SKSpriteNode(color: .red, size: CGSize(width: 10, height: 10))
		addChild(whiteDot)
		addChild(redDot)
		
		self.position = CGPoint(x: scene.size.width/2, y: scene.size.height/2)
		redDot.speed = 2
		
		self.run( SKAction.moveBy(x: 0, y: -100, duration: 5) )
		whiteDot.run( SKAction.moveBy(x: -100, y: 0, duration: 5) )
		redDot.run( SKAction.moveBy(x: 100, y: 0, duration: 5) )
		
		// test light nodes
		let lightNode = MySKLightNode(test: "test")
		lightNode.addChild(SKSpriteNode(color: .yellow, size: CGSize(width: 2, height: 2)))
		addChild(lightNode)
		
		lightNode.position = CGPoint(x: -50, y: -150)
		lightNode.run(SKAction.moveBy(x: 0, y: 300, duration: 5))
		lightNode.zPosition = -1
		
		// test sprite nodes and shaders
		let spriteNode1 = MySKSpriteNode(test: "test")
		let spriteNode2 = MySKSpriteNode(test: "test")
		addChild(spriteNode1)
		addChild(spriteNode2)
		spriteNode2.position = CGPoint(x: 0, y: 50)
		spriteNode2.applyShader()
		
		// test shape node
		let shapeNode = MySKShapeNode(test: "test")
		shapeNode.position = CGPoint(x: 0, y: 100)
		addChild(shapeNode)
		
		// test label node
		let labelNode = MySKLabelNode(test: "test")
		labelNode.position = CGPoint(x: 100, y: 0)
		addChild(labelNode)
		
		// test video node
		let videoNode = MySKVideoNode(test: "test")
		videoNode.position = CGPoint(x: -140, y: 60)
		addChild(videoNode)
		
		// test crop node
		let cropNode = MySKCropNode(test: "test")
		cropNode.position = CGPoint(x: -100, y: 140)
		addChild(cropNode)
	}
	func destroyNodes() {
		removeAllActions()
		removeAllChildren()
	}
	
	
}

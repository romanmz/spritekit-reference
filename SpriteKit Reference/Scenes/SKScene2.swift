//
//  SKScene2.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 6/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

// [another scene object for making extra testing]
class AnotherSKScene: SKScene {
	
	override func willMove(from view: SKView) {
		removeAllActions()
		removeAllChildren()
	}
	override func didMove(to view: SKView) {
		let sceneCenter = CGPoint(x: size.width/2, y: size.height/2)
		backgroundColor = .lightGray
		
		
		// Testing physics world and bodies
		// ------------------------------
		
		// Setup physics world
		physicsWorld.gravity = CGVector(dx: 0, dy: 0)
		let physicsNoise = SKFieldNode.noiseField(withSmoothness: 1, animationSpeed: 0.1)
		addChild(physicsNoise)
		
		// Add purple box
		let purpleBox = SKSpriteNode(color: .purple, size: CGSize(width: 50, height: 50))
		let purpleBoxPhysics = SKPhysicsBody(rectangleOf: purpleBox.frame.size)
		purpleBox.physicsBody = purpleBoxPhysics
		purpleBox.position = sceneCenter
		addChild(purpleBox)
		
		// Add red box
		let redBox = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
		let redBoxPhysics = SKPhysicsBody(rectangleOf: redBox.frame.size)
		redBoxPhysics.pinned = true
		redBox.physicsBody = redBoxPhysics
		redBox.position = CGPoint(x: 10, y: sceneCenter.y)
		addChild(redBox)
		
		
		// Testing constraints
		// ------------------------------
		
		// Add yellow box
		let yellowBox = SKSpriteNode(color: .yellow, size: CGSize(width: 20, height: 20))
		addChild(yellowBox)
		
		// Add position constraints
		let rangeX = SKRange(lowerLimit: sceneCenter.x - 50, upperLimit: sceneCenter.x + 50)
		let rangeY = SKRange(lowerLimit: purpleBox.size.height / 2, upperLimit: self.size.height - purpleBox.size.height / 2)
		let positionConstraint = SKConstraint.positionX(rangeX, y: rangeY)
		purpleBox.constraints = [ positionConstraint ]
		
		// Add orientation constraints
		let orientationConstraint = SKConstraint.orient(to: purpleBox, offset: SKRange(constantValue: CGFloat.pi / 4))
		let rotationConstraint = SKConstraint.zRotation(SKRange(lowerLimit: 0, upperLimit: CGFloat.pi / 2))
		redBox.constraints = [ orientationConstraint, rotationConstraint ]
		
		// Add distance constraints
		let distanceConstraint = SKConstraint.distance(SKRange(lowerLimit: 30, upperLimit: 60), to: purpleBox)
		yellowBox.constraints = [ distanceConstraint ]
		
		
		// Testing inverse kinematics (reach constraints + reach action)
		// ------------------------------
		
		// Define settings
		let jointRadius: CGFloat = 4
		let armSize = CGSize(width: 12, height: 80)
		let armRect = CGRect(x: -armSize.width/2, y: 0, width: armSize.width, height: armSize.height)
		let jointAngleLimit: CGFloat = 90 * CGFloat.pi / 180
		let reachTargetNode = redBox
		let reachSpeed = 3.0
		
		// Create objects
		let shoulder    = SKShapeNode(circleOfRadius: jointRadius)
		let elbow       = SKShapeNode(circleOfRadius: jointRadius)
		let wrist       = SKShapeNode(circleOfRadius: jointRadius)
		let endEffector = SKShapeNode(circleOfRadius: jointRadius)
		let upperArm  = SKShapeNode(rect: armRect)
		let middleArm = SKShapeNode(rect: armRect)
		let lowerArm  = SKShapeNode(rect: armRect)
		endEffector.strokeColor = .green
		
		// Build node tree
		self.addChild(shoulder)
		shoulder.addChild(upperArm)
		upperArm.addChild(elbow)
		elbow.addChild(middleArm)
		middleArm.addChild(wrist)
		wrist.addChild(lowerArm)
		lowerArm.addChild(endEffector)
		
		// Position nodes
		shoulder.position    = sceneCenter
		upperArm.position    = CGPoint.zero
		elbow.position       = CGPoint(x: 0, y: armSize.height)
		middleArm.position   = CGPoint.zero
		wrist.position       = CGPoint(x: 0, y: armSize.height)
		lowerArm.position    = CGPoint.zero
		endEffector.position = CGPoint(x: 0, y: armSize.height)
		
		// Create and apply reach constraints
		let jointConstraint = SKReachConstraints(lowerAngleLimit: 0, upperAngleLimit: jointAngleLimit)
		let armConstraint = SKReachConstraints(lowerAngleLimit: 0, upperAngleLimit: 0)
		shoulder.reachConstraints = jointConstraint
		elbow.reachConstraints = jointConstraint
		wrist.reachConstraints = jointConstraint
		endEffector.reachConstraints = jointConstraint
		upperArm.reachConstraints = armConstraint
		middleArm.reachConstraints = armConstraint
		lowerArm.reachConstraints = armConstraint
		
		// Run 'reach' action
		let reachAction = SKAction.reach(to: reachTargetNode, rootNode: shoulder, duration: reachSpeed)
		endEffector.run(reachAction)
		
		
		// Testing geometry warping
		// ------------------------------
		
		// Create sprite node to be warped
		let warpedNode = MySKSpriteNode(test: "test")
		warpedNode.position = CGPoint(x: 100, y: 200)
		addChild(warpedNode)
		
		// Define warping settings
		let warpReset = SKWarpGeometryGrid(columns: 2, rows: 2)
		let warpSqueeze = MySKWarpGeometryGrid(test: "test")
		
		// Apply warping
		let warpAction = SKAction.animate(withWarps: [warpSqueeze, warpReset, warpSqueeze], times: [2, 4, 6], restore: true)
		warpedNode.warpGeometry = warpReset
		warpedNode.run(warpAction!)
		
		
		// Testing transform node
		// ------------------------------
		let transformedNode = SKSpriteNode(color: .blue, size: CGSize(width: 20, height: 20))
		let transformNode = MySKTransformNode(test: "test")
		transformNode.position = CGPoint(x: 50, y: 100)
		addChild(transformNode)
		transformNode.addChild(transformedNode)
		
		
		// Testing effects node
		// ------------------------------
		let effectTestNode = SKSpriteNode(color: .green, size: CGSize(width: 20, height: 20))
		let effectNode = MySKEffectNode(test: "test")
		effectNode.position = CGPoint(x: 100, y: 100)
		addChild(effectNode)
		effectNode.addChild(effectTestNode)
		
		
	}
}

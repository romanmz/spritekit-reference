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
		
		// Add yellow box
		let yellowBox = SKSpriteNode(color: .yellow, size: CGSize(width: 20, height: 20))
		let yellowBoxPhysics = SKPhysicsBody(rectangleOf: yellowBox.frame.size)
		yellowBox.physicsBody = yellowBoxPhysics
		addChild(yellowBox)
		
		
		// Testing constraints
		// ------------------------------
		
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
		
		
	}
}

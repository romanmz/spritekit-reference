//
//  SKPhysicsBody.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 2/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKPhysicsBody: SKPhysicsBody {
	// A physics body represents an individual element to be included in the physics simulation
	// To enable a physics body, you need to assign it to a node's 'physicsBody' property (nodes are not included in the physics simulation on their own)
	
	
	/*
	// Init shortcuts (volume-based bodies)
	// ------------------------------
	// Volume-based bodies have volume and mass and can be affected by gravity, forces and impulses
	// best to worst performant shapes: circles, rectangles, paths, texture alpha channel
	init(circleOfRadius:)			// defines the body shape using a circle, aligned to the center of the node
	init(circleOfRadius:center:)
	init(rectangleOf:)				// defines the body shape using a rectangle, aligned to the center of the node
	init(rectangleOf:center:)
	init(polygonFrom:)				// defines the body shape using a path (convex polygon, counterclockwise winding, no self-intersections)
	init(texture:size:)				// defines the body shape using a texture's alpha channel
	init(texture:alphaThreshold:size:)
	init(bodies:)					// defines the body shape based on other existing volume-based bodies
	
	
	// Init shortcuts (edge-based bodies)
	// ------------------------------
	// Edge-based bodies have no volume or mass and are unaffected by gravity, forces and impulses
	// they are used to represent boundaries or hollow spaces (as opposed to volume-based bodies, which are solid), and can't collide with other edges
	// best to worst performant edges: lines, rectangles, paths (cost increases with the complexity of the paths)
	init(edgeFrom:to:)				// creates an edge between two points
	init(edgeLoopFrom:)				// creates an edge loop (series of connected and self-closing edges) from a rectangle
	init(edgeLoopFrom:)				// creates an edge loop (series of connected and self-closing edges) from a path (if the path is not closed, it will be closed automatically)
	init(edgeChainFrom:)			// creates an edge chain (series of connected edges) from a path
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Related objects
		// ------------------------------
		// node						// get the node the body was assigned to
		// joints					// get the list of SKPhysicsJoint objects connected to this body that have been added to the physics world
		
		
		// Physics settings (for volume-based bodies only)
		// ------------------------------
		isDynamic = true			// get/set whether or not the body is affected by forces and impulses. Defaults to true
		allowsRotation = true		// get/set whether or not the body can be rotated by forces and impulses. Defaults to true
		affectedByGravity = true	// get/set whether or not the body will be affected by the physics world's gravity force. Defaults to true
		
		
		// Static properties
		// ------------------------------
		// area						// get the area of the body in square meters. This is automatically set when creating the body and it cannot be changed
									// to convert the area from square meters into points, multiply it by 150²
		// density					// get/set the body density in kgs per square meter. Defaults to 1.0
		// mass						// get/set the total body mass in kgs. It always equals area * density, so changing this will automatically update 'density' and viceversa
									// body mass determines how much forces affect the body, and how much momentum it has when it's involved in a collision
		friction = 0.2				// get/set how much friction the body should apply to other bodies that come into contact with it. Values from 0 to 1. Defaults to 0.2
		restitution = 0.2			// get/set how much energy the body should keep after bouncing off another body. Values from 0 to 1. Defaults to 0.2
		linearDamping = 0.1			// get/set how much movement friction is applied to the body. Values from 0 to 1. Defaults to 0.1
		angularDamping = 0.1		// get/set how much rotational friction is applied to the body. Values from 0 to 1. Defaults to 0.1
		pinned = false				// get/set whether or not the body's node should be pinned to its parent node. This prevents the node from moving but it can still rotate
									// if the parent node also has a physics body, both bodies are treated as if they were connected by a pin joint
		
		
		// Dynamic properties
		// ------------------------------
		// velocity					// get/set the current body's velocity vector (meters per second)
		// angularVelocity			// get/set the current body's angular velocity (radians per second)
		// isResting				// get/set whether or not the body is currently static and resting on top of another body
									// resting bodies are excluded from the simulation to improve performance, until a force or collision applies to the node
		
		
		// Applying forces and impulses
		// ------------------------------
		// By default a body is affected by: the gravity force from the physics world, the body's own damping properties, and friction applied by other bodies
		// you can add extra forces and impulses. Forces are applied continuously over a period of time, while impulses are one-off
		
		// applyForce(_:)			// applies a linear acceleration force (newtons vector) to the center of gravity of the body. one frame
		// applyTorque(_:)			// applies an angular acceleration force (newton float). one frame
		// applyForce(_:at:)		// applies an acceleration force (newtons vector) at a given point of the body, which can cause both linear and angular accelerations. one frame
		
		// applyImpulse(_:)			// applies a linear momentum (newton-seconds vector) to the center of gravity of the body
		// applyAngularImpulse(_:)	// applies an angular momentum (newton-seconds float)
		// applyImpulse(_:at:)		// applies a momentum (newton-seconds vector) at a given point of the body, which can cause both linear and angular momentums
		
		
		// Applying force fields
		// ------------------------------
		// fieldBitMask				// get/set the physics field categories that can affect this body. Defaults to all 32 bits
		// charge					// get/set the electrical charge of the body (used only by electromagnetic fields). Defaults to 0
		
		
		// Contacts and collisions
		// ------------------------------
		// Collision: makes two bodies bounce off each other, preventing them from ever overlapping
		// Contact: triggers callback methods on the physics world's contact delegate when two bodies overlap, passing a SKPhysicsContact object to them
		categoryBitMask = 0b0001				// get/set the physics category of the body. Defaults to all 32 bits
		collisionBitMask = 0b0001				// get/set the category of bodies that this body can collide against. Defaults to all 32 bits
		contactTestBitMask = 0b0010				// get/set the category of bodies that this body can come into contact. Defaults to 0 (none)
		usesPreciseCollisionDetection = false	// get/set whether or not to use more precise collision/contact detection. Defaults to false
												// for example to prevent small, fast moving bodies from skipping through other small bodies without triggering a collision
		allContactedBodies()					// returns a list of all the physics bodies that are currently coming into contact with this body
		
		
	}
}

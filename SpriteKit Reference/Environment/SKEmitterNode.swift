//
//  SKEmitterNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 2/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKEmitterNode: SKEmitterNode {
	// An emitter node creates and renders small particle sprites, which behave in a similar way as sprite nodes
	// you can't control those particle sprites directly, their behaviour is defined entirely by the emitter node
	// Particle properties are always relative to the emitter node when being created, but for their subsequenet animation you can decide which node to use as reference
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(fileNamed:)						// Creates the emitter node based on a .sks file
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Emitter properties
		// ------------------------------
		particleBirthRate = 60				// get/set the number of particles to generate per second. Defaults to 0
		numParticlesToEmit = 60 * 10		// get/set the total amount of particles to generate. 0 equals infinite particles. Defaults to 0
		particleRenderOrder = .oldestLast	// get/set the order in which particles should be rendered. Options are .oldestLast, .oldestFirst and .dontCare. Defaults to .oldestLast
		targetNode = nil					// get/set the target node. If this is set, particle sprites will remain relative to the emitter node at origin,
											// but their animations will become relative to the target node defined here
		
		
		// Emitter timeline
		// ------------------------------
		// advanceSimulationTime(_:)		// advances the animation by a given amount of seconds (doesn't work while the emitter node is paused)
		// resetSimulation()				// removes all particles and restarts the animation
		
		
		// Static particle properties
		// ------------------------------
		particleTexture = nil						// get/set the texture to use on the particles. If set, the size will be automatically set to match the texture (unless changed)
		particleSize = CGSize(width: 5, height: 5)	// get/set the size of the particle. Defaults to 0,0
		xAcceleration = 1.0							// get/set the acceleration to apply to the particles' horizontal velocity. Defaults to 0
		yAcceleration = 0.0							// get/set the acceleration to apply to the particles' vertical velocity. Defaults to 0
		particleBlendMode = .alpha					// get/set the blending mode to apply to the particles. Defaults to .alpha
		particleAction = nil						// get/set the action to apply to each particle. WARNING: can severely impact performance
		fieldBitMask = 0							// get/set the categories of physics fields that can affect the particles
		particleZPosition = 1						// get/set the z position of all particles. Defaults to 0
		
		
		// Variable particles properties (initial values)
		// ------------------------------
		particleLifetime = 5				// get/set the lifetime of a particle in seconds.		Defaults to 0
		particlePosition = CGPoint.zero		// get/set the initial position of the particle.		Defaults to 0,0
		particleSpeed = 10					// get/set the initial position speed of the particle.	Defaults to 0
		emissionAngle = 0					// get/set the initial direction of the particle.		Defaults to 0
		particleRotation = 0.0				// get/set the initial angle of the particle.			Defaults to 0
		particleScale = 3.0					// get/set the initial scale of the particle.			Defaults to 1.0
		particleColor = .red				// get/set the initial colour of the particle. If a texture is set, this will be used to colorize it. Defaults to .clear
		particleColorBlendFactor = 0.0		// get/set the initial colour blend factor.				Defaults to 0
		particleAlpha = 1.0					// get/set the initial alpha value of the particle.		Defaults to 1
		
		
		// Variable particle properties (randomizer ranges for initial values)
		// ------------------------------
		particleLifetimeRange = 2
		particlePositionRange = CGVector(dx: 0, dy: 0)
		particleSpeedRange = 0.2
		emissionAngleRange = CGFloat.pi * 2
		particleRotationRange = 0
		particleScaleRange = 1
		particleColorRedRange = 0
		particleColorGreenRange = 1
		particleColorBlueRange = 0
		particleColorAlphaRange = 0
		particleColorBlendFactorRange = 0
		particleAlphaRange = 0
		
		
		// Variable particle properties (value changes per second)
		// ------------------------------
		particleRotationSpeed = CGFloat.pi / 20
		particleScaleSpeed = 0.2
		particleColorRedSpeed = 1
		particleColorGreenSpeed = 0
		particleColorBlueSpeed = 0
		particleColorAlphaSpeed = 0
		particleColorBlendFactorSpeed = 0
		particleAlphaSpeed = -0.2
		
		
		// Using SKKeyframeSequence objects to animate particle properties (if set, the inital value, randomization ranges, and speed properties will be ignored)
		// ------------------------------
		// particleScaleSequence
		particleColorSequence = MySKKeyframeSequence(test: "test")
		// particleColorBlendFactorSequence
		// particleAlphaSequence
		
		
		/*
		// Adding shaders (applied to each particle individually)
		// ------------------------------
		// Same as in sprite nodes:
		shader: SKShader?
		attributeValues: [String: SKAttributeValue]
		setValue(_:forAttribute:)
		value(forAttributeNamed:)
		*/
	}
	
	
	/*
	// Performance Tips
	// ------------------------------
	- create the particle emitter using the xcode editor, and adjust with code only for functionality that the editor doesn't allow
	- try to keep the number of particles as low as possible for better performance
	- use actions on particles only when there isn't any other option
	- use target nodes if the particles need to remain independent of the emitter after being created
	- remove emitter nodes from the screen when they are not visible, add them back right before they become visible again
	*/
	
	
}

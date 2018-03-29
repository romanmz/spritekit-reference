//
//  SKAction.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 22/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKAction: SKAction {
	// Actions are objects that describe reusable animations that you can run on nodes
	// They are only processed on nodes that are currently being presented, and remain paused on all others
	// When an action is removed from a node before it has finished running, the current transformations on the node are preserved
	// Performance tips: 1. create actions early on  2. pass them on (for example using the 'userData' property)  3. reuse them
	// To keep track of changes applied to a node while an action is running, use the methods of the SKSceneDelegate protocol (property observers are not triggered)
	
	
	/*
	// Type methods - Initializers (for grouping other actions)
	// ------------------------------
	group(_:)						// Runs multiple actions at once. The duration is the same as the longest contained action. Is reversible
	sequence(_:)					// Runs multiple actions sequentially. The duration is the sum of the duration of all actions. Is reversible
	repeat(_:count:)				// Runs a single action multiple times. Is reversible
	repeatForever(_:)				// Runs a single action forever. Is reversible (repeats the reverse action forever)
	wait(forDuration:)				// Stays idle for a given amount of time. Used on sequences or directly on run(_:completion:). Not reversible
	wait(forDuration:withRange:)	// Same but the time is randomized (given the limits defined with withRange)
	
	
	// Type methods - Initializers
	// ------------------------------
	
	// Move nodes
	move(by:duration:)				// Relative position. Is reversible
	moveBy(x:y:duration:)
	move(to:duration:)				// Absolute position. Not reversible
	moveTo(x:duration:)
	moveTo(y:duration:)
	
	// Move nodes along a CGPath
	follow(_:asOffset:orientToPath:duration:)	// 'asOffset' makes the points in the path relative, 'orientToPath' animates the node's zPosition during the path. Is reversible
	follow(_:duration:)							// Shortcut, sets 'asOffset' and 'orientToPath' as 'true'
	follow(_:asOffset:orientToPath:speed:)		// Same but you set the speed of movement instead of the total duration
	follow(_:speed:)							// Shortcut, sets 'asOffset' and 'orientToPath' as 'true'
	
	// Rotate nodes
	rotate(byAngle:duration:)					// Relative rotation. Is reversible
	rotate(toAngle:duration:)					// Absolute rotation. Not reversible
	rotate(toAngle:duration:shortestUnitArc:)	// Same, but set 'shortestUnitArc' to true to rotate in the direction that results in the smallest rotation
	
	// Speed up/slow down nodes
	speed(by:duration:)				// Relative speed. Is reversible
	speed(to:duration:)				// Absolute speed. Not reversible
	
	// Scale nodes
	scale(by:duration:)				// Relative xScale and yScale. Is reversible
	scale(to:duration:)				// Absolute xScale and yScale (using a float value). Not reversible
	scale(to:duration:)				// Absolute xScale and yScale (automatically calculated to match the given CGSize value). Not reversible
	scaleX(by:y:duration:)			// Relative xScale and yScale. Is reversible
	scaleX(to:y:duration:)			// Absolute xScale and yScale. Not reversible
	scaleX(to:duration:)			// Same but only for the xScale property
	scaleY(to:duration:)			// Same but only for the yScale property
	
	// Toggle nodes
	hide()							// Set 'isHidden' to true. Is an instantaneous action. Is reversible
	unhide()						// Set 'isHidden' to false. Is an instantaneous action. Is reversible
	
	// Fade nodes
	fadeIn(withDuration:)			// Animates the alpha property to 1.0. Is reversible (but always goes down to 0.0)
	fadeOut(withDuration:)			// reverse
	fadeAlpha(by:duration:)			// Relative alpha. Is reversible
	fadeAlpha(to:duration:)			// Absolute alpha. Not reversible
	
	// Alter node trees
	removeFromParent()				// Removes the node. Is instantaneous. Not reversible
	run(_:onChildWithName:)			// Runs an action on a child node. Is instantaneous. Is reversible
	
	
	// Type methods - Initializers (to be used on sprite nodes)
	// ------------------------------
	
	// Resize sprite nodes
	resize(byWidth:height:duration:)			// Relative size. Is reversible
	resize(toWidth:height:duration:)			// Absolute size. Not reversible
	resize(toWidth:duration:)
	resize(toHeight:duration:)
	
	// Change graphics of sprite nodes
	setTexture(_:resize:)						// If 'resize' is true the node will be resized to match the new texture. Is instantaneous. Not reversible
	setTexture(_:)
	setNormalTexture(_:resize:)
	setNormalTexture(_:)
	
	// Animate graphics of sprite nodes
	animate(with:timePerFrame:resize:restore:)	// If 'resize' is true the node will be resized every time the texture changes
												// If 'restore' is true the node will revert back to its original texture at the end of the animation
												// Is reversible
	animate(with:timePerFrame:)
	animate(withNormalTextures:timePerFrame:resize:restore:)
	animate(withNormalTextures:timePerFrame:)
	
	// Colorize sprite nodes
	colorize(with:colorBlendFactor:duration:)	// Not reversible
	colorize(withColorBlendFactor:duration:)
	
	
	// Type methods - Initializers (to be used on nodes with reach constraints / inverse kinematics)
	// ------------------------------
	
	// Rotate each node in a tree to make them reach a given target
	reach(to:rootNode:duration:)				// Target a SKNode element. Not reversible
	reach(to:rootNode:velocity:)
	reach(to:rootNode:duration:)				// Target a CGPoint. Not reversible
	reach(to:rootNode:velocity:)
	
	
	// Type methods - Initializers (to be used on nodes with warp geometries)
	// ------------------------------
	
	// Warp nodes
	warp(to:duration:)							// Apply a single warp geometry
	animate(withWarps:times:)					// Apply multiple warp geometries sequentially, indicating the time at which each one should be completed
	animate(withWarps:times:restore:)			// If 'restore' is true, the node will revert back to its original geometry
	
	
	// Type methods - Initializers (to be used on physics bodies) ???
	// ------------------------------
	applyForce(_:duration:)
	applyTorque(_:duration:)
	applyForce(_:at:duration:)
	applyImpulse(_:duration:)
	applyAngularImpulse(_:duration:)
	applyImpulse(_:at:duration:)
	changeCharge(to:duration:)
	changeCharge(by:duration:)
	changeMass(to:duration:)
	changeMass(by:duration:)
	strength(to:duration:)
	strength(by:duration:)
	falloff(to:duration:)
	falloff(by:duration:)
	
	
	// Type methods - Initializers (to be used on audio nodes) ???
	// ------------------------------
	playSoundFileNamed(_:waitForCompletion:)	// Play a sound file, if 'waitForCompletion' is true the duration is the same as the audio playback, otherwise is instantaneous
	play()										// Plays the audio node. Not reversible
	pause()										// Pauses the audio node.
	stop()										// Stops the audio node.
	changePlaybackRate(to:duration:)
	changePlaybackRate(by:duration:)
	changeVolume(to:duration:)					// Changes the volume of the node to the given value. Not reversible
	changeVolume(by:duration:)					// Same but relative to the current volume. Is reversible
	changeObstruction(to:duration:)
	changeObstruction(by:duration:)
	changeOcclusion(to:duration:)
	changeOcclusion(by:duration:)
	changeReverb(to:duration:)
	changeReverb(by:duration:)
	stereoPan(to:duration:)						// Animates the stereo panning value to the given value. Not reversible
	stereoPan(by:duration:)						// Same but relative to the current value. Is reversible
	
	
	// Type methods - Creating custom actions
	// ------------------------------
	customAction(withDuration:actionBlock:)		// Executes a given block repeatedly over a period of time. The block receives two arguments: the node and the elapsed time
	run(_:)										// Calls a block of code. Is instantaneous. Not reversible
	run(_:queue:)								// Same but makes sure the block runs on a specific queue
	perform(_:onTarget:)						// Calls a method from a given object. Is instantaneous. Not reversible
	
	
	// Init shortcuts
	// ------------------------------
	init(named:)								// Loads the action of the given name from an .sks action file
	init(named:duration:)						// Same but overrides the duration
	init(named:from:)							// Same but from a specific file URL
	init(named:from:duration:)					// Same but overrides the duration
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Action properties
		// ------------------------------
		speed = 1.0						// get/set the speed factor of the action. E.g. 2.0 makes the action run twice as fast. Defaults to 1.0
		let _ = duration 				// get/set the duration required to complete the action (which is then multiplied by the action and the node's 'speed' rate)
		timingMode = .easeIn			// get/set the timing mode. Options are .linear, .easeIn, .easeOut and .easeIneaseOut
		let _ = timingFunction			// get/set the timing function. This function allows you to further customize the timing of the action. Receives and returns a float value
		
		
		// Generate new actions
		// ------------------------------
		reversed()						// Creates and returns an action that reverses the effects of the current action
		
		
	}
}

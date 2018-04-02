//
//  SKKeyframeSequence.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 2/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKKeyframeSequence: SKKeyframeSequence {
	// Defines custom animations by setting a list of timestamps from 0 to 1, and a list of values to reach at each timestamp, interpolating the rest
	// This class was created to be used with emitter nodes, but its value interpolation capabilities can be used in any other contexts
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(keyframeValues:times:)						// Creates the list of keyframes based on a list of timestamps and a list of their corresponding values
	init(capacity:)									// Creates a new empty sequence with a given number of empty keyframes
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init(keyframeValues: [SKColor.yellow, SKColor.red, SKColor.purple, SKColor.blue], times: [0, 0.33, 0.66, 0.99])
		
		
		// Defining keyframes (timestamp and value pairs)
		// ------------------------------
		addKeyframeValue(SKColor.purple, time: 1)	// adds a new keyframe
		removeLastKeyframe()						// removes the last keyframe
		// setKeyframeTime(_:for:)					// sets a new timestamp for a given keyframe
		// setKeyframeValue(_:for:)					// sets a new value for a given keyframe
		// setKeyframeValue(_:time:for:)			// replaces a given keyframe
		// removeKeyframe(at:)						// removes a given keyframe
		
		
		// Keyframe sequence properties
		// ------------------------------
		interpolationMode = .linear					// get/set the interpolation mode between keyframes. Options are .linear, .spline and .step. Defaults to .linear
		repeatMode = .clamp							// get/set what to do when requesting a time sequence outside the defined timestamps. Defaults to .clamp
													// Options are .clamp (return the last relevant value) or .loop (restart the animation after the last timestamp)
		
		
		// Retrieving information
		// ------------------------------
		// count()									// returns the current number of keyframes
		// getKeyframeTime(for:)					// returns the timestamp of a given keyframe
		// getKeyframeValue(for:)					// returns the value of a given keyframe
		// sample(atTime:)							// returns the generated value at a given timestamp
		
		
	}
}

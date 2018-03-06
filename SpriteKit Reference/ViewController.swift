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
	
	// Properties
	var skView: SKView!
	override var prefersStatusBarHidden: Bool {
		return true
	}
	
	// Initialize
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Setup view
		skView = SKView(frame: view.frame)
		skView.showsFPS = true
		skView.showsNodeCount = true
		skView.ignoresSiblingOrder = true
		view.insertSubview(skView, at: 0)
		
		// Load main game scene
		let gameScene = GameScene(size: view.bounds.size)
		gameScene.scaleMode = .resizeFill
		skView.presentScene(gameScene)
	}
	
	// Event: Button Pressed
	@IBAction func didPressButton(_ sender: UIButton) {
		let settingsScene = SettingsScene(size: view.bounds.size)
		settingsScene.scaleMode = .resizeFill
		let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
		skView.presentScene(settingsScene, transition: reveal)
	}
	
}

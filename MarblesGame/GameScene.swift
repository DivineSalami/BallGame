//
//  GameScene.swift
//  MarblesGame
//
//  Created by P.M. Student on 4/12/21.
//

import SpriteKit
import GameplayKit

class Marble: SKSpriteNode { }

class GameScene: SKScene {
    
    var marbles = ["marbleBlue", "marbleRed", "marbleYellow", "marbleGreen", "marblePurple"]
    
    override func didMove(to view: SKView) {
        let marble = SKSpriteNode(imageNamed: "marbleBlue")
        let marbleRadius = marble.frame.width / 2.0
        
        
        for i in stride(from: marbleRadius, to: view.bounds.width, by: marble.frame.width) {
            for j in stride(from: 100, to: view.bounds.height - marbleRadius, by: marble.frame.height) {
                let marbleType = marbles.randomElement()!
                let marble = Marble(imageNamed: marbleType)
                marble.position = CGPoint(x: i, y: j)
                marble.name = marbleType
                
                
                marble.physicsBody = SKPhysicsBody(circleOfRadius: marbleRadius)
                marble.physicsBody?.allowsRotation = false
                marble.physicsBody?.friction = 0
                marble.physicsBody?.restitution = 0
                
                addChild(marble)
                
            }
        }
        
        }
    
    override func update(_ currentTime: TimeInterval) {
    }
}

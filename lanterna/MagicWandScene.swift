//
//  MagicWandScene.swift
//  lanterna
//
//  Created by Aurian Moura de Lira on 29/11/24.
//

import SwiftUI
import SpriteKit

class FlashlightScene: SKScene {
    let flashlight = SKLightNode()
    //iniciei o background como um node para poder manipular a interação dele com a luz
    let background = SKSpriteNode(color: .white, size: CGSize.zero)
    let catNode = SKSpriteNode(imageNamed: "cat")
    
    override func didMove(to view: SKView) {
        
        // Configurações do background
        background.size = self.size
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        // Aqui ele pode ser iluminado pela luz
        background.lightingBitMask = 1
        addChild(background)
        
        // Configurações da lanterna
        flashlight.categoryBitMask = 1
        // Ajuste da área que a lanterna ilumina
        flashlight.falloff = 4
        flashlight.lightColor = .white
        flashlight.ambientColor = .black
        flashlight.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(flashlight)
        
        // Configurações da imagem
        let catWidth = size.width * 0.8
        let catHeight = size.height * 0.8
        catNode.size = CGSize(width: catWidth, height: catHeight)
        catNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        catNode.lightingBitMask = 1
        addChild(catNode)
    }
    
    //Função que permite arrastar a luz com o toque
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            flashlight.position = touch.location(in: self)
        }
    }
}

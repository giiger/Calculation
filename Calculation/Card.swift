//
//  Card.swift
//  Calculation
//
//  Created by Alex Giger on 5/16/20.
//  Copyright © 2020 Alexander. All rights reserved.
//

import SpriteKit

enum CardType :Int {
  case spade,
  club,
  heart,
  diamond
}

class CardNode : SKSpriteNode {
  let cardType :CardType
  let frontTexture :SKTexture
  let backTexture :SKTexture
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("NSCoding not supported")
  }
  
  init(cardType: CardType) {
    self.cardType = cardType
    backTexture = SKTexture(imageNamed: "gray_back")
    
    switch cardType {
    case .spade:
      frontTexture = SKTexture(imageNamed: "AS")
    case .club:
      frontTexture = SKTexture(imageNamed: "AC")
    case .heart:
      frontTexture = SKTexture(imageNamed: "AH")
    case .diamond:
    frontTexture = SKTexture(imageNamed: "AD")
    }
    
    super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
  }
}

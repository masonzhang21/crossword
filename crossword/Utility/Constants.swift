//
//  Constants.swift
//  crossword
//
//  Created by Mason Zhang on 4/27/20.
//  Copyright © 2020 mason. All rights reserved.
//

import Foundation
import SwiftUI

struct Constants {
    
    struct Colors {
        static let darkGrey: Color = Color(red: 20/255, green: 20/255, blue: 20/255)
        static let lightGrey: Color = Color(red: 230/255, green: 230/255, blue: 230/255)
        static let blue: Color = Color(red: 33/255, green: 150/255, blue: 243/255)
        
        static let currentTile: UIColor = UIColor(red: 180/255, green: 80/255, blue: 255/255, alpha: 1)
        static let currentWord: UIColor = UIColor(red: 200/255, green: 150/255, blue: 255/255, alpha: 1)
        static let defaultTile: UIColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        
        static let incorrectAns: UIColor = UIColor(red: 255/255, green: 16/255, blue: 0/255, alpha: 1)
                static let correctAns: UIColor = UIColor(red: 20/255, green: 100/255, blue: 30/255, alpha: 1)
                static let pencilAns: UIColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
                static let defaultAns: UIColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        
        static let cluePanelArrows: Color = Color(red: 193/255, green: 135/255, blue: 255/255)
        static let cluePanel: Color = Color(red: 200/255, green: 150/255, blue: 255/255)
    }
    
    
}

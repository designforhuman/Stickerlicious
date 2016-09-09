//
//  CandyBrowserViewController.swift
//  Stickerlicious
//
//  Created by LeeDavid on 9/9/16.
//  Copyright © 2016 Daylight. All rights reserved.
//

import UIKit
import Messages


let stickerNames = ["CandyCane", "Caramel", "ChocolateBar", "ChocolateChip", "DarkChocolate", "GummiBear", "JawBreaker", "Lollipop", "SourCandy"]


class CandyBrowserViewController: MSStickerBrowserViewController {
    
    var stickers = [MSSticker]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadStickers()
        stickerBrowserView.backgroundColor =  #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        
    }
    
}



extension CandyBrowserViewController {
    fileprivate func loadStickers() {
        stickers = stickerNames.map({ name in
            let url = Bundle.main.url(forResource: name, withExtension: "png")!
            return try! MSSticker(contentsOfFileURL: url, localizedDescription: name)
        })
    }
    
    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {
        return stickers.count
    }
    
    override func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker {
        return stickers[index]
    }
    
}













//
//  FantasticView.swift
//  FantasticView
//
//  Created by Cody Fazio on 9/12/17.
//  Copyright © 2017 Cody Fazio. All rights reserved.
//

import UIKit


class FantasticView : UIView {

    let colors : [UIColor] = [.red, .blue, .green, .yellow, .purple, .orange]
    var colorCounter = 0
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

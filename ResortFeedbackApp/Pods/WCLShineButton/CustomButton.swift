//
//  CustomButton.swift
//  WCLShineButton
//
//  Created by Kirtland Ross on 5/3/21.
//

import UIKit

class CustomButton: WCLShineButton {

    required public init?(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)
        self.image = .star
        params.bigShineColor = UIColor(rgb: (255,245,71))
        params.smallShineColor = UIColor(rgb: (255,255,255))



    }

    }



//
//  CucumberishInitializer.swift
//  TodoListAppUITests
//
//  Created by mohamed habib on 4/22/20.
//  Copyright © 2020 mohamed habib. All rights reserved.
//

import Foundation
import Cucumberish

class CucumberishInitializer: NSObject {
    
    @objc class func setupCucumberish() {
        
        before({ _ in
            
           
            
        })
        
        let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(inDirectory: "Features", from: bundle, includeTags: nil, excludeTags: nil)
        
    }
    
}

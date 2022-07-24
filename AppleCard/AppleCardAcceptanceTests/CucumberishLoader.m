//
//  CucumberishLoader.m
//  TodoListAppUITests
//
//  Created by mohamed habib on 4/22/20.
//  Copyright © 2020 mohamed habib. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppleCardAcceptanceTests-Swift.h"

__attribute__((constructor))
void CucumberishInit(){
    
    [CucumberishInitializer setupCucumberish];
}


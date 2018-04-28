//
//  AppDelegate.h
//  Sequence
//
//  Created by Slava on 4/27/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyClass.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (weak, nonatomic) MyClass* clas;
@property (strong, nonatomic) UIWindow *window;


@end


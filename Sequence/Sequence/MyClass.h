//
//  MyClass.h
//  Sequence
//
//  Created by Slava on 4/27/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject

@property (strong,nonatomic) NSArray* array;

- (NSNumber*)sequenceLength:(NSArray*)array;
- (NSNumber*)summ;

@end

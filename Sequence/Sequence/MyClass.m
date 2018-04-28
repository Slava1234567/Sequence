//
//  MyClass.m
//  Sequence
//
//  Created by Slava on 4/27/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import "MyClass.h"

@interface MyClass ()

@property (assign, nonatomic,readwrite) NSInteger length;

@end

@implementation MyClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.array = [NSArray array];
        self.length = 0;
    }
    return self;
}


- (NSNumber*)sequenceLength:(NSArray*)array {
    
    NSArray *sortArray = [array sortedArrayUsingSelector:@selector(compare:)];
    
    NSMutableArray* temporaryArray = [NSMutableArray array];
    NSInteger beforeValue = [sortArray[0]integerValue] - 1;
    
    for (int i = 0; i < [sortArray count]; i++){
        
        if ([sortArray[i] integerValue] == (beforeValue + 1)) {
            self.length += 1;
            [temporaryArray addObject:array[i]];
            beforeValue = [sortArray[i]integerValue];
        } else {
            beforeValue = [sortArray[i]integerValue];
            if ([temporaryArray count] > self.length){
                self.length = [temporaryArray count];
                [temporaryArray removeAllObjects];
            }
        }
    }
    NSNumber *count = [NSNumber numberWithInteger:self.length];
    self.length = 0;
    
    return count;
}

- (NSNumber*) summ {
    
    NSNumber *a = [self valueForKeyPath:@"array.@sum.self"];
    
    return a;
}


@end


//
//  NSObject_Recipe.h
//  PartyAnimal
//
//  Created by 李偉誠 on 8/15/14.
//  Copyright (c) 2014 Victoire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *prepTime;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSArray  *ingredients;

@end

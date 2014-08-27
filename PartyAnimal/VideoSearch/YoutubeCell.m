//
//  YoutubeCell.m
//  PartyAnimal
//
//  Created by Joe on 8/26/14.
//  Copyright (c) 2014 Victoire. All rights reserved.
//

#import "YoutubeCell.h"

@implementation YoutubeCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

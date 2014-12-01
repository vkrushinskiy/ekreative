//  DCTableViewCell.m
//  Created by Vadim Krushinskiy on 14/11/14.
//  Copyright (c) 2014. All rights reserved.

#import "DCTableViewCell.h"

@implementation DCTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{   self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) { }
    return self; }

- (void)awakeFromNib { }

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{ [super setSelected:selected animated:animated]; }
@end

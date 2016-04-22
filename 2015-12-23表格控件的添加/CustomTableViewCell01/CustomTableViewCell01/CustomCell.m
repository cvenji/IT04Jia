//
//  CustomCell.m
//  CustomTableViewCell01
//
//  Created by 于苗 on 15/12/23.
//  Copyright © 2015年 yumiao. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

//-(id)init
//{
//    self = [super init];
//    if (self)
//    {
//        
//    }
//    return self;
//}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _headerImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 0, 50, 40)];
        [self.contentView addSubview:_headerImageView];
        _btn = [UIButton buttonWithType:UIButtonTypeSystem];
        _btn.frame = CGRectMake(70, 0, 60, 45);
        [_btn setTitle:@"button" forState:normal];
        [self.contentView addSubview:_btn];
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(200, 0, 100, 40)];
        [self.contentView addSubview:_titleLabel];       
        
    }
    return self;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

//
//  FastCell.h
//  -
//
//  Created by Ilya Ilin on 3/27/13.
//  Copyright (c) 2013 -. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FastCell : UICollectionViewCell

@property (nonatomic, retain) UIView* backView;
@property (nonatomic, retain) UIView* contentView;


- (void) drawContentView:(CGRect)r;

@end

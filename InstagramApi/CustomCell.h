//
//  CustomCell.h
//  InstagramApi
//
//  Created by Abhishek Vora on 12/07/16.
//  Copyright © 2016 Abhishek Vora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lowResImageUrlLabel;

@property (weak, nonatomic) IBOutlet UILabel *stdResImageUrlLabel;

@property (weak, nonatomic) IBOutlet UILabel *captionLabel;

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;

@property (weak, nonatomic) IBOutlet UILabel *postingUserNameLabel;


@end

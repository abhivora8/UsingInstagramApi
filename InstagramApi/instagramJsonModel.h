//
//  instagramJsonModel.h
//  InstagramApi
//
//  Created by Abhishek Vora on 09/07/16.
//  Copyright © 2016 Abhishek Vora. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface instagramJsonModel : NSObject

@property (strong,nonatomic) NSString *objectType;  //ex: image
@property (nonatomic) NSNumber *numberOfComments;  //in the "comments" key
@property (nonatomic) NSNumber *numberOfLikes; //in the "likes" key
@property (strong,nonatomic) NSString *lowResolutionImageUrl;   //in "images" key
@property (strong,nonatomic) NSString *standardResolutionImageUrl;  //in "images" key
@property (strong,nonatomic) NSString *userName;    //in "user" key in "users_in_photo"
@property (strong,nonatomic) NSString *userProfilePictureUrl;   //in "user" key in "users_in_photo"
@property (strong,nonatomic) NSString *postingUserName;     //the user who posted the material
@property (strong,nonatomic) NSString *captionText; //in the "caption" key
@property (strong,nonatomic) NSMutableArray *mainData;  //this contains all the data
@property (strong,nonatomic) NSMutableArray *results;

-(id)initWithDict:(NSMutableDictionary *)mainDict;


@end

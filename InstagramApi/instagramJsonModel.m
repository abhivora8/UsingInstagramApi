//
//  instagramJsonModel.m
//  InstagramApi
//
//  Created by Abhishek Vora on 09/07/16.
//  Copyright © 2016 Abhishek Vora. All rights reserved.
//

#import "instagramJsonModel.h"

@implementation instagramJsonModel

-(id)initWithDict:(NSMutableDictionary *)mainDict
{
    self = [super init];
    
    if(self) {
        self.mainData = [mainDict objectForKey:@"data"];
        
//        for (NSDictionary *data in self.mainData ){
        NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
            self.objectType = [data objectForKey:@"type"];
           
            NSMutableDictionary *commentsKey = [data objectForKey:@"comments"];
            self.numberOfComments = [commentsKey objectForKey:@"count"];
            
            NSMutableDictionary *likesKey = [data objectForKey:@"likes"];
            self.numberOfLikes = [likesKey objectForKey:@"count"];
            
            NSMutableDictionary *imagesKey = [data objectForKey:@"images"];
            NSMutableDictionary *lowResolutionKey = [imagesKey objectForKey:@"low_resolution"];
            self.lowResolutionImageUrl = [lowResolutionKey objectForKey:@"url"];
            NSMutableDictionary *stdResolutionKey = [imagesKey objectForKey:@"standard_resolution"];
            self.standardResolutionImageUrl = [stdResolutionKey objectForKey:@"url"];
            
            NSMutableArray *usersInPhotoKey = [data objectForKey:@"users_in_photo"];
            for(NSDictionary *usersInPhoto in usersInPhotoKey)
            {
                NSMutableDictionary *userKey = [usersInPhoto objectForKey:@"user"];
                self.userName = [userKey objectForKey:@"username"];
                self.userProfilePictureUrl = [userKey objectForKey:@"profile_picture"];
            }
            
            NSMutableDictionary *captionKey = [data objectForKey:@"caption"];
            NSMutableDictionary *fromKey = [captionKey objectForKey:@"from"];
            self.captionText = [captionKey objectForKey:@"text"];
            self.postingUserName = [fromKey objectForKey:@"username"];
            
        }
    return self;
}



@end

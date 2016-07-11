//
//  InstagramDataTableViewController.m
//  InstagramApi
//
//  Created by Abhishek Vora on 09/07/16.
//  Copyright © 2016 Abhishek Vora. All rights reserved.
//

#import "InstagramDataTableViewController.h"
#import "instagramJsonModel.h"

@interface InstagramDataTableViewController ()
{
    instagramJsonModel *model;
}

@end

@implementation InstagramDataTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *mainInstagramUrl = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.instagram.com/v1/tags/techtatva16/media/recent?access_token=630237785.f53975e.8dcfa635acf14fcbb99681c60519d04c"]];

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        @try {
            NSData *mydata = [NSData dataWithContentsOfURL:mainInstagramUrl];
            NSError *error;
            
            if (mydata!=nil)
            {
                id jsonData = [NSJSONSerialization JSONObjectWithData:mydata options:kNilOptions error:&error];
                model = [[instagramJsonModel alloc] initWithDict:jsonData];     // change jsonData into model type
                
//                NSLog(@"Object Type: %@",model.objectType);
//                NSLog(@"low res. img. url: %@",model.lowResolutionImageUrl);
//                NSLog(@"User Name: %@",model.userName);
//                NSLog(@"user pic url: %@",model.userProfilePictureUrl);
//                NSLog(@"caption text: %@",model.captionText);
//                NSLog(@"Party who put up the post: %@",model.postingUserName);
//                NSLog(@"Number of comments: %@",model.numberOfComments);
//                NSLog(@"Number of likes: %@",model.numberOfLikes);
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self.tableView reloadData];
                });
            }
        }
        @catch (NSException *exception) {
            
        }
        @finally {
            
        }
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

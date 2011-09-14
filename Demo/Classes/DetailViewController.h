//
//  DetailViewController.h
//  EGOPhotoViewerDemo_iPad
//
//  Created by enormego on 4/10/10April10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

#ifndef BUILD_FOR_3_0 
<UIPopoverControllerDelegate, UISplitViewControllerDelegate, UIPopoverControllerDelegate> 
#endif

{
    
#ifndef BUILD_FOR_3_0 
    UIPopoverController *popoverController;
#endif
    UIToolbar *toolbar;
    
    id detailItem;
    UILabel *detailDescriptionLabel;
}

@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;

@property (nonatomic, retain) id detailItem;
@property (nonatomic, retain) IBOutlet UILabel *detailDescriptionLabel;

@end

//
//  EGOThumbsViewController.h
//  EGOPhotoViewer
//
//  Created by Henrik Nyh on 2010-06-25.
//  Copyright 2010 Henrik Nyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EGOPhotoSource.h"
#import "EGOThumbsScrollView.h"
#import "EGOStoredBarStyles.h"

@interface EGOThumbsViewController : UIViewController {
	id<EGOPhotoSource> _photoSource;
	EGOThumbsScrollView *_scrollView;
	EGOStoredBarStyles *storedStyles;
}

- (id)initWithPhotoSource:(id<EGOPhotoSource>)aSource;
- (void)didSelectThumbAtIndex:(NSInteger)index;

@property(nonatomic,readonly) id<EGOPhotoSource> photoSource;
@property(nonatomic, retain) EGOStoredBarStyles *storedStyles;

@end

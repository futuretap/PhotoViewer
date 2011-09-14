//
//  EGOQuickPhoto.m
//  EGOPhotoViewer
//
//  Created by Devin Doty on 7/3/10.
//  Copyright 2010 enormego. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "EGOQuickPhoto.h"

@implementation EGOQuickPhoto
@synthesize URL=_URL, caption=_caption, image=_image, size=_size, failed=_failed, thumb=_thumb, thumbURL=_thumbURL;

- (id)initWithImageURL:(NSURL*)aURL image:(UIImage*)aImage name:(NSString*)aName thumbURL:(NSURL *)aThumbURL thumb:(UIImage *)aThumb{
	if ((self = [super init])) {
		_URL = [aURL retain];
		_caption = [aName retain];
		_image = [aImage retain];
		_thumbURL = [aThumbURL retain];
		_thumb = [aThumb retain];
	}
	
	return self;
}

- (id)initWithImageURL:(NSURL*)aURL name:(NSString*)aName image:(UIImage*)aImage {
	return [self initWithImageURL:aURL image:aImage name:aName thumbURL:aURL thumb:aImage];
}

- (id)initWithImageURL:(NSURL*)aURL name:(NSString*)aName {
	return [self initWithImageURL:aURL image:nil name:aName thumbURL:aURL thumb:nil];
}

- (id)initWithImageURL:(NSURL*)aURL {
	return [self initWithImageURL:aURL image:nil name:nil thumbURL:aURL thumb:nil];
}

- (id)initWithImage:(UIImage*)aImage {
	return [self initWithImageURL:nil image:aImage name:nil thumbURL:nil thumb:aImage];
}

- (id)initWithImageURL:(NSURL*)aURL thumbURL:(NSURL *)aThumbURL name:(NSString*)aName {
	return [self initWithImageURL:aURL image:nil name:aName thumbURL:aThumbURL thumb:nil];
}

- (void)dealloc {
	[_URL release], _URL=nil;
	[_image release], _image=nil;
	[_caption release], _caption=nil;
	[_thumb release];
	_thumb = nil;
	[_thumbURL release];
	_thumbURL = nil;
	[super dealloc];
}

@end

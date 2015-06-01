//
//  StoryImageAndTextView.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/30/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryImageAndTextView.h"

@implementation StoryImageAndTextView {
    UIImageView * imageView;
    UITextView * textView;
}

const CGFloat textBoxHeight = 512.0;

- (UIImage *) image {
    return imageView.image;
}

- (void) setImage: (UIImage *) value {
    imageView.image = value;
}

- (NSString *) text {
    return textView.text;
}

- (void) setText: (NSString *) value {
    textView.text = value;
}

const CGFloat imageAspectRatioInverse = (9.0 / 16.0);

- (id) initWithController: (NSObject <UIScrollViewDelegate> *) c {
    self = [super init];
    if (self) {
        self.controller = c;
        [self initializeStoryImageAndTextView];
    }
    return self;
}

- (void) initializeStoryImageAndTextView {
    self.translatesAutoresizingMaskIntoConstraints = false;
    self.delegate = self.controller;
    self.scrollEnabled = true;
    imageView = [self initializeImageView];
    textView = [self initializeTextView];
}

- (UIImageView*) initializeImageView {
    UIImageView* myImageView = [[UIImageView alloc] init];
    myImageView.translatesAutoresizingMaskIntoConstraints = false;
    [[myImageView layer] setMagnificationFilter:kCAFilterNearest];
    [self addSubview:myImageView];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myImageView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myImageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myImageView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myImageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:myImageView attribute:NSLayoutAttributeWidth multiplier:imageAspectRatioInverse constant:0.0]];
    return myImageView;
}

- (UITextView*) initializeTextView {
    UITextView* myTextView = [[UITextView alloc] init];
    myTextView.translatesAutoresizingMaskIntoConstraints = false;
    myTextView.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    myTextView.editable = false;
    myTextView.scrollEnabled = false;
    [self addSubview:myTextView];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myTextView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myTextView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myTextView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myTextView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:textBoxHeight]];
    return myTextView;
}

@end

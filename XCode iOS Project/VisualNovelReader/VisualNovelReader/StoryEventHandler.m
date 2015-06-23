//
//  StoryEventHandler.m
//  VisualNovelReader
//
//  Created by Christopher Raleigh on 2015/21/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryEventHandler.h"
#import "Bookmark.h"
#import "PReaderNavigationController.h"
#import "StoryView.h"

@implementation StoryEventHandler {
    NSObject <PReaderNavigationController> * viewController;
    NSObject <PStory> * story;
    StoryView * storyView;
    Bookmark * bookmark;
}

- (id) initWithViewController: (NSObject <PReaderNavigationController> *) vc andStory: (NSObject <PStory> *) s {
    self = [super init];
    if (self) {
        viewController = vc;
        story = s;
        storyView = [[StoryView alloc] initWithNavigationController:self];
        bookmark = [[Bookmark alloc] initWithStoryView:storyView andController:self];
    }
    return self;
}

- (NSObject <PStory> *) story {
    return story;
}

- (void) setStory : (NSObject <PStory> *) newValue {
    story = newValue;
    [story setReader:self];
}

- (void) showPages : (NSArray *) pages {
    [bookmark showPages:pages];
}

- (void) onButtonContinue {
    [bookmark onButtonContinue];
}

- (void) onButtonPrevious {
    [bookmark onButtonPrevious];
}

- (void) onButtonNext {
    [bookmark onButtonNext];
}

- (void) onButtonOptions {
    [viewController showOptionsMenu:true];
}

- (UIView *) storyView {
    return storyView;
}

@end

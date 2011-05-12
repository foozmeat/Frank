
#import "UIQueryScrollView.h"


@implementation UIQueryScrollView

-(UIQuery *)scrollDown:(int)offset {
	UIScrollView *scroller = (UIScrollView *)self;
	[scroller setContentOffset:CGPointMake(0,offset) animated:NO];
	return [UIQuery withViews:views className:className];
}

-(UIQuery *)scrollToBottom {
	UIScrollView *table = self;
	CGPoint bottomOffset = CGPointMake(0, [table contentSize].height);
	[table setContentOffset: bottomOffset animated: YES];
	return [UIQuery withViews:views className:className];
}

@end

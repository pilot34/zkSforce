// Copyright (c) 2010 Ron Hess
//
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included 
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
// THE SOFTWARE.
//

#import "ZKDescribeLayout.h"
#import "ZKRelatedList.h"
#import "ZKRelatedContent.h"
#import "ZKDescribeQuickActionListResult.h"
#import "ZKDescribeLayoutButtonSection.h"
#import "ZKDescribeLayoutSection.h"

@implementation ZKDescribeLayout

-(ZKDescribeLayoutButtonSection *)buttonLayoutSection {
    return [[self complexTypeArrayFromElements:@"buttonLayoutSection" cls:[ZKDescribeLayoutButtonSection class]] lastObject];
}
			
-(NSArray *)detailLayoutSections {
    return [self complexTypeArrayFromElements:@"detailLayoutSections" cls:[ZKDescribeLayoutSection class]];
}
			
-(NSArray *)editLayoutSections {
    return [self complexTypeArrayFromElements:@"editLayoutSections" cls:[ZKDescribeLayoutSection class]];
}
			
-(ZKDescribeLayoutSection *)highlightsPanelLayoutSection {
    return [[self complexTypeArrayFromElements:@"highlightsPanelLayoutSection" cls:[ZKDescribeLayoutSection class]] lastObject];
}
			
-(NSString *)id {
    return [self string:@"id"];
}
			
-(ZKDescribeQuickActionListResult *)quickActionList {
    return [[self complexTypeArrayFromElements:@"quickActionList" cls:[ZKDescribeQuickActionListResult class]] lastObject];
}
			
-(ZKRelatedContent *)relatedContent {
    return [[self complexTypeArrayFromElements:@"relatedContent" cls:[ZKRelatedContent class]] lastObject];
}
			
-(NSArray *)relatedLists {
    return [self complexTypeArrayFromElements:@"relatedLists" cls:[ZKRelatedList class]];
}
			
@end

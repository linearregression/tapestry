//
//  NCIGraphView.h
//  Tapestry
//
//  Created by Infoblox Inc on 11/19/13.
//  Copyright (c) 2013 FlowForwarding.Org. All rights reserved.
//  Licensed under the Apache License, Version 2.0 
//  http://www.apache.org/licenses/LICENSE-2.0
//

#import <UIKit/UIKit.h>
#import "NCIRangesChartView.h"
#import "NCIGridAreaView.h"

@interface NCIGraphView : UIView

- (id)initWithChart: (NCIRangesChartView *)chartHolder;

@property(nonatomic) float bottomChartIndent;
@property(nonatomic) float leftRightIndent;
@property(nonatomic) float topChartIndent;

@property(nonatomic, strong) NCIRangesChartView* chart;

@property(nonatomic)float scaleIndex;
//TODO change to date, thats fast hack
@property(nonatomic)float leftShift;

@property(nonatomic)bool hasGrid;
@property(nonatomic)bool hasYLabels;

@property(nonatomic)float gridVerticalIndent;

@property(nonatomic, strong)UIScrollView *gridScroll;
@property(nonatomic, strong)NCIGridAreaView *gridArea;

@property(nonatomic)float minXVal;
@property(nonatomic)float maxXVal;
@property(nonatomic)float minYVal;
@property(nonatomic)float maxYVal;

@property(nonatomic)long minDataIndex;
@property(nonatomic)long maxDataIndex;

@end

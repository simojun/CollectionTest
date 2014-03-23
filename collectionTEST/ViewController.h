//
//  ViewController.h
//  collectionTEST
//
//  Created by 下津 惇平 on 2014/03/23.
//  Copyright (c) 2014年 junP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;
@end

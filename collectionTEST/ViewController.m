//
//  ViewController.m
//  collectionTEST
//
//  Created by 下津 惇平 on 2014/03/23.
//  Copyright (c) 2014年 junP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myCollectionView;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [myCollectionView setDataSource:self];
    [myCollectionView setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//セクション数
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    //とりあえずセクションは1つ
    return 1;
}

//セクション内部のアイテムの個数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 7;
}


//Method to create cell at index path
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{    
    UICollectionViewCell *cell;
        
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
    CGRect tmpRect = cell.frame;
    tmpRect.size.height=200;
    tmpRect.size.width=150;
    [cell setFrame:tmpRect];
    
    UIImage *image = [UIImage imageNamed:@"1.png"];
    UIImageView *iv1 = [[UIImageView alloc] initWithImage:image];
        iv1.frame = CGRectMake(0, 0, 150, 150);
    
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor yellowColor];
    label.textColor = [UIColor blackColor];
    //label.font = [UIFont fontWithName:@"AppleGothic" size:12];
    label.font = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    label.text = @"店名";
    label.frame = CGRectMake(0, 150, 150, 50);
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;    //無制限
    NSLog(@"%@", label.text);
        [cell addSubview:iv1];
        [cell addSubview:label];
    
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //クリックされたらよばれる
    NSLog(@"Clicked %d-%d",indexPath.section,indexPath.row);
}


@end


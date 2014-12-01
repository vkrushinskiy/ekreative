//  DCViewController.m
//  Created by Vadim Krushinskiy on 14/11/14.
//  Copyright (c) 2014. All rights reserved.

#import "DCViewController.h"
#import "DCTableViewCell.h"

@interface DCViewController ()
@end

@implementation DCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   CGRect myImageRect = CGRectMake(0.0f, 0.0f, 320.0f, 160.0f);
    UIImageView *myImage = [[UIImageView alloc] initWithFrame:myImageRect];
    myImage.image = [UIImage imageNamed:@"team.jpg"];
    [self.view addSubview:myImage];
    
    self.countries = [NSArray arrayWithObjects:@"", @"", @"eKreative", @"Bruce", @"Viktor Yevpak", @"Kiril Abazher", @"Fred", @"David", @"Jaroslava", @"", nil];
    
    self.countriesContinent = [NSArray arrayWithObjects:@"© Vadim Krushinskiy, 2014", @"© Vadim Krushinskiy, 2014", @"small IT company which specializes in development of websites, web applications and mobile applications (iOS, Android). http://ekreative.com ", @"US PARTNER", @"MANAGING DIRECTOR", @"OPERATIONS OFFICER", @"PROGRAMMER", @"FOUNDER/ADVISER", @"/She is HR MANAGER", @"© Vadim Krushinskiy, 2014", nil];
    
    self.flags = [NSArray arrayWithObjects: @"", @"", @"ekreative.png", @"bruce3.png", @"viktor3.png", @"kiril3.png", @"fred3.png", @"david3.png", @"jaroslava.png", @"ekreative!.png", nil];
    
          UIAlertView* alert=[[UIAlertView alloc] initWithTitle:@"Welcome to eKreative" message:@"Please select any face and you will know who is he" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
          [alert show]; }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{ return [self.countries count]; }

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{   DCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCustomCell"];
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"DCTableViewCell" bundle:nil] forCellReuseIdentifier:@"MyCustomCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"MyCustomCell"]; }
    
    cell.countriesName.text = [self.countries objectAtIndex:indexPath.row];
    cell.countriesName.font = [UIFont fontWithName:@"BodoniSvtyTwoOSITCTT-Bold" size:20.0];
    cell.countriesContinent.text = [self.countriesContinent objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[self.flags objectAtIndex:indexPath.row]];
    return cell; }

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{   NSString *rowValue = self.countriesContinent[indexPath.row];
    NSString *message = [[NSString alloc] initWithFormat:@"%@"  , rowValue];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"He is" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES]; }

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{ return 70; }

- (void)didReceiveMemoryWarning
{ [super didReceiveMemoryWarning]; }
@end

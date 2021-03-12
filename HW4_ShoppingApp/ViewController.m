//
//  ViewController.m
//  HW4_ShoppingApp
//
//  Created by Kerem Gurses on 8.03.2021.
//

#import "ViewController.h"

@interface ViewController ()
@end





@implementation ViewController
@synthesize items, tableView, textField, costLabel;
int initialCost = 30;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [tableView setDelegate:self];
    [tableView setDataSource:self];
    
    items = [[NSMutableArray alloc] init];
    [items addObject:@"Thor's Mjölnir"];
    [items addObject:@"Captain America's Shield"];
    [items addObject:@"Iron Man's Jarvis"];
    
    [tableView reloadData];
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    [[cell textLabel] setText:[items objectAtIndex:[indexPath row]]];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [items count];
}

- (IBAction)addItem:(id)sender{
    NSString *s = [textField text];
    [items addObject:s];
    [textField setText:@""];
    [tableView reloadData];
}

- (IBAction)buttonClicked:(id)sender{
    uint32_t randomIntegerWithinRange = arc4random_uniform(1000) + 300; // A random integer between 3 and 12
    
    initialCost = initialCost + randomIntegerWithinRange;
    NSString *strValue = @(initialCost).stringValue;
    [costLabel setText:strValue];
}
@end

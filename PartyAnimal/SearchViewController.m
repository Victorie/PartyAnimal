//
//  SearchViewController.m
//  PartyAnimal
//
//  Created by 李偉誠 on 8/14/14.
//  Copyright (c) 2014 Victoire. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@property (nonatomic, copy) NSString *searchText;
@property (nonatomic, strong) NSArray *searchItems;
@property (nonatomic, strong) NSArray *items;

- (NSArray *)_itemsForTableView:(UITableView *)tableView;

@end

@implementation SearchViewController

@synthesize searchText = _searchText, searchItems = _searchItems, items = _items;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [[self _itemsForTableView:tableView] objectAtIndex:indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self _itemsForTableView:tableView] count];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
            toInterfaceOrientation == UIInterfaceOrientationLandscapeRight ||
            toInterfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableview didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *item = [[self _itemsForTableView:tableview] objectAtIndex:indexPath.row];
    NSLog(@"Selected item %@", item);
    
    [tableview deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - UISearchBar

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    self.searchText = searchText;
}

#pragma mark - Private accessors

- (void)setSearchText:(NSString *)searchText
{
    if (_searchText != searchText)
    {
        _searchText = [searchText copy];
        
        NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(NSString *obj, NSDictionary *binding) {
            
            NSRange range = [obj rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if (range.location != NSNotFound) {
                return YES;
            } else {
                return NO;
            }
        }];
        
        _searchItems = [self.items filteredArrayUsingPredicate:predicate];
        
        [self.searchDisplayController.searchResultsTableView reloadData];
    }
}

/*
- (NSArray *)_itemsForTableView:(UITableView *)tableView
{
    if (tableView == self.tableView)
    {
        return self.items;
    }
    else if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        return self.searchItems;
    }
    else
    {
        return nil;
    }
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

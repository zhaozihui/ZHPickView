#ZHPickView
可以简单实现在底部弹出类似ActionView画面 
实现自定义的pickView
使用起来非常简单,可以自定义标题

实现简单的PickView

```
 ZHPickView *pickView = [[ZHPickView alloc] init];
 [pickView setItems:@[@"item1",@"item2",@"item3"] title:@"DataTitle" isDate:NO];
    [pickView showPickView:self];
    pickView.block = ^(NSString *selectedStr)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You have chooseed:" message:selectedStr delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    };
```

画面效果:

<img src="https://raw.githubusercontent.com/zhaozihui/ZHPickView/master/IMG_1205.PNG" width="320" height="568" alt="画面效果"/>

实现简单的DatePickView

```
ZHPickView *pickView = [[ZHPickView alloc] init];
    [pickView setItems:@[] title:@"DateTitle" isDate:YES];
    [pickView showPickView:self];
    pickView.block = ^(NSString *selectedStr)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You have chooseed:" message:selectedStr delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    };
```
画面效果:

<img src="https://raw.githubusercontent.com/zhaozihui/ZHPickView/master/IMG_1206.PNG " width="320" height="568" alt="画面效果"/>


#联系作者:zhaozihui@gmail.com
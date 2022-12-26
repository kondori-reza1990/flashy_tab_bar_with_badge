# flashy_tab_bar_with_badge

[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/Cuberto/flashy-tabbar-android/master/LICENSE)

THIS IS A FORK OF flashy_tab_bar2 by horovitz.dev

![Animation](https://raw.githubusercontent.com/leesnhyun/flashy_tab_bar/master/docs/animation.gif)

## Preview

| Android  | iOS  |
| :------------------- | -------------------: |
| <img src="https://raw.githubusercontent.com/leesnhyun/flashy_tab_bar/master/docs/emulator-android.gif" height="714">  | <img src="https://raw.githubusercontent.com/leesnhyun/flashy_tab_bar/master/docs/emulator-ios.gif" height="714"> |

## Getting Started

Add the dependency at pubspec.yaml:

```yaml
dependencies:
  ...
  flashy_tab_bar_with_badge: ^0.0.3
```

## Basic Usage

```dart
bottomNavigationBar: FlashyTabBar(
     selectedIndex: _selectedIndex,
     showElevation: true,
     onItemSelected: (index) => setState(() {
       _selectedIndex = index;
     }),
     items: [
        FlashyTabBarItem(
          icon: Icon(Icons.event),
          title: Text('Events'),
          badge: 2,
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.highlight),
          title: Text('Highlights'),
          badge: 5,
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
),
```

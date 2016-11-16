# TaklDateTools
> A set of Date extensions, written in Swift 🔶. Inspired by [CupertinoYankee](https://github.com/mattt/CupertinoYankee) and [DateTools](https://github.com/MatthewYork/DateTools)

[![Swift Version][swift-image]][swift-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/TaklDateTools.svg)](https://img.shields.io/cocoapods/v/TaklDateTools.svg)  
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)

## Features

- beginningOfDay/Month, endOfDay/Month
- day/weekDay/month/year Int numbers
- isEarlier/isLater/isEqualTo other date
- add and subtract minutes/hours/days/months
- minutes/daysFrom other date

## Requirements

- iOS 8.0+
- Xcode 8

## Installation

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `TaklDateTools` by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!
pod 'TaklDateTools', :git => 'https://github.com/TaklApp/TaklDateTools.git'
```

To get the full benefits import `TaklDateTools` wherever you import UIKit

``` swift
import UIKit
import TaklDateTools
```

#### Manually
1. Download and drop ```Takl+Date.swift``` in your project.  
2. Congratulations!  

## Usage example

```swift
var date = Date(timeIntervalSince1970: 0)
var date2 = Date(timeIntervalSince1970: 120)

date2.minutesFrom(date: date) //2
```

## Contribute

We would love for you to contribute to **Takl+Date.swift**, check the ``LICENSE`` file for more info.

## Meta

Takl – [@takl_app](https://twitter.com/takl_app)

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/TaklApp/](https://github.com/TaklApp/)

[swift-image]:https://img.shields.io/badge/swift-3.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[travis-image]: https://img.shields.io/travis/TaklApp/TaklDateTools/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/TaklApp/TaklDateTools

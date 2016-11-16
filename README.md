# TaklDateTools
Swift 3 conversion of CupertinoYankee pod and Swift 3 conversion of select methods from DateTools pod

# Installation
Either add TaklDateTools.swift directly to your project or to use as a pod add the following to your Podfile:
```
    pod 'TaklDateTools', :git => 'https://github.com/TaklApp/TaklDateTools.git'
```
Then either import into your AppDelegate for global access or to the individual files where you need it.

# Functionality
- beginningOfDay/Month, endOfDay/Month
- day/weekDay/month/year Int numbers
- isEarlier/isLater/isEqualTo other date
- add and subtract minutes/hours/days/months
- minutes/daysFrom other date

Please view tests for examples how to use these helper methods.

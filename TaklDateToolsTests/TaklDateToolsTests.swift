//
//  TaklDateToolsTests.swift
//  TaklDateToolsTests
//
//  Created by Abbey Jackson on 2016-11-15.
//  Copyright © 2016 Takl. All rights reserved.
//

import XCTest
@testable import TaklDateTools

class TaklDateToolsTests: XCTestCase {

    // MARK: Properties
    
    let date = Date.DateWith(year: 2015, month: 4, day: 18, hour: 13, minute: 42, second: 36)
    let equalDate = Date.DateWith(year: 2015, month: 4, day: 18, hour: 13, minute: 42, second: 36)
    let earlierDate = Date.DateWith(year: 2015, month: 4, day: 14, hour: 13, minute: 42, second: 36)
    let laterDate = Date.DateWith(year: 2015, month: 4, day: 18, hour: 18, minute: 42, second: 36)
    let calendar = Calendar.current
    
    
    
    // MARK: Helpers
    
    func getDateComponents(date: Date) -> DateComponents {
        
        return calendar.dateComponents(Set(arrayLiteral: Calendar.Component.year, Calendar.Component.month, Calendar.Component.day, Calendar.Component.hour, Calendar.Component.minute, Calendar.Component.second), from: date)
    }
    
    
    
    // MARK: Cupertino Yankee Tests
    
    func testDateWithTimeComponentsInit() {
        
        let testDate = date
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 18)
        XCTAssertEqual(components.hour, 13)
        XCTAssertEqual(components.minute, 42)
        XCTAssertEqual(components.second, 36)
    }
    
    
    
    func testBeginningOfDay() {
        
        let testDate = date.beginningOfDay()
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 18)
        XCTAssertEqual(components.hour, 0)
        XCTAssertEqual(components.minute, 0)
        XCTAssertEqual(components.second, 0)
    }
    
    
    
    func testEndOfDay() {
        
        let testDate = date.endOfDay()
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 18)
        XCTAssertEqual(components.hour, 23)
        XCTAssertEqual(components.minute, 59)
        XCTAssertEqual(components.second, 59)
    }
    
    
    
    func testBeginningOfMonth() {
        
        let testDate = date.beginningOfMonth()
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 1)
        XCTAssertEqual(components.hour, 0)
        XCTAssertEqual(components.minute, 0)
        XCTAssertEqual(components.second, 0)
    }
    
    
    
    func testEndOfMonth() {
        
        let testDate = date.endOfMonth()
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 30)
        XCTAssertEqual(components.hour, 23)
        XCTAssertEqual(components.minute, 59)
        XCTAssertEqual(components.second, 59)
    }
    
    
    
    // MARK: Date Tools tests
    
    func testDay() {
        
        let day = date.day()
        XCTAssertEqual(day, 18)
    }
    
    
    
    func testWeekday() {
        
        let weekday = date.weekday()
        XCTAssertEqual(weekday, 7)
    }
    
    
    
    func testMonth() {
        
        let month = date.month()
        XCTAssertEqual(month, 4)
    }
    
    
    
    func testYear() {
        
        let year = date.year()
        XCTAssertEqual(year, 2015)
    }
    
    
    
    func testIsEarlierThan() {
        
        XCTAssertTrue(date.isEarlierThan(date: laterDate))
        XCTAssertFalse(date.isEarlierThan(date: earlierDate))
    }
    
    
    
    func testIsEarlierThanOrEqualTo() {
        
        XCTAssertTrue(date.isEarlierThanOrEqualTo(date: equalDate))
        XCTAssertTrue(date.isEarlierThanOrEqualTo(date: laterDate))
        XCTAssertFalse(date.isEarlierThanOrEqualTo(date: earlierDate))
    }
    
    
    
    func testIsLaterThan() {
        
        XCTAssertTrue(date.isLaterThan(date: earlierDate))
        XCTAssertFalse(date.isLaterThan(date: laterDate))
    }
    
    
    
    func testIsLaterThanOrEqualTo() {
        
        XCTAssertTrue(date.isLaterThanOrEqualTo(date: equalDate))
        XCTAssertTrue(date.isLaterThanOrEqualTo(date: earlierDate))
        XCTAssertFalse(date.isLaterThanOrEqualTo(date: laterDate))
    }
    
    
    
    func testAddMinutes() {
        
        let testDate = date.add(minutes: 5)
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 18)
        XCTAssertEqual(components.hour, 13)
        XCTAssertEqual(components.minute, 47)
        XCTAssertEqual(components.second, 36)
        
        let testDate2 = date.add(minutes: 60)
        let components2 = getDateComponents(date: testDate2)
        
        XCTAssertEqual(components2.year, 2015)
        XCTAssertEqual(components2.month, 4)
        XCTAssertEqual(components2.day, 18)
        XCTAssertEqual(components2.hour, 14)
        XCTAssertEqual(components2.minute, 42)
        XCTAssertEqual(components2.second, 36)
    }
    
    
    
    func testSubtractMinutes() {
        
        let testDate = date.subtract(minutes: 5)
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 18)
        XCTAssertEqual(components.hour, 13)
        XCTAssertEqual(components.minute, 37)
        XCTAssertEqual(components.second, 36)
        
        let testDate2 = date.subtract(minutes: 60)
        let components2 = getDateComponents(date: testDate2)
        
        XCTAssertEqual(components2.year, 2015)
        XCTAssertEqual(components2.month, 4)
        XCTAssertEqual(components2.day, 18)
        XCTAssertEqual(components2.hour, 12)
        XCTAssertEqual(components2.minute, 42)
        XCTAssertEqual(components2.second, 36)
    }
    
    
    
    func testAddHours() {
        
        let testDate = date.add(hours: 2)
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 18)
        XCTAssertEqual(components.hour, 15)
        XCTAssertEqual(components.minute, 42)
        XCTAssertEqual(components.second, 36)
        
        let testDate2 = date.add(hours: 24)
        let components2 = getDateComponents(date: testDate2)
        
        XCTAssertEqual(components2.year, 2015)
        XCTAssertEqual(components2.month, 4)
        XCTAssertEqual(components2.day, 19)
        XCTAssertEqual(components2.hour, 13)
        XCTAssertEqual(components2.minute, 42)
        XCTAssertEqual(components2.second, 36)
    }
    
    
    
    func testSubtractHours() {
        
        let testDate = date.subtract(hours: 2)
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 18)
        XCTAssertEqual(components.hour, 11)
        XCTAssertEqual(components.minute, 42)
        XCTAssertEqual(components.second, 36)
        
        let testDate2 = date.subtract(hours: 24)
        let components2 = getDateComponents(date: testDate2)
        
        XCTAssertEqual(components2.year, 2015)
        XCTAssertEqual(components2.month, 4)
        XCTAssertEqual(components2.day, 17)
        XCTAssertEqual(components2.hour, 13)
        XCTAssertEqual(components2.minute, 42)
        XCTAssertEqual(components2.second, 36)
    }
    
    
    
    func testAddDays() {
        
        let testDate = date.add(days: 2)
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 20)
        XCTAssertEqual(components.hour, 13)
        XCTAssertEqual(components.minute, 42)
        
        XCTAssertEqual(components.second, 36)
        
        let testDate2 = date.add(days: 30)
        let components2 = getDateComponents(date: testDate2)
        
        XCTAssertEqual(components2.year, 2015)
        XCTAssertEqual(components2.month, 5)
        XCTAssertEqual(components2.day, 18)
        XCTAssertEqual(components2.hour, 13)
        XCTAssertEqual(components2.minute, 42)
        XCTAssertEqual(components2.second, 36)
    }
    
    
    
    func testSubtractDays() {
        
        let testDate = date.subtract(days: 2)
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 4)
        XCTAssertEqual(components.day, 16)
        XCTAssertEqual(components.hour, 13)
        XCTAssertEqual(components.minute, 42)
        XCTAssertEqual(components.second, 36)
        
        let testDate2 = date.subtract(days: 31)
        let components2 = getDateComponents(date: testDate2)
        
        XCTAssertEqual(components2.year, 2015)
        XCTAssertEqual(components2.month, 3)
        XCTAssertEqual(components2.day, 18)
        XCTAssertEqual(components2.hour, 13)
        XCTAssertEqual(components2.minute, 42)
        XCTAssertEqual(components2.second, 36)
    }
    
    
    
    func testAddMonths() {
        
        let testDate = date.add(months: 1)
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 5)
        XCTAssertEqual(components.day, 18)
        XCTAssertEqual(components.hour, 13)
        XCTAssertEqual(components.minute, 42)
        XCTAssertEqual(components.second, 36)
        
        let testDate2 = date.add(months: 12)
        let components2 = getDateComponents(date: testDate2)
        
        XCTAssertEqual(components2.year, 2016)
        XCTAssertEqual(components2.month, 4)
        XCTAssertEqual(components2.day, 18)
        XCTAssertEqual(components2.hour, 13)
        XCTAssertEqual(components2.minute, 42)
        XCTAssertEqual(components2.second, 36)
    }
    
    
    
    func testSubtractMonths() {
        
        let testDate = date.subtract(months: 1)
        let components = getDateComponents(date: testDate)
        
        XCTAssertEqual(components.year, 2015)
        XCTAssertEqual(components.month, 3)
        XCTAssertEqual(components.day, 18)
        XCTAssertEqual(components.hour, 13)
        XCTAssertEqual(components.minute, 42)
        XCTAssertEqual(components.second, 36)
        
        let testDate2 = date.subtract(months: 12)
        let components2 = getDateComponents(date: testDate2)
        
        XCTAssertEqual(components2.year, 2014)
        XCTAssertEqual(components2.month, 4)
        XCTAssertEqual(components2.day, 18)
        XCTAssertEqual(components2.hour, 13)
        XCTAssertEqual(components2.minute, 42)
        XCTAssertEqual(components2.second, 36)
    }
    
    
    
    func testDaysFrom() {
        
        var testDate = date.add(days: 5)
        XCTAssertEqual(date.daysFrom(date: testDate), -5)
        
        testDate = date.subtract(days: 5)
        XCTAssertEqual(date.daysFrom(date: testDate), 5)
        
        XCTAssertEqual(date.daysFrom(date: earlierDate), 4)
        XCTAssertEqual(date.daysFrom(date: laterDate), 0)
        XCTAssertEqual(date.daysFrom(date: equalDate), 0)
    }
    
    
    
    func testMinutesFrom() {
        
        var testDate = date.add(minutes: 5)
        XCTAssertEqual(date.minutesFrom(date: testDate), -5)
        
        testDate = date.subtract(minutes: 5)
        XCTAssertEqual(date.minutesFrom(date: testDate), 5)
        
        XCTAssertEqual(date.minutesFrom(date: earlierDate), 5760)
        XCTAssertEqual(date.minutesFrom(date: laterDate), -300)
        XCTAssertEqual(date.minutesFrom(date: equalDate), 0)
    }
}

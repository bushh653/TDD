//
//  EWTests.swift
//  EWTests
//
//  Created by Harry Bush on 02/02/2021.
//

import XCTest
@testable import EW

class EWSortTests: XCTestCase {

    func testMergeSort(){
        let mergeTest = Sort()
        XCTAssertEqual(mergeTest.mergeSort(array: [1, 3, 4, 6, 10, 7, 2, 5, 30, 12]), [1, 2, 3, 4, 5, 6, 7, 10, 12, 30])
    }
    
    func testQuickSort(){
        let quickTest = Sort()
        XCTAssertEqual(quickTest.quickSort(array: [1, 3, 4, 6, 10, 7, 2, 5, 30, 12], start: 0, end: 10), [1, 2, 3, 4, 5, 6, 7, 10, 12, 30])
    }
    
    func testBubbleSort(){
        let bubbleTest = Sort()
        XCTAssertEqual(bubbleTest.bubbleSort(array: [1, 3, 4, 6, 10, 7, 2, 5, 30, 12]), [1, 2, 3, 4, 5, 6, 7, 10, 12, 30])
    }

    func testInsertionSort(){
        let insertionTest = Sort()
        XCTAssertEqual(insertionTest.insertionSort(array: [1, 3, 4, 6, 10, 7, 2, 5, 30, 12]), [1, 2, 3, 4, 5, 6, 7, 10, 12, 30])
    }
    
}

class EWSearchTests: XCTestCase {
    
    func testBinarySearch(){
        let binaryTest = Search()
        XCTAssertEqual(binaryTest.binarySearch(array: [1, 2, 3, 4, 5, 6, 7, 10, 12, 30], item: 5), 5)
    }
    
    func testLinearSearch(){
        let linearTest = Search()
        XCTAssertEqual(linearTest.linearSearch(array: [1, 3, 4, 6, 10, 7, 2, 5, 30, 12], item: 5), 5)
    }
    
}

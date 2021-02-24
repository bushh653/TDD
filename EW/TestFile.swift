//
//  TestFile.swift
//  EW
//
//  Created by Harry Bush on 02/02/2021.
//

import Foundation

class Sort {
    
    func mergeSort(array: Array<Int>) -> Array<Int>{
        var array = array
        if array.count > 1 {
            let mid = array.count / 2
            var lefthalf: Array<Int> = []
            var righthalf: Array<Int> = []
            for i in 0...mid - 1{
                lefthalf.append(array[i])
            }
            for i in mid...array.count - 1{
                righthalf.append(array[i])
            }
            mergeSort(array: lefthalf)
            mergeSort(array: righthalf)
            var i = 0
            var j = 0
            var k = 0
            while i < lefthalf.count && j < righthalf.count{
                if lefthalf[i] < righthalf[j] {
                    array[k] = lefthalf[i]
                    i = i + 1
                }
                else{
                    array[k] = righthalf[j]
                    j = j + 1
                }
                k = k + 1
            }
            while i < lefthalf.count{
                array[k] = lefthalf[i]
                i = i + 1
                k = k + 1
            }
            while j < righthalf.count{
                array[k] = righthalf[j]
                j = j + 1
                k = k + 1
            }
        }
        return array
    }
    
    func partition(array: Array<Int>, start: Int, end: Int) -> Int{
        var array = array
        let pivot = array[start]
        var leftmark = start
        var rightmark = end - 1
        var done = false
        while done == false{
            while leftmark <= rightmark && array[leftmark] <= pivot{
                leftmark = leftmark + 1
            }
            while array[rightmark] >= pivot && rightmark >= leftmark{
                rightmark = rightmark - 1
            }
            if rightmark < leftmark{
                done = true
            }
            else{
                let temp = array[leftmark]
                array[leftmark] = array[rightmark]
                array[rightmark] = temp
            }
            let temp = array[start]
            array[start] = array[rightmark]
            array[rightmark] = temp
        }
        return rightmark
    }
    
    func quickSort(array: Array<Int>, start: Int, end: Int) -> Array<Int>{
        let array = array
        if start < end{
            let split = partition(array: array, start: start, end: end)
            quickSort(array: array, start: start, end: split-1)
            quickSort(array: array, start: split+1, end: end)
        }
        return array
    }
    
    func bubbleSort(array: Array<Int>) -> Array<Int>{
        var array = array
        for i in 0...array.count - 2{
            for j in 0...array.count - i - 2{
                if array[j] > array[j+1]{
                    let temp = array[j]
                    array[j] = array[j + 1]
                    array[j + 1] = temp
                }
            }
        }
        return array
    }
    
    func insertionSort(array: Array<Int>) -> Array<Int>{
        let len = array.count
        var array = array
        for i in 0...len - 1{
            let currentvalue = array[i]
            var position = i
            while position > 0 && array[position - 1] > currentvalue {
                array[position] = array[position - 1]
                position -= 1
            }
            array[position] = currentvalue
        }
        return array
    }
    
}

class Search {

    func linearSearch(array: Array<Int>,item: Int) -> Int{
        var foundItem = 0
        var i = 0
        var found = false
        while i < array.count && found == false{
            if array[i] == item{
                foundItem = array[i]
                found = true
            }
        i = i + 1
        }
        return foundItem
    }
    
    func binarySearch(array: Array<Int>,item: Int) -> Int{
        var foundItem = 0
        var found = false
        var first = 0
        var last = array.count-1
        while first <= last && found == false{
            let midpoint = (first + last)/2
            if array[midpoint] == item{
                found = true
                foundItem = array[midpoint]
            }
            else{
                if array[midpoint] < item{
                    first = midpoint + 1
                }
                else{
                    last = midpoint - 1
                }
            }
        }
        return foundItem
    }

}

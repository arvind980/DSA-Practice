import UIKit

// Search in roteated sorted array(half ) [4,5,6,7,0,1,2,3]

func searchInRoteatedArr(arr:[Int],target:Int)->Int{
    var left = 0
    var right = arr.count - 1
    
    while left <= right{
        var mid = left + (right - left)/2
        
        if arr[mid] == target{
            return mid
        }
        
        if arr[left] <= arr[mid]{
            if target >= arr[left] && target < arr[mid] {
                right = mid - 1
            }else{
                left = mid + 1
            }
        }else{
            if target <= arr[right] && target > arr[mid]{
               left = mid + 1
            }else{
               right = mid - 1
            }
        }
    }
    return -1
}

print(searchInRoteatedArr(arr:[4,5,6,7,0,1,2],target:0))

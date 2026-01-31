import UIKit

/*
 1- Allocate Minimum Pages
 2- Split Array Largest Sum
 3- Capacity to Ship Packages

 is basically the same pattern as Allocate Minimum Pages — just a different story.
 */

func allocateMinimumPages(pages:[Int], students:Int)->Int{
    guard pages.count >= students else {return -1}
    var left = pages.max()!
    var right = pages.reduce(0, +)
    var ans = -1
    
    
    
    while left <= right{
        var mid = left + (right - left)/2
        
        if canAllocated(maxPages: mid){
            ans = mid
            right = mid - 1
        }else{
            left = mid + 1
        }
        
    }
    
    func canAllocated(maxPages:Int)->Bool{
        var studentCount = 1
        var currentpage = 0
        
        for page in pages{
            currentpage += page
            if currentpage > maxPages{
                studentCount += 1
                currentpage = page
            }
        }
        return studentCount <= students
    }
    
    return ans
}


print(allocateMinimumPages(pages:[12,34,67,90], students:2))

/*
 ⏱️ Time Complexity
 O(n log S)


 Where:

 n = number of books

 S = sum of all pages

 WHY?

 Binary Search part → log S

 Search space = max(pages) to sum(pages)

 That range can be as large as S

 Feasibility check → O(n)

 For each guess, we must scan all books

 We assign books greedily in order

 So:

 Time = O(n) × O(log S)
      = O(n log S)
 */

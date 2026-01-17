import UIKit

// Top k frequents elements from array


func topKfrequentsElemets(nums:[Int], k:Int)->[Int]{
    var freqMap = [Int:Int]()
    
    for num in nums {
        freqMap[num, default: 0] += 1
    }
    
    var bucket = Array(repeating: [Int](), count: nums.count + 1)
    
    for (num, freq) in freqMap{
        bucket[freq].append(num)
    }
    
    var result = [Int]()
    for freq in stride(from: bucket.count - 1, to: 0, by: -1){
        for num in bucket[freq]{
            result.append(num)
            if result.count == k{
                return result
            }
        }
        
    }
    
    return []
}

print(topKfrequentsElemets(nums: [1,1,3,1,4,2,3,4,1,5,7,5,5], k: 3))

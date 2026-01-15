import UIKit

//Given an array of strings, group the anagrams together.

//Input: ["eat","tea","tan","ate","nat","bat"]
//Output:[["eat","tea","ate"],["tan","nat"],["bat"]]

// 1. Sorted - key vesion

/*

func groupAnagrams(strs:[String])->[[String]]{
    var result = [String: [String]]()
    
    for word in strs{
        let key = String(word.sorted())
        result[key, default: []].append(word)
    }
    
    return Array(result.values)
}
 
 */

// Optimize version

func groupAnagrams(strs:[String])->[[String]]{
    var result = [[Int]:[String]]()
    for word in strs{
        var count = Array(repeating: 0, count: 26)
        for char in word{
            let index = Int(char.asciiValue! - Character("a").asciiValue!)
            count[index] += 1
        }
        
        result[count, default: []].append(word)
       
    }
    print(result)
    return Array(result.values)
}


print(groupAnagrams(strs: ["eat","tea","tan","ate","nat","bat"]))

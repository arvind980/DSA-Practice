import UIKit

func minEatingSpeed(piels:[Int],h:Int)->Int{
    var left = 1
    var right = piels.max()!
    
    func isSpeedValid(speed:Int)->Bool{
        var hours = 0
        for piel in piels{
            hours += (piel + speed - 1)/speed
        }
        
        return hours <= h
    }
    
   
    
    while left < right{
        var mid = left + (right - left)/2
        if isSpeedValid(speed: mid){
            right = mid
        }else{
            left = mid + 1
        }
    }
   
    return left
}

print(minEatingSpeed(piels:[3,6,7,11],h:8))

/* Time Complexity
 O(n log m)


 Where:

 n = number of piles

 m = maximum bananas in a pile

 WHY?

 Binary Search part → log m

 Search space = 1 to max(piles)

 Each step cuts the range in half

 Feasibility check → O(n)

 For a given speed, we must check every pile

 No shortcut → must sum hours for all piles

 So:

 Time = (checks per step) × (number of steps)
      = O(n) × O(log m)
      = O(n log m)

 🧠 Intuition (easy to remember)
 */

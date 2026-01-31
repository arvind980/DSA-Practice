import UIKit

func minmaxGasDist(stations:[Int], newStationsAllowed:Int)->Double{
    var left = 0.0
    var right = 0.0
    
    for i in 0..<stations.count - 1{
        right = max(right, Double(stations[i+1] - stations[i]))
    }
    
    func canAllowed(maxDistance:Double)->Bool{
        var needStationAllowed = 0
        for i in 0..<stations.count - 1{
           let gap = Double(stations[i+1] - stations[i])
            needStationAllowed += Int(gap/maxDistance)
        }
        
        return needStationAllowed <= newStationsAllowed
    }
    
    while right - left > 1e-6{
        let midDistance = (left + right)/2
        
        if canAllowed(maxDistance: midDistance){
            right = midDistance
        }else{
            left = midDistance
        }
    }
    
    return right
}

print(minmaxGasDist(stations:[1,10], newStationsAllowed:1))

/*
 Complexity (and WHY)
 Time
 O(n log R)


 Where:

 n = number of stations

 R = max possible distance
 */

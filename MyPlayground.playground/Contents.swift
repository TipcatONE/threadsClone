import UIKit

func searchInsert(_ nums: [Int], _ target: Int)->Int{
    if nums.contains(target) == false{
        nums.insert(target, at: target)
        nums.sort()
        return nums.firstIndex(of: target)!
        
        
        
    }else{
        var counter = 0
        for i in nums{
            if i != target{
                break
                return counter
            }
            else{
                counter+=1
            }
        }
        
    }
    return 0
}
searchInsert([1,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 18)


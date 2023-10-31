import UIKit

func searchInsert(_ nums: [Int], _ target: Int)->Int{
    var second_nums = nums
    var counter = 0
    if nums.contains(target){
        for i in nums{
            if i != target{
                counter+=1
            }
            else{
                break
            }
        }
        
    }else{
        second_nums.insert(target, at: target)
        second_nums.sort()
        return second_nums.firstIndex(of: target)!
        
        
        
    }
        return counter
}
searchInsert([1,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 2)


import UIKit

func findcompability(name1:String,name2:String)->Int{
    var counter = 0
    Array(name2).split(separator: "")
    for letter in name2{
        if name1.contains(letter){
            counter+=10
        }else{
            continue
        }
    }
    
}
findcompability(name1: "Nikita", name2: "jel")

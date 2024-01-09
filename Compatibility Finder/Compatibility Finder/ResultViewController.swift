//
//  ResultViewController.swift
//  Compatibility Finder
//
//  Created by Никита Иголкин on 02.11.2023.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        resultvalue = findResult()
        NamesLabel.text = "\(FirstName ?? "") and \(SecondName ?? "")"
        
        ResultPercent.text = resultvalue.formatted(.percent)
        
        
        ProgressBar.progress = Float(resultvalue) / 100
        
        ProgressBar.transform = ProgressBar.transform.scaledBy(x: 1, y: 4)

    }
    @IBOutlet weak var NamesLabel: UILabel!
    
    @IBOutlet weak var ResultPercent: UILabel!
    
    var FirstName:String!
    var SecondName:String!
    private var resultvalue = 0
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    private func findValue(for name:String)->Int{
        var count = 0
        
        for character in name.lowercased(){
            switch character{
            case "a","b","c","d":
                count+=1
            case "e","f","g":
                count+=2
            case "h","i","j":
                count+=3
            case "k","l","m":
                count+=4
            case "n","o","p":
                count+=5
            case "q","r","s":
                count+=6
            case "t","u","v":
                count+=7
            case "w","x","y","z":
                count+=8
            default:
                count+=0
            
            
            }
            
        }
        return count
    }
    
    private func findResult()->Int{
        var result = 0
        var FirstValue = findValue(for: FirstName)
        var SecondValue = findValue(for: SecondName)
        var absResult = abs(FirstValue - SecondValue)
        
        switch absResult{
        case 0,1,2:
            result = 100
        case 3,4:
            result = 65
        case 5:
            result = 50
        case 6:
            result = 40
        default:
            result = 30
        
        }
        return result
        
    }
    
    
}

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
        NamesLabel.text = "\(FirstName ?? "") and \(SecondName ?? "")"

    }
    @IBOutlet weak var NamesLabel: UILabel!
    
    @IBOutlet weak var ResultPercent: UILabel!
    
    var FirstName:String!
    var SecondName:String!
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    
}

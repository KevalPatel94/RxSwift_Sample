//
//  NewVC.swift
//  RxSwift_Demo
//
//  Created by Keval Patel on 1/19/19.
//  Copyright © 2019 Keval Patel. All rights reserved.
//

import UIKit
import RxSwift
class NewVC: UIViewController {

    private let selectedText = Variable("User")
    var observableforText:Observable<String>{
        return selectedText.asObservable()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func addition(_ num1: Int, _ num2: Int) -> Observable<Int>{
        return Variable(num1 + num2).asObservable()
    }
    func multiplication(_ num: Int) -> Observable<Int>{
        return Variable(num*num).asObservable()
    }
    // Async Call
    func asyncCall(){
    }
    @IBAction func selbtnDog(_ sender: Any) {
        selectedText.value = "Dog"
    }
    
    @IBAction func selbtnGoat(_ sender: Any) {
        selectedText.value = "Goat"
    }
    
    @IBAction func selbtnCat(_ sender: Any) {
        selectedText.value = "Cat"
    }
    
}

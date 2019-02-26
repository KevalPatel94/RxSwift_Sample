//
//  ViewController.swift
//  RxSwift_Demo
//
//  Created by Keval Patel on 1/19/19.
//  Copyright © 2019 Keval Patel. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var btnSample: UIButton!
    @IBOutlet weak var lbl: UILabel!
    var disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func selbtnAdd(_ sender: Any) {
        let newvc = self.storyboard?.instantiateViewController(withIdentifier: "NewVC")as! NewVC
        newvc.observableforText.subscribe(onNext: { [weak self] (str) in
            self!.lbl.text = "You tapped on : \(str)"
        }, onError: { (error) in
            print("error")
        }, onCompleted: {
            print("Completed")
        }) {
            print("On dispose")
        }.disposed(by: disposeBag)
        self.navigationController?.pushViewController(newvc, animated: true)
    }
    
}


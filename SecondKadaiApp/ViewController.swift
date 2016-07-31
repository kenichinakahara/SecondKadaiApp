//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by kenic on 2016/08/01.
//  Copyright © 2016年 kenic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
        // 遷移先のResultViewControllerで宣言している名前に値を代入して渡す
        resultViewController.name = name.text!
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }

}


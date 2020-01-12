//
//  ViewController.swift
//  StoryboardViewTest
//
//  Created by 태우 on 2020/01/12.
//  Copyright © 2020 alla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  @IBAction func tapButton(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let testVC = storyboard.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
    testVC.reactor = TestViewReactor()
    navigationController?.pushViewController(testVC, animated: true)
  }
  
}


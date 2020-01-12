//
//  TestViewController.swift
//  StoryboardViewTest
//
//  Created by 태우 on 2020/01/12.
//  Copyright © 2020 alla. All rights reserved.
//

import UIKit
import ReactorKit
import RxCocoa
import RxSwift


class TestViewController: BaseViewController, StoryboardView {
  
  @IBOutlet weak var testButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  func bind(reactor: TestViewReactor) {
    
    // 여기서 testButton 값이 nil...
    testButton.rx.tap
      .map { Reactor.Action.tapButton }
      .bind(to: reactor.action)
      .disposed(by: self.disposeBag)
  }
  
  
  
}

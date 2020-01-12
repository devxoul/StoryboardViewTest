//
//  BaseViewController.swift
//  StoryboardViewTest
//
//  Created by 태우 on 2020/01/12.
//  Copyright © 2020 alla. All rights reserved.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {

  // MARK: Initializing

  init() {
    super.init(nibName: nil, bundle: nil)
  }

  required convenience init?(coder aDecoder: NSCoder) {
    self.init()
  }


  // MARK: Rx

  var disposeBag = DisposeBag()


  // MARK: Layout Constraints

  private(set) var didSetupConstraints = false

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.setNeedsUpdateConstraints()
  }

  override func updateViewConstraints() {
    if !self.didSetupConstraints {
      self.setupConstraints()
      self.didSetupConstraints = true
    }
    super.updateViewConstraints()
  }

  func setupConstraints() {
    
  }

}

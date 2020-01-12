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

  override init(nibName nibNameOrNil: String? = nil, bundle nibBundleOrNil: Bundle? = nil) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
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

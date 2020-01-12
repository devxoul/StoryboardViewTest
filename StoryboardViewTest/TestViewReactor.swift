//
//  TestViewReactor.swift
//  StoryboardViewTest
//
//  Created by 태우 on 2020/01/12.
//  Copyright © 2020 alla. All rights reserved.
//

import ReactorKit
import RxCocoa
import RxSwift

class TestViewReactor: Reactor {
  
  enum Action {
    case tapButton
  }
  
  enum Mutation {
    case tapButton
  }
  
  struct State {
    
  }
  
  var initialState: State
  
  init() {
    self.initialState = State(
      
    )
  }
  
  func mutate(action: TestViewReactor.Action) -> Observable<TestViewReactor.Mutation> {
    switch action {
    case .tapButton:
      return .just(.tapButton)
    }
  }
  
  func reduce(state: TestViewReactor.State, mutation: TestViewReactor.Mutation) -> TestViewReactor.State {
    var state = state
    switch mutation {
    case .tapButton:
      return state
    }
  }
  
}


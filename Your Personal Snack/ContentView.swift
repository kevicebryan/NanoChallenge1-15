//
//  ContentView.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 18/03/23.
//

import SwiftUI

struct ContentView: View {
  var snackScore = [0, 0, 0, 0, 0]
  /// snackScore represent the score for each snack, highest will be shown in result.
  /// each idx represent a snack:
  /// 0 --> Beng Beng
  /// 1 --> Nano Nano
  /// 2 --> Lays
  /// 3 --> BaladoÍ
  /// 4 --> Kopiko
  var quizzes: [Quiz] = [quiz1, quiz2, quiz3, quiz4, quiz5]

  var body: some View {
    HomeView()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

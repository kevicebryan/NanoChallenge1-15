//
//  ContentView.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 18/03/23.
//

import AVKit
import SwiftUI

class SoundManager {
  static let instance = SoundManager()

  var player: AVAudioPlayer?

  func playSound() {
    guard let url = Bundle.main.url(forResource: "backgroundMusic1", withExtension: ".mp3") else {
      return
    }
    do {
      player = try AVAudioPlayer(contentsOf: url)
      player?.play()
    } catch {
      print("error playing sound \(error.localizedDescription)")
    }
  }
}

struct ContentView: View {
  var snackScore = [0, 0, 0, 0, 0]
  /// snackScore represent the score for each snack, highest will be shown in result.
  /// each idx represent a snack:
  /// 0 --> Beng Beng
  /// 1 --> Nano Nano
  /// 2 --> Lays
  /// 3 --> Balado
  /// 4 --> Kopiko
  var quizzes: [Quiz] = [quiz1, quiz2, quiz3, quiz4, quiz5]

  var body: some View {
    HomeView().preferredColorScheme(.light).onAppear {
      SoundManager.instance.playSound()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

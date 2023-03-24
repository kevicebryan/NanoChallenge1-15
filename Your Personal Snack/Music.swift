//
//  Music.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 24/03/23.
//

import AVFoundation
import Foundation

var audioPlayer: AVAudioPlayer?

func playBackgroundSound(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlayer?.play()
    } catch {
      print("ERROR: Cannot find and play the sound file!")
    }
  }
}

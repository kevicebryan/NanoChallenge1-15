//
//  Result.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 19/03/23.
//

import Foundation
import SwiftUI

struct Result {
  var id: Int
  var snack: String
  var snackImage: Image
  var factImage: Image
  var body: String
  var bodyImage: Image
}

struct DummyPlayer {
  var id = UUID()
  var snack: String
  var username: String
}

var bengbeng = Result(id: 0,
                      snack: "bengbeng",
                      snackImage: Image("beng beng"), factImage: Image("fact-bengbeng"),
                      body: "Kamu empatis dan peduli sesama lain. Bisa dibilang kamu seorang deep thinker dan kamu juga lumayan romantis lho!", bodyImage: Image("body-bengbeng"))

var nanonano = Result(id: 1,
                      snack: "nanonano",
                      snackImage: Image("nano nano"), factImage: Image("fact-nanonano"),
                      body: "Kamu orang yang rasional lho! Kreatif, open-minded dan kejujuran no. 1, buatmu tapi jangan kebanyakan overthinking.", bodyImage: Image("body-nanonano"))

var lays = Result(id: 2,
                  snack: "lays",
                  snackImage: Image("lays"), factImage: Image("fact-lays"),
                  body: "Hardworking, ambisius, dan penuh dengan motivasi, Itulah kamu! Tapi hati-hati jangan sampe burnout ya!", bodyImage: Image("body-lays"))

var balado = Result(id: 3,
                    snack: "stickbalado",
                    snackImage: Image("stick balado"), factImage: Image("fact-stickbalado"),
                    body: "Open-minded dan berani ambil resiko. Selain itu kamu juga strong dan independent! Biasanya penuh dengan energi.", bodyImage: Image("body-cheetos"))

var kopiko = Result(id: 4,
                    snack: "kopiko",
                    snackImage: Image("kopiko"), factImage: Image("fact-kopiko"),
                    body: "Kamu orang yang inovatif dan juga kreatif, kamu juga gampang mengutarakan opini. Tapi kamu cenderung ansos!", bodyImage: Image("body-kopiko"))

func getUserSnack(answers: [Double], results: [Result], userSnack: inout Result) {
  var max = 0.0
  var maxIdx = 0
  for answer in answers where answer > max {
    max = answer
    maxIdx = answers.firstIndex(of: max) ?? maxIdx
  }
  userSnack = results[maxIdx]
  print("Congratulations your snack is: \(userSnack.snack)")
}

func addScore(quiz: Quiz, selectedOption: Option, answers: inout [Double]) {
  answers[selectedOption.value] += quiz.weight
  print("added \(quiz.weight) to \(answers)")
}

func resetAnswer(answers: inout [Double]) {
  answers = [0.0, 0.0, 0.0, 0.0, 0.0]
}

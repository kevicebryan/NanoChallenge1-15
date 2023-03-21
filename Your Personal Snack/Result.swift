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

var bengbeng = Result(id: 0,
                      snack: "Beng Beng",
                      snackImage: Image("beng beng"), factImage: Image("fact-bengbeng"),
                      body: "Kamu empatis dan peduli sesama lain. Bisa dibilang kamu seorang deep thinker dan kamu juga lumayan romantis lho!", bodyImage: Image("body-bengbeng"))

var nanonano = Result(id: 1,
                      snack: "Nano Nano",
                      snackImage: Image("nano nano"), factImage: Image("fact-nanonano"),
                      body: "Kamu orang yang rasional lho! Kreatif, open-minded dan kejujuran no. 1, buatmu tapi jangan kebanyakan overthinking.", bodyImage: Image("body-nanonano"))

var lays = Result(id: 2,
                  snack: "Lays",
                  snackImage: Image("lays"), factImage: Image("fact-lays"),
                  body: "Hardworking, ambisius, dan penuh dengan motivasi, Itulah kamu! Tapi hati-hati jangan sampe burnout ya!", bodyImage: Image("body-lays"))

var balado = Result(id: 3,
                    snack: "Stick Balado",
                    snackImage: Image("stick balado"), factImage: Image("fact-balado"),
                    body: "Open-minded dan berani ambil resiko. Selain itu kamu juga strong dan independent! Biasanya penuh dengan energi.", bodyImage: Image("body-balado"))

var kopiko = Result(id: 4,
                    snack: "Kopiko",
                    snackImage: Image("kopiko"), factImage: Image("fact-kopiko"),
                    body: "Kamu orang yang inovatif dan juga kreatif, kamu juga gampang mengutarakan opini. Tapi kamu cenderung ansos!", bodyImage: Image("body-kopiko"))
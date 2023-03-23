//
//  Quiz.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 19/03/23.
//

import Foundation
import SwiftUI

struct Quiz: Identifiable {
  let id = UUID()
  var question: String
  var options: [Option]
  var weight: Double
}

struct Option: Identifiable & Hashable {
  let id = UUID()
  var label: String
  // 0 1 2 3 4 --> represents each snack, will be stored into an array
  var description: String
  var value: Int
}

var quiz1 = Quiz(question: "Apa Genre Music 🎵 Favoritmu?",
                 options: [
                   Option(label: "Jazz", description: "sakin santuynya saya pun sampe ngantuk 😴", value: 0),
                   Option(label: "Rap/Hip-hop", description: "g ngerti dia ngomong apa, tapi dengerin aja dah", value: 3),
                   Option(label: "Rock", description: "rock n roll adalah motto hidupku 🤘!", value: 2),
                   Option(label: "Indie", description: "anak senja banget ya 🌞", value: 4),
                   Option(label: "Pop", description: "mainstream banget sih, tapi yaudah lah ya...", value: 1)
                 ], weight: 0.6)

var quiz2 = Quiz(question: "Apa Genre Film 🎬 Favoritmu?",
                 options: [
                   Option(label: "Comedy", description: "apel, apel apa yang suka marah?", value: 1),
                   Option(label: "Horror", description: "tapi pas nonton matanya ditutupin", value: 3),
                   Option(label: "Action", description: "pasti suka nonton 0-7, eh 007 maksudnya", value: 2),
                   Option(label: "Documentary", description: "no komen sih.", value: 4),
                   Option(label: "Romance", description: "drakor adalah jalan ninjaku!", value: 0)
                 ], weight: 0.4)

var quiz3 = Quiz(question: "Jenis Makanan 🍜 Apa Yang Paling Kamu Suka?",
                 options: [
                   Option(label: "Pedas", description: "paling g bisa makan kalo g ada sambel", value: 3),
                   Option(label: "Asin", description: "air laut favoritku!", value: 2),
                   Option(label: "Manis", description: "🎵Hati-Hati Di-abetes🎵 -Tulus", value: 0),
                   Option(label: "Asem", description: "ngilu!", value: 1),
                   Option(label: "Pahit", description: "pasti tadinya jawab indie...", value: 4)
                 ], weight: 0.8)

var quiz4 = Quiz(question: "App 📱 Mana Yang Paling Sering Kamu Pakai?",
                 options: [
                   Option(label: "Pinterest", description: "si paling aesthetic dan moodboard", value: 0),
                   Option(label: "Linkedin", description: "si paling konek konek dan budak korporat", value: 2),
                   Option(label: "Instagram", description: "jawaban sejuta umat", value: 3),
                   Option(label: "TikTok", description: "kaum rebahan yang tergabut", value: 4),
                   Option(label: "YouTube", description: "kerjaannya nontonin Close the Door", value: 1)
                 ], weight: 0.3)

var quiz5 = Quiz(question: "Olahraga 🏀 Apa Yang Paling Kamu Suka?",
                 options: [
                   Option(label: "Gym", description: "gym terus tapi g kedot-kedot (cuaks)", value: 4),
                   Option(label: "Renang", description: "biar g perlu mandi lagi", value: 1),
                   Option(label: "Lari", description: "berlari menjauh dari realita ya 🗿", value: 2),
                   Option(label: "Cycling", description: "iya deh yang sepedanya mahal", value: 0),
                   Option(label: "Berkelompok", description: "basket, sepakbola, ya yang begituan deh pokoknya", value: 3)
                 ], weight: 0.3)

/// snackScore represent the score for each snack, highest will be shown in result.
/// each idx represent a snack:
/// 0 --> Beng Beng
/// 1 --> Nano Nano
/// 2 --> Lays
/// 3 --> Balado
/// 4 --> Kopiko

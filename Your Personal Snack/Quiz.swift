//
//  Quiz.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 19/03/23.
//

import Foundation
import SwiftUI

struct Quiz: Identifiable & Hashable {
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

var emptyOption = Option(label: "", description: "", value: 0)

var quiz1 = Quiz(question: "Apa Genre Music 🎵 Favoritmu?",
                 options: [
                   Option(label: "Jazz/RnB", description: "cocok untuk nyantai di coffee shop 😴", value: 0),
                   Option(label: "Hip-hop/Rap", description: "eminem, kanye, drake, dll. 🦉", value: 3),
                   Option(label: "Rock", description: "rock n roll adalah motto hidupku 🤘!", value: 2),
                   Option(label: "Indie", description: "lagu andalan anak senja... 🌞", value: 4),
                   Option(label: "Pop", description: "lagu yang trendy dan gak pernah salah 🕺!", value: 1)
                 ], weight: 0.5)

var quiz2 = Quiz(question: "Apa Genre Film 🍿 Favoritmu?",
                 options: [
                   Option(label: "Comedy", description: "Mr.Bean, Dumb n Dumber, dll. 🤣", value: 1),
                   Option(label: "Horror", description: "Insidious, Anabelle, Pengabdi Setan 👻", value: 3),
                   Option(label: "Action", description: "Mission Impossible, John Wick, Transformers 🔫", value: 2),
                   Option(label: "Documentary", description: "MH370, Drive to Survive, The Last Dance 📽️", value: 4),
                   Option(label: "Romance", description: "Titanic, Goblin, Her ❤️‍🔥", value: 0)
                 ], weight: 0.4)

var quiz3 = Quiz(question: "Jenis Makanan 🍜 Apa Yang Paling Kamu Suka?",
                 options: [
                   Option(label: "Pedas", description: "samyang, balado, sambel 🌶️", value: 3),
                   Option(label: "Asin", description: "pokokny harus ada micin/garam 🧂", value: 2),
                   Option(label: "Manis", description: "coklat, permen, caramel 🍩", value: 0),
                   Option(label: "Asem", description: "lemon, jeruk, rujak 🍋", value: 1),
                   Option(label: "Pahit", description: "kopi, teh tawar, matcha ☕️", value: 4)
                 ], weight: 0.6)

var quiz4 = Quiz(question: "App 📱 Mana Yang Paling Sering Kamu Pakai?",
                 options: [
                   Option(label: "Pinterest", description: "si paling aesthetic dan moodboard", value: 0),
                   Option(label: "Linkedin", description: "si paling konek konek dan budak korporat", value: 2),
                   Option(label: "Instagram", description: "jawaban sejuta umat", value: 3),
                   Option(label: "TikTok", description: "kaum rebahan yang tergabut", value: 4),
                   Option(label: "YouTube", description: "kerjaannya nontonin Close the Door", value: 1)
                 ], weight: 0.35)

var quiz5 = Quiz(question: "Olahraga 🏀 Apa Yang Paling Kamu Suka?",
                 options: [
                   Option(label: "Gym", description: "gym terus tapi g kedot-kedot 🏋️", value: 4),
                   Option(label: "Renang", description: "biar g perlu mandi lagi 🏊", value: 1),
                   Option(label: "Lari", description: "berlari menjauh dari realita ya 🗿", value: 2),
                   Option(label: "Cycling", description: "iya deh yang sepedanya mahal", value: 0),
                   Option(label: "Berkelompok", description: "basket, sepakbola, dll. ⚽️", value: 3)
                 ], weight: 0.25)

/// snackScore represent the score for each snack, highest will be shown in result.
/// each idx represent a snack:
/// 0 --> Beng Beng
/// 1 --> Nano Nano
/// 2 --> Lays
/// 3 --> Balado
/// 4 --> Kopiko

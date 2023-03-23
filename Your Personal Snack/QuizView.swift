//
//  QuizView.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 18/03/23.
//

import SwiftUI

struct QuizView: View {
  @Binding var username: String
  @Binding var answers: [Double]
  @State var quizzes = [quiz1, quiz2, quiz3, quiz4, quiz5]
  @State var results = [bengbeng, nanonano, lays, balado, kopiko]
  @State var userSnack = lays

  @Environment(\.managedObjectContext) var moc

  var body: some View {
    ZStack {
      Color("bgOrange").edgesIgnoringSafeArea(.all)
      Image("oval-background").padding(.top, 400).edgesIgnoringSafeArea(.all).scaleEffect(1.4)

      VStack {
        ScrollView(.horizontal, showsIndicators: true) {
          HStack(alignment: .center, spacing: 16.0) {
            ForEach($quizzes) { quiz in
              QuizCardView(quiz: quiz, answers: $answers)
            }
          }.padding(.leading, 16).padding(.trailing, 16)
        }.padding(.top, 8)

        NavigationLink(destination: ResultView(username: $username, snack: $userSnack).onAppear {
          getUserSnack(answers: answers, results: results, userSnack: &userSnack)
          let player = Player(context: moc)
          player.id = UUID()
          player.username = username
          player.snack = userSnack.snack
          try? moc.save()
        }) {
          HStack {
            Text("Know my result").frame(width: 160, height: 40)
          }.foregroundColor(.white).background(.orange).cornerRadius(12).frame(width: 300, height: 40).padding(.top, 20)
        }.simultaneousGesture(TapGesture().onEnded {})
      }.padding(.top, 16)
    }
  }
}

struct QuizView_Previews: PreviewProvider {
  static var previews: some View {
    QuizView(username: .constant("Kevin"),
             answers: .constant([0.0, 0.0, 0.0, 0.0, 0.0]))
  }
}

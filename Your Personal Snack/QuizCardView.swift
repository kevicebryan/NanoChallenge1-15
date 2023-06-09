//
//  QuizCardView.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 18/03/23.
//

import SwiftUI

struct QuizCardView: View {
  @Binding var quiz: Quiz
  @Binding var answer: Option

  @State var selection: Option?
  @State var rowColor = Color.orange

  var body: some View {
    VStack {
      // might need to change list to picker, but we'll see
      VStack(alignment: .center, spacing: 12.0) {
        VStack(alignment: .center) {
          Text(quiz.question)
            .fontWeight(.bold).font(.title).multilineTextAlignment(.center)
        }.frame(width: 280, height: 180)
          .background(LinearGradient(colors: [.purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing))
          .foregroundColor(.white)
          .cornerRadius(20).padding(.top, 24)

        List(quiz.options, id: \.self,
             selection: $selection)
        {
          option in
          VStack(alignment: .leading) {
            Text(option.label)
              .font(.title2)
              .fontWeight(.semibold)
            Text(option.description)
              .font(.caption)
              .fontWeight(.light).opacity(0.8)

              .onTapGesture {
                // bug here, adds on every tap
                // want to change only add the final selected row
//                addScore(quiz: quiz, selectedOption: option, answers: &answers)
                selection = option
                answer.value = option.value
                rowColor = Color.purple
              }
          }
          .listRowBackground(self.selection == option ? Color.purple : Color.white).foregroundColor(self.selection == option ? Color.white : Color.black)
        }.scrollContentBackground(.hidden).background(Color.white.opacity(0)).cornerRadius(12).padding(.bottom, -20)
      }.background(.thinMaterial).frame(width: 330, height: 600).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 2))
    }
  }

  struct QuizCardView_Previews: PreviewProvider {
    static var previews: some View {
      // this is just default value,ignore it
      QuizCardView(
        quiz: .constant(
          quiz1
        ), answer: .constant(Option(label: "", description: "", value: 0))
      )
    }
  }
}

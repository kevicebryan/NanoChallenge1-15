//
//  QuizCardView.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 18/03/23.
//

import SwiftUI

struct QuizCardView: View {
  @Binding var quiz: Quiz
  @State var selection: Option?

  var body: some View {
    VStack {
      // might need to change list to picker, but we'll see
      VStack(alignment: .center, spacing: 12.0) {
        VStack(alignment: .center) {
          Text(quiz.question)
            .fontWeight(.bold).font(.title).multilineTextAlignment(.center)
        }.frame(width: 280, height: 180)
          .background(LinearGradient(colors: [.pink, .purple], startPoint: .top, endPoint: .bottom))
          .foregroundColor(.white)
          .cornerRadius(20).padding(.top, 24)

        List(quiz.options, id: \.self,
             selection: $selection)
        {
          option in
          VStack(alignment: .leading) {
            Text(option.label)
              .font(.title)
              .fontWeight(.semibold)
            Text(option.description)
              .font(.caption)
              .fontWeight(.light).opacity(0.8)
          }
          .listRowBackground(Color.orange)
        }.scrollContentBackground(.hidden).background(Color.white.opacity(0)).cornerRadius(12)
      }.background(.thinMaterial).frame(width: 330, height: 680).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 2))
    }
  }

  struct QuizCardView_Previews: PreviewProvider {
    static var previews: some View {
      // this is just default value,ignore it
      QuizCardView(
        quiz: .constant(
          quiz1
        )
      )
    }
  }
}

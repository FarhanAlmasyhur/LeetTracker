//
//  ListProblem.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 29/07/22.
//

import SwiftUI

struct ListProblem: View {
    
    @State var problem: StaticProblem = StaticProblem(difficulty: "Easy", title: "Two-Sum", isCleared: false)
    
    var body: some View {
        Text(problem.title)
                .font(.system(size: 16))
                .multilineTextAlignment(.leading)
                .frame(width: 270, alignment: .leading)
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 30, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(problem.isCleared ? Color.gray : Color.white)
                        .shadow(color: .gray, radius: 2, x: 0, y: 1.5)
                )
                .opacity(problem.isCleared ? 0.5 : 1)
    }
}

struct ListProblem_Previews: PreviewProvider {
    static var previews: some View {
        ListProblem()
    }
}

//
//  ExperiencesView.swift
//  PortfolioApp
//
//  Created by Rizky Mashudi on 24/08/21.
//

import SwiftUI

struct ExperiencesView: View {
    // MARK: -Variables
    var experience: [Experience]
    @State var showExperiences = true
    
    // MARK: -View
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            HStack(spacing: 16) {
                Text("Experiences")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                Spacer()
                Button{
                    withAnimation(.easeInOut(duration: 0.35)){
                        showExperiences.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            
            if(showExperiences){
                ForEach(experience) { experience in
                    ExperienceView(experience: experience)
                }
            }
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            ExperiencesView(experience: AppModel().portfolio.experience)
                .padding(24)
        }
    }
}

//
//  ExperienceView.swift
//  PortfolioApp
//
//  Created by Rizky Mashudi on 24/08/21.
//

import SwiftUI

struct ExperienceView: View {
    // MARK:- Variables
    var experience: Experience
    
    // MARK:- Views
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading){
                    Text(experience.role)
                        .font(Montserrat.semibold.font(size: 18.5))
                    Text(experience.companyName)
                        .font(Montserrat.medium.font(size: 16.5))
                    Text(experience.duration)
                        .font(Montserrat.mediumItalic.font(size: 16))
                        .opacity(0.45)
                        .padding(.top, 14)
                    
                }.padding(.leading, 16)
            }.padding(.top, 8)
        }.fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            ExperienceView(experience: AppModel().portfolio.experience[0])
                .padding(24)
        }
    }
}

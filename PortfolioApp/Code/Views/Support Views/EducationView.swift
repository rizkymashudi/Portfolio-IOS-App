//
//  EducationView.swift
//  PortfolioApp
//
//  Created by Rizky Mashudi on 24/08/21.
//

import SwiftUI

struct EducationView: View {
    // MARK: -Variables
    var education: Educations
    
    
    // MARK: -View
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
                    Text(education.collegeName)
                        .font(Montserrat.semibold.font(size: 18.5))
                    Text(education.concentration)
                        .font(Montserrat.medium.font(size: 16.5))
                    Text(education.duration)
                        .font(Montserrat.mediumItalic.font(size: 16))
                        .opacity(0.45)
                        .padding(.top, 14)
                    
                }.padding(.leading, 16)
            }.padding(.top, 8)
        }.fixedSize()
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            EducationView(education: AppModel().portfolio.educations[0])
                .padding(24)
        }
    }
}

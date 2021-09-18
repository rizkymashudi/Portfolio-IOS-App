//
//  EducationsView.swift
//  PortfolioApp
//
//  Created by Rizky Mashudi on 24/08/21.
//

import SwiftUI

struct EducationsView: View {
    // MARK: -Variables
    var educations: [Educations]
    @State var showEducations = true
    
    
    // MARK: -View
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            HStack(spacing: 16) {
                Text("Educations")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                Spacer()
                Button{
                    withAnimation(.easeInOut(duration: 0.35)){
                        showEducations.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showEducations ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            
            if(showEducations){
                ForEach(educations) { educations in
                    EducationView(education: educations)
                }
            }
        }
    }
}

struct EducationsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            EducationsView(educations: AppModel().portfolio.educations)
                .padding(24)
        }
    }
}

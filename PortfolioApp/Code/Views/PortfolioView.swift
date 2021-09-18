//
//  ContentView.swift
//  PortfolioApp
//
//  Created by Rizky Mashudi on 23/08/21.
//

import SwiftUI

struct PortfolioView: View {
    
    // MARK:- Variables
    var appModel: AppModel = AppModel()
    
    // MARK:- views
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
                    HeaderView(appModel: appModel)
                    
                    SkillsView(skills: appModel.portfolio.skills
                               , width: UIScreen.main.bounds.width - 40)
                        .padding(.top, 24)
                    
                    ExperiencesView(experience: appModel.portfolio.experience)
                        .padding(.top, 42)
                    
                    EducationsView(educations: appModel.portfolio.educations)
                        .padding(.top, 42)
                }.padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}

//
//  ProfileViewModel.swift
//  JustPlay
//
//  Created by Vijay Parmar on 05/12/23.
//

import Foundation

class ProfileViewModel:ObservableObject{
    
    
    @Published var options:[ProfileOption] = []
    
    init() {
        setOptions()
    }
    
     func setOptions(){
         options.append(ProfileOption(title: "Profile", image: "img_user", isSelected: true))
         options.append(ProfileOption(title: "Notifications", image: "img_notification", isSelected: false))
         options.append(ProfileOption(title: "History", image: "img_history", isSelected: false))
         options.append(ProfileOption(title: "My Subscription", image: "img_calendar", isSelected: false))
         options.append(ProfileOption(title: "Setting", image: "img_settings", isSelected: false))
         options.append(ProfileOption(title: "Help", image: "img_question", isSelected: false))
         options.append(ProfileOption(title: "Logout", image: "img_arrowright", isSelected: false))
    }
    
    
}

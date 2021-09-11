//
//  CustomTabSwitcher.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 11.09.2021.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTab = .episodes
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        return tab.rawValue.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            //Custom tab picker
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:20) {
                    ForEach(tabs, id:\.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab==currentTab ? Color.red : Color.clear)
                            
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight:.bold))
                                    .foregroundColor(tab==currentTab ? Color.white : Color.gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                        }
                    }
                }
            }
            
            //Selected View
            
            switch currentTab {
            case .episodes:
                Text("EPISODES")
            case .trailers:
                Text("TRAILERS")
            case .more:
                Text("MORE")
            }
        }
        .foregroundColor(.white)
      
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

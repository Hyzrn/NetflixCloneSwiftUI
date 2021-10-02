//
//  SearchBar.swift
//  NetflixCloneSwiftUI
//
//  Created by Selahattin Hayzaran on 2.10.2021.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text:String
    @State private var isEditing = true
    @Binding var isLoading: Bool
    
    var body: some View {
        ZStack(alignment:.leading) {
            
            Color.graySearchBackground
                .frame(width: 410, height: 36)
                .cornerRadius(8)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)
                
                TextField("Seach", text: $text)
                    .background(Color.graySearchBackground)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                    .padding(7)
                    .padding(.leading, -7)
                    .padding(.horizontal, 10)
                    .onTapGesture(perform: {
                        isEditing = true
                    })
                
                if !text.isEmpty {
                    if isLoading {
                        Button(action: {
                            text = ""
                        }, label: {
                            ProgressView()
                           // to resize your spinner
                           // .scaleEffect(1.5, anchor: .center)
                           .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        
                        })
                        .padding(.trailing,26)
                       
                    } else {
                        Button(action: {
                            text = ""
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.graySearchText)
                                .frame(width: 35, height: 35)
                        }).padding(.trailing,18)
                        
                    }
                }
                
                if isEditing {
                    Button(action: {
                        text = ""
                        isEditing = false
                        hideKeyboard()
                    }, label: {
                        Text("Cancel")
                            .foregroundColor(.white)

                    })
                    .padding(.trailing,10)
                }
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            SearchBar(text: .constant(""), isLoading: .constant(false))
                .padding()
        }
    }
}

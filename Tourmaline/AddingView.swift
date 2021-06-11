//
//  AddingView.swift
//  Tourmaline
//
//  Created by Горячев Александр on 11.06.2021.
//

import SwiftUI

struct AddingView: View {
    @State private var aphorism = ""
    @State private var author = ""
    
    var body: some View {
        NavigationView{
        ZStack{
            Color.lightGray
            VStack(alignment:.center, spacing: 30){
                
                VStack{
                    Text("Type your aphorism there")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3)
                   
                    TextEditor( text: $aphorism)
                        .frame(width: 350, height: 230, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(15)
                        .multilineTextAlignment(.center)
                        .font(.headline)
                        .lineSpacing(10)
                        
                
                
                    Divider()
                }.padding()
                VStack{
                    Text("If this aphorism dooesn't belong to you, please specify the correct author")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3)
                    TextField("Specify the author", text: $author)
                        
                        .frame(width: 350, height: 50, alignment: .leading)
                        .background(Color.white)
                        .cornerRadius(15)
                        .multilineTextAlignment(TextAlignment.center)
                
                
                    Divider()
                }.padding()
                Button(action: {
                    var sender = AphorismModel(id: 5, text: self.aphorism, author: self.author)
                    
                    
                    
                }, label: {
                    ZStack{
                        Capsule()
                            .frame(width: 200, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("Submit")
                            .foregroundColor(.white)
                            .font(.title2)
                    }
                })

            }.padding()
        }.edgesIgnoringSafeArea(.all).navigationTitle("Add your aphorism")
        }
        
    }
}

struct AddingView_Previews: PreviewProvider {
    static var previews: some View {
        AddingView()
    }
}

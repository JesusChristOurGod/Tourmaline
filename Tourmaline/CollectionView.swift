//
//  CollectionView.swift
//  Tourmaline
//
//  Created by Горячев Александр on 11.06.2021.
//

import SwiftUI
struct AphorismModel: Identifiable {
    var id: Int
    var text: String
    var author: String
}
class AphorismViewModel: ObservableObject{
    @Published var aphorisms: [AphorismModel] = []
    init() {
        getAphs()
    }
   
    
    func getAphs(){
        let aph1 = AphorismModel(id: 1, text: "Когда водила протянул Aux, все мои волки делают AUF", author: "Фрыдрых Ныцше")
        
        let aph2 = AphorismModel(id: 2, text: "csjbskds", author: "sdkjbfdkjdbfsdsds");
        let aph3 = AphorismModel(id: 3, text: "sjkddsb", author: "owieqwpweiqwwqeoi");
        let aph4 = AphorismModel(id: 4, text: "djks", author: "dsjdnsdsj")
        aphorisms.append(aph1)
        aphorisms.append(aph2)
        aphorisms.append(aph3)
        
    }
}

struct CollectionView: View {

//    @State var aphorisms: [AphorismModel] = [
//
//
//    ]
    @StateObject var aphorismViewModel: AphorismViewModel = AphorismViewModel()
    
    var body: some View {
            NavigationView{
                ZStack {
                    Color.lightGray.edgesIgnoringSafeArea(.all)
                    VStack{
                        ScrollView{
                            ForEach (aphorismViewModel.aphorisms) { aphorism in
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                
                                
                                VStack(alignment:.trailing, spacing:20){
                                    Text(aphorism.text).font(.title).padding()
                                        .frame(maxWidth: 340, maxHeight: 170).lineLimit(4)
                                        
                                    HStack(alignment: .bottom){
                                        Image(systemName:"heart.fill").foregroundColor(.red)
                                            .font(.largeTitle)
                                        Spacer()
                                        Text(aphorism.author).font(.title2)
                                        
                                    }.padding(.horizontal, 15).padding(.bottom)
                                }.frame(width: 350, height: 200, alignment: .trailing).padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            }
                            Divider()
                        }
                    }
                    }
                }.navigationTitle("Collection")
            }
    }
}


struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}

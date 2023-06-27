//
//  porductCard.swift
//  ecomm
//
//  Created by KCD on 1/14/23.
//

import SwiftUI

struct porductCard: View {
    @State var imageURL : String
    @State var rating : String
    @State var count : String
    @State var productName :  String
    @State var price : String
    @State var addToWishList : Bool = false
    var body: some View {
        VStack(alignment: .leading){
            AsyncImage(url: URL(string: imageURL)) { image in
                VStack{
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 300)
                }
            } placeholder: {
                
            }
            .frame(maxHeight: 300)
            .overlay {
                VStack{
                    HStack{
                        Spacer()
                        Image(systemName: addToWishList ? "heart.fill" : "heart")
                            .foregroundColor(.black)
                            .onTapGesture {
                                addToWishList.toggle()
                            }
                    }
                    Spacer()
                    HStack(spacing: 0){
                        Spacer()
                        Group{
                            Text("\(Image(systemName: "star.square.fill"))\(rating) \(count)")
                                .font(Font.caption2)
                        }
                        .background(.black)
                    }
                    .foregroundColor(.yellow)
                }

            }
                Text(productName)
                    .fontWeight(.bold)
                    .lineLimit(3, reservesSpace: true)
//                Text("₹\(price)")
            HStack{
                Text("$\(price)")
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "cart.fill.badge.plus")
//                        .foregroundColor(.black)
                }

            }
        }
        
        .padding()
        .frame(width: UIScreen.main.bounds.width / 2.2)
        .foregroundColor(.black)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .gray, radius: 5, x: 0, y: 5)
    }
}

struct porductCard_Previews: PreviewProvider {
    static var previews: some View {
        porductCard(imageURL: "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg", rating: "3.9", count: "120", productName: "", price: "0")
    }
}

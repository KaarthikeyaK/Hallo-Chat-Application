//
//  HalloButton.swift
//  Hallo
//
//  Created by KAARTHIKEYA K on 02/06/23.
//

import SwiftUI

struct HalloButton: View {
    
    let title : String
    let background: Color
    let action : () -> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                    .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                Text(title)
                    .foregroundColor(.white)
                    .font(.custom("Futura", size: 20))
                    .bold()
            }
        }

    }
}

struct HalloButton_Previews: PreviewProvider {
    static var previews: some View {
        HalloButton(title: "Test Title", background: .blue){
            // Action
        }
    }
}

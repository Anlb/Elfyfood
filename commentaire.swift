//
//  commentaire.swift
//  ELFYFOOD
//
//  Created by Pascaline Thuilliez on 07/02/2020.
//  Copyright © 2020 Maertens Yann-Christophe. All rights reserved.
//

import SwiftUI

struct commentaire: View {
    @Binding var recipe: Recipe
    @State var text = ""
    var body: some View {
        VStack {
            HStack {
            Text("Ecrire un commentaire")
                Spacer()
            }
            TextView(text: $text).frame(height: 140)
            Spacer()
            Button(action: {
                // action du bouton
                self.recipe.comments.append(Comment(pseudo: "", message: self.text))
                self.text = ""
            },  label: {
                Text("Envoyer")
                    .padding(13)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(16)
                
            })
            Spacer(minLength:450)
        }.padding()
        
    }
}

struct TextView: UIViewRepresentable {
    @Binding var text: String
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UITextView {
        
        let myTextView = UITextView()
        myTextView.delegate = context.coordinator
        
        myTextView.font = UIFont(name: "HelveticaNeue", size: 15)
        myTextView.isScrollEnabled = true
        myTextView.isEditable = true
        myTextView.isUserInteractionEnabled = true
        myTextView.backgroundColor = UIColor(white: 0.0, alpha: 0.05)
        
        return myTextView
    }
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
    
    class Coordinator : NSObject, UITextViewDelegate {
        
        var parent: TextView
        
        init(_ uiTextView: TextView) {
            self.parent = uiTextView
        }
        
        func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
            return true
        }
        
        func textViewDidChange(_ textView: UITextView) {
            print("text now: \(String(describing: textView.text!))")
            self.parent.text = textView.text
        }
    }
    
    }

struct commentaire_Previews: PreviewProvider {
    @State static var recipe = recipesMock[0]
    static var previews: some View {
        commentaire(recipe: $recipe)
}
}

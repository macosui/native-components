//
//  HelpButton.swift
//  native-components
//
//  Created by Reuben Turner on 3/7/23.
//

import SwiftUI

struct HelpButton: View {
    var action : () -> Void

    var body: some View {
        Button(action: action, label: {
            ZStack {
                Circle()
                .strokeBorder(Color(.separatorColor), lineWidth: 0.5)
                    .background(Circle().foregroundColor(Color(NSColor.controlColor)))
                    .shadow(color: Color(.separatorColor).opacity(0.3), radius: 1)
                    .frame(width: 20, height: 20)
                Text("?").font(.system(size: 15, weight: .medium ))
            }
        })
        .buttonStyle(PlainButtonStyle())
    }
}


struct HelpButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HelpButton(action: {}).padding()
            if #available(OSX 11.0, *) {
                HelpButton(action: {}).padding().preferredColorScheme(.dark)
            }
        }
    }
}


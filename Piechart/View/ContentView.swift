import SwiftUI

struct ContentView: View {
    
    var backgroundColor: Color = .orange
    var languages:  [LanguageModel]

    var body: some View {
        VStack {
            PiechartView(languages: languages)
                .overlay(
                    Circle()
                        .fill(backgroundColor)
                        .frame(width: 230, height: 230, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color.init(red: 23, green: 32, blue: 22))
                )
                .frame(height: 360)
                .padding(.top, 20)
                .clipShape(Circle())
                .shadow(radius: 8)
            
            Spacer()
            LeyendView(languages: languages)
                .padding()
        }
        .background(backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(languages: fakeLanguages)
    }
}


import SwiftUI

struct LeyendView: View {
    
    var languages:  [LanguageModel]

    var body: some View {
        VStack {
            ForEach(languages) { language in
                HStack (alignment: .top) {
                    Text(language.name)
                    GeometryReader { proxy in
                        HStack (alignment: .center) {
                            Spacer(minLength: 0)
                            Rectangle()
                                .fill(language.color)
                                .frame(width: getWidth(width: proxy.frame(in: .global).width, value: language.percent) ,height: 10)
                            
                            Text(String(format: "\(language.percent)", "%.0f"))
                                .fontWeight(.bold)
                                .padding(.leading, 10)
                        }
                    }
                    
                }
                .padding(.top, 18)
            }
        }
    }
    
    func getWidth(width: CGFloat, value: CGFloat) -> CGFloat {
        let temp = value / 100
        return temp * width
    }
}



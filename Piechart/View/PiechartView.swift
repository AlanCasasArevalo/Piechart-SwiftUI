import SwiftUI

struct PiechartView: View {
    
    var languages:  [LanguageModel]
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                ForEach(languages.indices) { index in
                    DrawShapeView(center: getCenterPosition(proxy: proxy), index: index, languages: languages)
                }
            }
        }
    }
    
    func getCenterPosition(proxy: GeometryProxy) -> CGPoint {
        return CGPoint(x: proxy.frame(in: .global).width / 2, y: proxy.frame(in: .global).height / 2)
    }
    
    func fillWithEmptyLanguage() -> LanguageModel? {
        var percent: CGFloat = 0
        languages.forEach { language in
            percent += language.percent
        }
        
        if percent < 100 {
            let extra = LanguageModel(id: UUID(), percent: percent - 100, name: "empty", color: .orange)
            return extra
        }
        
        return nil
    }
}

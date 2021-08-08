import SwiftUI

struct DrawShapeView: View {
    var center: CGPoint
    var index: Int
    var languages:  [LanguageModel]

    var body: some View {
        Path { path in
            path.move(to: center)
                
            path.addArc(center: center, radius: 180, startAngle: .init(degrees: from()), endAngle: .init(degrees: to()), clockwise: false)
        }
        .fill(
            languages[index].color
        )
    }

    func from () -> Double {
        var temporal: Double = 0
        
        if index == 0 {
            return 0
        } else {
            for i in 0...index - 1 {
                temporal += Double(languages[i].percent / 100) * 360
            }
            
            return temporal
        }
    }

    
    func to () -> Double {
        var temporal: Double = 0
        
        for i in 0...index {
            temporal += Double(languages[i].percent / 100) * 360
        }
        
        return temporal
    }
}

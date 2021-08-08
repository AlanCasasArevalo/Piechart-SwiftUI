import SwiftUI

extension View {
    func getCenterScreenPoint () -> CGPoint {
        return CGPoint(x: getWidthCenter(), y: getHeightCenter())
    }
    
    func getWidthCenter () -> CGFloat {
        return UIScreen.main.bounds.width / 2
    }
    
    func getHeightCenter () -> CGFloat {
        return UIScreen.main.bounds.height / 2
    }
}

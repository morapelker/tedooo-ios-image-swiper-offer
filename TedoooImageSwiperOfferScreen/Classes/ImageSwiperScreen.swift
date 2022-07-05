import UIKit
import ProductProviderApi
import Combine

public struct ShopOwner {
    public init(id: String, username: String, avatar: String) {
        self.id = id
        self.username = username
        self.avatar = avatar
    }
    
    public let id: String
    public let username: String
    public let avatar: String
}



public protocol ImageSwiperScreen {
    
    func launch(in vc: UIViewController, images: [URL], prices: [ProductItem?], currentIndex: Int, transitionFrom: UIImageView?, owned: Bool, shopUser: ShopOwner?, shopId: String) -> PassthroughSubject<Int, Never>
}

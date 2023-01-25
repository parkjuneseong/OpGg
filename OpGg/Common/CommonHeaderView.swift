

import UIKit

class CommonHeaderView: UIView {
    private var nibName: String {
        "\(CommonHeaderView.self)"
    }
    private var containerView = UIView()
    
    @IBOutlet weak var headerLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?  (coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    private func loadNib() {
        guard let loadedNib = Bundle.main.loadNibNamed(nibName, owner: self, options: nil) else {
            return
        }
        containerView = loadedNib.first as? UIView ?? UIView()
        containerView.frame = bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(containerView)
        customViewDidLoad()
    }
    
    private func customViewDidLoad() {
    }
}



//헤더뷰 , 푸터뷰 구현
//
//var headerView: UIView? {
//    get {
//        let view = CommonHeaderView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 75))
//        view.headerLabel.numberOfLines = 2
//        view.headerLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
//        view.headerLabel.text = "놓치지 마세요! \n지금 할인중인 스킨 & 챔피언"
//
//        return view
//    } set {
//        _ = newValue
//    }
//}
//
//var headerHeight: CGFloat {
//    get {
//        return 75
//    } set {
//        _ = newValue
//    }
//}
//
//
//
//var footerView: UIView? {
//    get {
//        let view = CommonFooterView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 15))
//
//
//
//        return view
//    } set {
//        _ = newValue
//    }
//}
//
//var footerHeight: CGFloat {
//    get {
//        return 15
//    } set {
//        _ = newValue
//    }
//}














/* import UIKit

class EmotionTableViewHeaderView: UIView {
    private var nibName: String {
        "\(EmotionTableViewHeaderView.self)"
    }
    private var containerView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?  (coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    private func loadNib() {
        guard let loadedNib = Bundle.main.loadNibNamed(nibName, owner: self, options: nil) else {
            return
        }
        containerView = loadedNib.first as? UIView ?? UIView()
        containerView.frame = bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(containerView)
        customViewDidLoad()
    }
    
    private func customViewDidLoad() {
        
    }
}*/


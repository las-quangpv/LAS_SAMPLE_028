import UIKit

open class SlackLoadingAnimator: UIView, CRRefreshProtocol {
    
    open var view: UIView { return self }
    
    open var insets: UIEdgeInsets = .zero
    
    open var trigger: CGFloat = 60
    
    open var execute: CGFloat = 60
    
    open var endDelay: CGFloat = 0
    
    open var hold: CGFloat     = 60
    
    var loadingView: WCLLoadingView = {
        let loadView = WCLLoadingView(frame: .init(x: 0, y: 0, width: 40, height: 40))
        loadView.isUserInteractionEnabled = false
        return loadView
    }()
    
    open func refreshBegin(view: CRRefreshComponent) {
        loadingView.startAnimation()
    }
    
    open func refreshEnd(view: CRRefreshComponent, finish: Bool) {
        loadingView.stopAnimation()
    }
    
    open func refresh(view: CRRefreshComponent, progressDidChange progress: CGFloat) {
        
    }
    
    open func refresh(view: CRRefreshComponent, stateDidChange state: CRRefreshState) {
        
    }
    
    open func refreshWillEnd(view: CRRefreshComponent) {
    
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(loadingView)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open override func layoutSubviews() {
        super.layoutSubviews()
        let s = bounds.size
        let w = s.width
        let h = s.height
        loadingView.center = .init(x: w / 2.0, y: h / 2.0)
    }
}

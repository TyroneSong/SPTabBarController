//
//  File.swift
//  
//
//  Created by 宋璞 on 2023/5/19.
//

import UIKit

open class SPTabBarItem: UITabBarItem {
    // MARK: - UIView properties
    
    open override var tag: Int {
        didSet { self.contentView.tag = tag }
    }
    
    open override var isEnabled: Bool {
        didSet { self.contentView.enabled = isEnabled }
    }
    
    open override var title: String? {
        didSet { self.contentView.title = title }
    }
    
    open override var image: UIImage? {
        didSet { self.contentView.image = image }
    }
    
    open override var selectedImage: UIImage? {
        get { contentView.selectedImage }
        set { contentView.selectedImage = newValue }
    }
    
    
    open override var badgeValue: String? {
        get { contentView.badgeValue }
        set { contentView.badgeValue = newValue }
    }
    
    open override var titlePositionAdjustment: UIOffset {
        get { contentView.titlePositionAdjustment }
        set { contentView.titlePositionAdjustment = newValue }
    }
    
    @available(iOS 8.0, *)
    open override var badgeColor: UIColor? {
        get { contentView.badgeColor }
        set { contentView.badgeColor = newValue }
    }
    
    
    // MARK: - SPTabBarItem Properties
    open var contentView: SPTabBarItemContentView = SPTabBarItemContentView() {
        didSet {
            self.contentView.updateLayout()
            self.contentView.updateDisplay()
        }
    }
    
    // MARK: - Initialize
    public init(_ contentView: SPTabBarItemContentView = SPTabBarItemContentView(), title: String? = nil, image: UIImage? = nil, selectedImage: UIImage? = nil, tag: Int = 0) {
        super.init()
        self.contentView = contentView
        self.contentView.title = title
        self.contentView.image = image
        self.contentView.selectedImage = selectedImage
        self.contentView.tag = tag
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

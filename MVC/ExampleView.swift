//
//  ExampleView.swift
//  MVC
//
//  Created by Trung on 14/3/24.
//

import UIKit

class ExampleView: UIView {
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        label.text = "Hello"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public func configure(with name: String){
        label.text = name
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(
            x: 10, y: 10, width: frame.size.width - 20, height: frame.size.height - 20
        )
        
    }
}

//
//  DetailNewsView.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 14.09.2021.
//

import UIKit

class DetailNewsView: UIView {
    
    var courseNameLabel: UILabel!
    var numberOfLessonsLabel: UILabel!
    var numberOfTestsLabel: UILabel!
    var courseImage: UIImageView!

    override init(frame: CGRect) {
        super .init(frame: frame)
        self.backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        courseNameLabel = UILabel()
        addSubview(courseNameLabel)
        courseNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        courseNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        courseNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        
        courseImage = UIImageView()
        addSubview(courseImage)
        courseImage.topAnchor.constraint(equalTo: courseNameLabel.topAnchor, constant: 15).isActive = true
        courseImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        courseImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        
        numberOfLessonsLabel = UILabel()
        addSubview(numberOfLessonsLabel)
        courseNameLabel.topAnchor.constraint(equalTo: courseImage.topAnchor, constant: 10).isActive = true
        courseNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        courseNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        
        numberOfTestsLabel = UILabel()
        addSubview(numberOfTestsLabel)
        courseNameLabel.topAnchor.constraint(equalTo: numberOfLessonsLabel.topAnchor, constant: 10).isActive = true
        courseNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        courseNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        
    }
    
    func setupConstraints() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}

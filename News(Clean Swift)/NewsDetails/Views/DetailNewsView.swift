//
//  DetailNewsView.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 14.09.2021.
//

import UIKit

class DetailNewsView: UIView {
    
    var courseNameLabel = UILabel()
    var numberOfLessonsLabel = UILabel()
    var numberOfTestsLabel = UILabel()
    var courseImage = UIImageView()

    override init(frame: CGRect) {
        super .init(frame: frame)
        self.backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView() {
        addSubview(courseNameLabel)
        
        addSubview(courseImage)
        addSubview(numberOfLessonsLabel)
        addSubview(numberOfTestsLabel)
        setupConstraints()
        courseImage.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        courseImage.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        courseImage.contentMode = .scaleAspectFit
        courseImage.clipsToBounds = true
        
    }
    
    override func layoutIfNeeded() {
        courseImage.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
    }
    
    func setupConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        courseNameLabel.translatesAutoresizingMaskIntoConstraints = false
        courseImage.translatesAutoresizingMaskIntoConstraints = false
        numberOfLessonsLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfTestsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            courseNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 80),
            courseNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            courseNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            courseImage.topAnchor.constraint(equalTo: courseNameLabel.bottomAnchor, constant: 15),
            courseImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 10),
            courseImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            numberOfLessonsLabel.topAnchor.constraint(equalTo: courseImage.bottomAnchor, constant: 10),
            numberOfLessonsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            numberOfLessonsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            numberOfTestsLabel.topAnchor.constraint(equalTo: numberOfLessonsLabel.bottomAnchor, constant: 10),
            numberOfTestsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            numberOfTestsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10)
        ])
    }
    
}

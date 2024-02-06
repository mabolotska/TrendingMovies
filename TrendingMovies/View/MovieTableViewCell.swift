//
//  MovieTableViewCell.swift
//  TrendingMovies
//
//  Created by Maryna Bolotska on 01/02/24.
//

import UIKit
import SDWebImage

class MovieTableViewCell: UITableViewCell {
    func setupCell(viewModel: MovieTableCellViewModel) {
        self.nameLabel.text = viewModel.name
        self.dateLabel.text = viewModel.date
        self.scoreLabel.text = viewModel.score
        self.movieImageView.sd_setImage(with: viewModel.image)
    }
    
    
    static var identifier: String {
        get {
            "MovieTableViewCell"
        }
    }
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
        
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private properties
    private var containerView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    private let movieImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    var nameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.3
        label.numberOfLines = 1
        return label
    }()
    private var dateLabel: UILabel = {
       let label = UILabel()
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.3
        return label
    }()
    private var scoreLabel: UILabel = {
       let label = UILabel()
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.3
        return label
    }()
    
    
}


private extension MovieTableViewCell {
    func initialize() {
     
        containerView.round()
        containerView.addBorder(color: .darkGray, width: 1)
        containerView.backgroundColor = .lightGray
        movieImageView.round(5)
  
        contentView.addSubview(containerView)
        containerView.addSubview(movieImageView)
        containerView.addSubview(nameLabel)
        containerView.addSubview(dateLabel)
        containerView.addSubview(scoreLabel)
        
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(5)
              }
        
        movieImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(10)
            $0.height.equalTo(UIConstants.imageHeight)
            $0.width.equalTo(UIConstants.imageWidth)
            $0.centerY.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(movieImageView)
            $0.leading.equalTo(movieImageView.snp.trailing).offset(10)
            $0.trailing.lessThanOrEqualTo(containerView.snp.trailing).offset(-10)
        }
               
        
        scoreLabel.snp.makeConstraints {
            $0.bottom.equalTo(movieImageView)
            $0.leading.equalTo(movieImageView.snp.trailing).offset(10)
            
        }
        dateLabel.snp.makeConstraints {
            $0.bottom.equalTo(scoreLabel).offset(-50)
            $0.leading.equalTo(movieImageView.snp.trailing).offset(10)
            
        }
        

       
              

    }
}

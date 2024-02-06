//
//  DetailsMovieViewController.swift
//  TrendingMovies
//
//  Created by Maryna Bolotska on 02/02/24.
//

import UIKit

class DetailsMovieViewController: UIViewController {
 
    
    private let movieImageView: UIImageView = {
        let image = UIImageView()
        
        return image
    }()
    
    private var titleLabel: UILabel = {
       let label = UILabel()
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.3
        return label
    }()
    
    private var descriptionLabel: UILabel = {
       let label = UILabel()
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 2
        label.numberOfLines = 0 
           label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    //View model
    var viewModel: DetailsMovieViewModel
    
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
        initialize()
    }
    
  
    func configView() {
        self.title = "Movie Details"
        titleLabel.text = viewModel.movieTitle
        movieImageView.sd_setImage(with: viewModel.movieImage)
        descriptionLabel.text = viewModel.movieDescription
    }
    
}

private extension DetailsMovieViewController {
    func initialize() {
        view.backgroundColor = .white
        view.addSubview(movieImageView)
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        
        movieImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(200)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(movieImageView.snp.bottom).offset(20)
            $0.leading.equalTo(movieImageView)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(20)
            $0.leading.equalTo(movieImageView)
            $0.trailing.equalToSuperview().inset(20)
        }
    }
    
    
}

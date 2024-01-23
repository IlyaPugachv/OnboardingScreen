import UIKit
import Lottie

class SliderViewCell: UICollectionViewCell {
    
    var titleLabel = UILabel()
    var textLabel = UILabel()
    
    private let lottieView = LottieAnimationView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLabel()
    }
    
    private func setLabel() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(textLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.textColor = .white
        titleLabel.numberOfLines = 0
        
        textLabel.textColor = .white
        textLabel.numberOfLines = 0
        
        textLabel.font = UIFont.systemFont(ofSize: 20, weight: .black)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        
            textLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 20),
            textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ])
    }
    
    func animationSetup(animationName: String) {
        contentView.addSubview(lottieView)
        lottieView.translatesAutoresizingMaskIntoConstraints = false
        lottieView.animation = LottieAnimation.named(animationName)
        lottieView.loopMode = .loop
        lottieView.contentMode = .scaleAspectFit
        
        lottieView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        lottieView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        lottieView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        lottieView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        lottieView.play()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

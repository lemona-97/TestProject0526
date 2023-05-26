//
//  CatViewModel.swift
//  TabmanTest
//
//  Created by wooseob on 2023/05/26.
//

import Foundation
import Combine
import Alamofire

protocol NewsViewBussinussLogic {
    func requestCatImages()
    func presentCatImages(news : NewsModel)
    
}

class NewsViewModel: NewsViewBussinussLogic {
    var model : NewsModel?
    
    
    
    func requestCatImages() {
        Task {
            AF.request("https://newsapi.org/v2/top-headlines?country=us&apiKey=e9b514c39c5f456db8ed4ecb693b0040", encoding: JSONEncoding.default)
                .validate(statusCode: 200...299)
                .publishDecodable(type: NewsModel.self)
                .receive(on: DispatchQueue.main)
                .eraseToAnyPublisher
                
            
            
//                .flatMap { NewsModel(from: $0)}
//                .publisher
//                .subscribe(NewsDataSubscriber())
        }
    }
    
    func presentCatImages(news: NewsModel) {
        <#code#>
    }
    
    
}

class NewsDataSubscriber: Subscriber {
    
    
    typealias Input = NewsModel
    
    typealias Failure = Never
    
    func receive(subscription: Subscription) {
        print("구독 시작")
        subscription.request(.unlimited)
    }
    
    func receive(_ input: NewsModel) -> Subscribers.Demand {
        print(input)
        return .none
    }
    
    func receive(completion: Subscribers.Completion<Never>) {
        print("완료")
    }
}

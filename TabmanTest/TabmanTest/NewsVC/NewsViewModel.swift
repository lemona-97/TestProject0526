//
//  CatViewModel.swift
//  TabmanTest
//
//  Created by wooseob on 2023/05/26.
//

import Foundation
import Combine

protocol NewsViewBussinussLogic {
    func requestCatImages()
    func presentCatImages(news : NewsModel)
    
}

class NewsViewModel: NewsViewBussinussLogic {
    var model : NewsModel?
    
    
    
    func requestCatImages() {
            
    }
    
    func presentCatImages(news: NewsModel) {
        
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

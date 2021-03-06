//
//  RKXMultipleImageSelectionSurveyStep.swift
//  SDL-RKX
//
//  Created by James Kizer on 4/5/16.
//  Copyright © 2016 Cornell Tech Foundry. All rights reserved.
//

import UIKit
import ResearchKit

open class RKXMultipleImageSelectionSurveyStep: ORKQuestionStep {

    var options: RKXMultipleImageSelectionSurveyOptions?
    var visibilityFilter:((NSCoding & NSCopying & NSObjectProtocol) -> Bool)?
    
    override open func stepViewControllerClass() -> AnyClass {
        return RKXMultipleImageSelectionSurveyViewController.self
    }
    
    public init(identifier: String,
         title: String?,
         answerFormat: ORKImageChoiceAnswerFormat?,
         options: RKXMultipleImageSelectionSurveyOptions?) {
        
        super.init(identifier: identifier)
        self.title = title
        self.answerFormat = answerFormat
        self.options = options
    }
    
    public convenience init(identifier: String,
                title: String?,
                answerFormat: ORKImageChoiceAnswerFormat?,
                options: RKXMultipleImageSelectionSurveyOptions?,
                visibilityFilter: ((NSCoding & NSCopying & NSObjectProtocol) -> Bool)?) {
        
        
        self.init(identifier: identifier,
                  title: title,
                  answerFormat: answerFormat,
                  options: options)
        
        self.visibilityFilter = visibilityFilter
    }
    
    
    
    required public init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

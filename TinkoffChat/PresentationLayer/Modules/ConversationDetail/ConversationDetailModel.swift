//
//  ConversationDetailModel.swift
//  TinkoffChat
//
//  Created by BrottyS on 31.10.2017.
//  Copyright © 2017 TCS. All rights reserved.
//

protocol IConversationDetailModel: class {
    weak var delegate: ConversationDetailModelDelegate? { get set }
    func getOnlineUsers()
}

protocol ConversationDetailModelDelegate: class {
    func setupDataSource(_ dataSource: [ConversationDetailViewModel])
}

class ConversationDetailModel: IConversationDetailModel {
    
    weak var delegate: ConversationDetailModelDelegate?
    
    private let communicatorService: ICommunicationService
    
    init(communicationService: ICommunicationService) {
        self.communicatorService = communicationService
    }
    
    func getOnlineUsers() {
        
    }
    
    /*
    func getOnlineUsers() {
        let onlineUsers = communicatorService.getOnlineUsers()
        var cells: [ConversationListViewModel] = []
        for user in onlineUsers {
            let lastMessage = HistoryManager.default.lastMessageFor(userID: user.userID)
            let cell = ConversationDetailViewModel(name: user.userName,
                                                 message: lastMessage?.message.text,
                                                 date: lastMessage?.date,
                                                 online: true,
                                                 hasUnreadMessages: false)
            cells.append(cell)
        }
        delegate?.setupDataSource(cells)
    }*/
    
}

extension ConversationDetailModel: ICommunicationServiceDelegate {
    
    func didFoundUser(userID: String, userName: String?) {
        
    }
    
    func didLostUser(userID: String) {
        
    }
    
    func didReceiveMessage(text: String, fromUser: String, toUser: String) {
        
    }
    
    func didDataChange() {
        
    }
    
}

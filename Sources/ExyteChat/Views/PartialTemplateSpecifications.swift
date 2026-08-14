//
//  SwiftUIView.swift
//
//
//  Created by Alisa Mylnikova on 06.12.2023.
//

import SwiftUI

public extension ChatView where MessageContent == EmptyView {

    init(messages: [Message],
         chatType: ChatType = .conversation,
         replyMode: ReplyMode = .quote,
         didSendMessage: @escaping (DraftMessage) -> Void,
         didUpdateAttachmentStatus: ((AttachmentUploadUpdate) -> Void)? = nil,
         reactionDelegate: ReactionDelegate? = nil,
         inputViewBuilder: @escaping InputViewBuilderClosure,
         messageMenuAction: MessageMenuActionClosure?) {
        self.init(
            initializing: messages,
            chatType: chatType,
            replyMode: replyMode,
            reactionDelegate: reactionDelegate,
            messageBuilder: nil,
            inputViewBuilder: inputViewBuilder,
            messageMenuAction: messageMenuAction,
            didUpdateAttachmentStatus: didUpdateAttachmentStatus,
            didSendMessage: didSendMessage
        )
    }
}

public extension ChatView where InputViewContent == EmptyView {

    init(messages: [Message],
         chatType: ChatType = .conversation,
         replyMode: ReplyMode = .quote,
         didSendMessage: @escaping (DraftMessage) -> Void,
         didUpdateAttachmentStatus: ((AttachmentUploadUpdate) -> Void)? = nil,
         reactionDelegate: ReactionDelegate? = nil,
         messageBuilder: @escaping MessageBuilderClosure,
         messageMenuAction: MessageMenuActionClosure?) {
        self.init(
            initializing: messages,
            chatType: chatType,
            replyMode: replyMode,
            reactionDelegate: reactionDelegate,
            messageBuilder: messageBuilder,
            inputViewBuilder: nil,
            messageMenuAction: messageMenuAction,
            didUpdateAttachmentStatus: didUpdateAttachmentStatus,
            didSendMessage: didSendMessage
        )
    }
}

public extension ChatView where MenuAction == DefaultMessageMenuAction {

    init(messages: [Message],
         chatType: ChatType = .conversation,
         replyMode: ReplyMode = .quote,
         didSendMessage: @escaping (DraftMessage) -> Void,
         didUpdateAttachmentStatus: ((AttachmentUploadUpdate) -> Void)? = nil,
         reactionDelegate: ReactionDelegate? = nil,
         messageBuilder: @escaping MessageBuilderClosure,
         inputViewBuilder: @escaping InputViewBuilderClosure) {
        self.init(
            initializing: messages,
            chatType: chatType,
            replyMode: replyMode,
            reactionDelegate: reactionDelegate,
            messageBuilder: messageBuilder,
            inputViewBuilder: inputViewBuilder,
            messageMenuAction: nil,
            didUpdateAttachmentStatus: didUpdateAttachmentStatus,
            didSendMessage: didSendMessage
        )
    }
}

public extension ChatView where MessageContent == EmptyView, InputViewContent == EmptyView {

    init(messages: [Message],
         chatType: ChatType = .conversation,
         replyMode: ReplyMode = .quote,
         didSendMessage: @escaping (DraftMessage) -> Void,
         didUpdateAttachmentStatus: ((AttachmentUploadUpdate) -> Void)? = nil,
         reactionDelegate: ReactionDelegate? = nil,
         messageMenuAction: MessageMenuActionClosure?) {
        self.init(
            initializing: messages,
            chatType: chatType,
            replyMode: replyMode,
            reactionDelegate: reactionDelegate,
            messageBuilder: nil,
            inputViewBuilder: nil,
            messageMenuAction: messageMenuAction,
            didUpdateAttachmentStatus: didUpdateAttachmentStatus,
            didSendMessage: didSendMessage
        )
    }
}

public extension ChatView where InputViewContent == EmptyView, MenuAction == DefaultMessageMenuAction {

    init(messages: [Message],
         chatType: ChatType = .conversation,
         replyMode: ReplyMode = .quote,
         didSendMessage: @escaping (DraftMessage) -> Void,
         didUpdateAttachmentStatus: ((AttachmentUploadUpdate) -> Void)? = nil,
         reactionDelegate: ReactionDelegate? = nil,
         messageBuilder: @escaping MessageBuilderClosure) {
        self.init(
            initializing: messages,
            chatType: chatType,
            replyMode: replyMode,
            reactionDelegate: reactionDelegate,
            messageBuilder: messageBuilder,
            inputViewBuilder: nil,
            messageMenuAction: nil,
            didUpdateAttachmentStatus: didUpdateAttachmentStatus,
            didSendMessage: didSendMessage
        )
    }
}

public extension ChatView where MessageContent == EmptyView, MenuAction == DefaultMessageMenuAction {

    init(messages: [Message],
         chatType: ChatType = .conversation,
         replyMode: ReplyMode = .quote,
         didSendMessage: @escaping (DraftMessage) -> Void,
         didUpdateAttachmentStatus: ((AttachmentUploadUpdate) -> Void)? = nil,
         reactionDelegate: ReactionDelegate? = nil,
         inputViewBuilder: @escaping InputViewBuilderClosure) {
        self.init(
            initializing: messages,
            chatType: chatType,
            replyMode: replyMode,
            reactionDelegate: reactionDelegate,
            messageBuilder: nil,
            inputViewBuilder: inputViewBuilder,
            messageMenuAction: nil,
            didUpdateAttachmentStatus: didUpdateAttachmentStatus,
            didSendMessage: didSendMessage
        )
    }
}

public extension ChatView where MessageContent == EmptyView, InputViewContent == EmptyView, MenuAction == DefaultMessageMenuAction {

    init(messages: [Message],
         chatType: ChatType = .conversation,
         replyMode: ReplyMode = .quote,
         didSendMessage: @escaping (DraftMessage) -> Void,
         didUpdateAttachmentStatus: ((AttachmentUploadUpdate) -> Void)? = nil,
         reactionDelegate: ReactionDelegate? = nil) {
        self.init(
            initializing: messages,
            chatType: chatType,
            replyMode: replyMode,
            reactionDelegate: reactionDelegate,
            messageBuilder: nil,
            inputViewBuilder: nil,
            messageMenuAction: nil,
            didUpdateAttachmentStatus: didUpdateAttachmentStatus,
            didSendMessage: didSendMessage
        )
    }
}

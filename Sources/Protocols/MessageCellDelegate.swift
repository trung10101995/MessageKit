/*
 MIT License
 
 Copyright (c) 2017-2019 MessageKit
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import Foundation

/// A protocol used by `MessageContentCell` subclasses to detect taps in the cell's subviews.
public protocol MessageCellDelegate: MessageLabelDelegate {

    /// Triggered when a tap occurs in the background of the cell.
    ///
    /// - Parameters:
    ///   - cell: The cell where the tap occurred.
    ///
    /// - Note:
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapBackground(in cell: MessageCollectionViewCell)

    /// Triggered when a tap occurs in the `MessageContainerView`.
    ///
    /// - Parameters:
    ///   - cell: The cell where the tap occurred.
    ///
    /// - Note:
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapMessage(in cell: MessageCollectionViewCell)

    /// Triggered when a tap occurs in the `AvatarView`.
    ///
    /// - Parameters:
    ///   - cell: The cell where the tap occurred.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapAvatar(in cell: MessageCollectionViewCell)

    /// Triggered when a tap occurs in the cellTopLabel.
    ///
    /// - Parameters:
    ///   - cell: The cell tap the touch occurred.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapCellTopLabel(in cell: MessageCollectionViewCell)
    
    /// Triggered when a tap occurs in the cellBottomLabel.
    ///
    /// - Parameters:
    ///   - cell: The cell tap the touch occurred.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapCellBottomLabel(in cell: MessageCollectionViewCell)
    
    /// Triggered when a tap occurs in the messageTopLabel.
    ///
    /// - Parameters:
    ///   - cell: The cell tap the touch occurred.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapMessageTopLabel(in cell: MessageCollectionViewCell)

    /// Triggered when a tap occurs in the messageBottomLabel.
    ///
    /// - Parameters:
    ///   - cell: The cell where the tap occurred.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapMessageBottomLabel(in cell: MessageCollectionViewCell)
    
    /// Triggered when a tap occurs in the accessoryView.
    ///
    /// - Parameters:
    ///   - cell: The cell where the tap occurred.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapAccessoryView(in cell: MessageCollectionViewCell)

    /// Triggered when a tap occurs on the image.
    ///
    /// - Parameters:
    ///   - cell: The image where the touch occurred.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapImage(in cell: MessageCollectionViewCell)
 
    /// Triggered when a tap occurs on the play button from audio cell.
    ///
    /// - Parameters:
    ///   - cell: The audio cell where the touch occurred.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didTapPlayButton(in cell: AudioMessageCell)

    /// Triggered when audio player start playing audio.
    ///
    /// - Parameters:
    ///   - cell: The cell where the audio sound is playing.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didStartAudio(in cell: AudioMessageCell)

    /// Triggered when audio player pause audio.
    ///
    /// - Parameters:
    ///   - cell: The cell where the audio sound is paused.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didPauseAudio(in cell: AudioMessageCell)

    /// Triggered when audio player stoped audio.
    ///
    /// - Parameters:
    ///   - cell: The cell where the audio sound is stoped.
    ///
    /// You can get a reference to the `MessageType` for the cell by using `UICollectionView`'s
    /// `indexPath(for: cell)` method. Then using the returned `IndexPath` with the `MessagesDataSource`
    /// method `messageForItem(at:indexPath:messagesCollectionView)`.
    func didStopAudio(in cell: AudioMessageCell)
    
    
    
    
    // MARK: from MessageLabelDelegate
    
    
    
    
    /// Triggered when a tap occurs on a detected address.
    ///
    /// - Parameters:
    ///   - addressComponents: The components of the selected address.
    func didSelectAddress(in cell: MessageContentCell, addressComponents: [String: String])
    
    /// Triggered when a tap occurs on a detected date.
    ///
    /// - Parameters:
    ///   - date: The selected date.
    func didSelectDate(in cell: MessageContentCell, date: Date)
    
    /// Triggered when a tap occurs on a detected phone number.
    ///
    /// - Parameters:
    ///   - phoneNumber: The selected phone number.
    func didSelectPhoneNumber(in cell: MessageContentCell, phoneNumber: String)
    
    /// Triggered when a tap occurs on a detected URL.
    ///
    /// - Parameters:
    ///   - url: The selected URL.
    func didSelectURL(in cell: MessageContentCell, url: URL)
    
    /// Triggered when a tap occurs on detected transit information.
    ///
    /// - Parameters:
    ///   - transitInformation: The selected transit information.
    func didSelectTransitInformation(in cell: MessageContentCell, transitInformation: [String: String])
    
    /// Triggered when a tap occurs on a mention
    ///
    /// - Parameters:
    ///   - mention: The selected mention
    func didSelectMention(in cell: MessageContentCell, mention: String)
    
    /// Triggered when a tap occurs on a hashtag
    ///
    /// - Parameters:
    ///   - mention: The selected hashtag
    func didSelectHashtag(in cell: MessageContentCell, hashtag: String)
    
    /// Triggered when a tap occurs on a custom regular expression
    ///
    /// - Parameters:
    ///   - pattern: the pattern of the regular expression
    ///   - match: part that match with the regular expression
    func didSelectCustom(in cell: MessageContentCell, pattern: String, match: String?)

}

public extension MessageCellDelegate {

    func didTapBackground(in cell: MessageCollectionViewCell) {}

    func didTapMessage(in cell: MessageCollectionViewCell) {}

    func didTapAvatar(in cell: MessageCollectionViewCell) {}

    func didTapCellTopLabel(in cell: MessageCollectionViewCell) {}
    
    func didTapCellBottomLabel(in cell: MessageCollectionViewCell) {}

    func didTapMessageTopLabel(in cell: MessageCollectionViewCell) {}
 
    func didTapImage(in _: MessageCollectionViewCell) { }

    func didTapPlayButton(in cell: AudioMessageCell) {}

    func didStartAudio(in cell: AudioMessageCell) {}

    func didPauseAudio(in cell: AudioMessageCell) {}

    func didStopAudio(in cell: AudioMessageCell) {}

    func didTapMessageBottomLabel(in cell: MessageCollectionViewCell) {}
    
    func didTapAccessoryView(in cell: MessageCollectionViewCell) {}
    
    func didSelectAddress(in cell: MessageContentCell, addressComponents: [String: String]) {}
    
    func didSelectDate(in cell: MessageContentCell, date: Date) {}
    
    func didSelectPhoneNumber(in cell: MessageContentCell, phoneNumber: String) {}
    
    func didSelectURL(in cell: MessageContentCell, url: URL) {}
    
    func didSelectTransitInformation(in cell: MessageContentCell, transitInformation: [String: String]) {}
    
    func didSelectMention(in cell: MessageContentCell, mention: String) {}
    
    func didSelectHashtag(in cell: MessageContentCell, hashtag: String) {}
    
    func didSelectCustom(in cell: MessageContentCell, pattern: String, match: String?) {}
}

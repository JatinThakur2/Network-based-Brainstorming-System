package com.main.spring.model;

/*******
 * <p> Title: ChatMessage Class. </p>
 *
 * <p> Description: A Network based brainstorming session project. </p>
 *
 * <p> Copyright: Jatin Thakur Â© 2020 </p>
 *
 * @author Jatin Thakur
 *
 * @version 4.00	2020-11-06 Entity class for the Chat Message.
 *
 */

public class ChatMessage {
    private MessageType type;
    private String content;
    private String sender;

    public enum MessageType {
        CHAT,
        JOIN,
        LEAVE
    }

    public MessageType getType() {
        return type;
    }

    public void setType(MessageType type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }
}

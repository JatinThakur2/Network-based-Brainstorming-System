package com.main.spring;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.*;

/*******
 * <p> Title: WebSocketConfig Class. </p>
 *
 * <p> Description: A Network based brainstorming session project. </p>
 *
 * <p> Copyright: Jatin Thakur Â© 2020 </p>
 *
 * @author Jatin Thakur
 *
 * @version 4.00	2020-11-06 Creates a web socket when it recieves a new connection.
 *
 */

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {

    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        registry.addEndpoint("/ws").withSockJS();
    }

    @Override
    public void configureMessageBroker(MessageBrokerRegistry registry) {
        registry.setApplicationDestinationPrefixes("/app");
        registry.enableSimpleBroker("/topic");   // Enables a simple in-memory broker
    }
}

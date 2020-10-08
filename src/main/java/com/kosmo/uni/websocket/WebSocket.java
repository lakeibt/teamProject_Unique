package com.kosmo.uni.websocket;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class WebSocket extends TextWebSocketHandler {
	List<WebSocketSession> sessions = new ArrayList<>();
	Map<String, WebSocketSession> userSessions = new HashMap<>();
	
	// 웹소켓에 접속 했을 때
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("afterConnectionEstablished: " + session);
		sessions.add(session);
		String senderId = (String)session.getAttributes().get("memId");
		userSessions.put(senderId, session);
		
		System.out.println("Websocket open : "+ senderId);
	}
	// 웹소켓에 메세지를 보냈을 때
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("handleTextMessage: " + session + ": " + message);
		String senderId = (String)session.getAttributes().get("memId");
//		for(WebSocketSession sess: sessions) { // 현재 페이지에 로그인 되어있는 모든 사용자들에게 쪽지 전송(나중에 학생 전체 전송에 사용될 예정)
//			//sess.sendMessage(new TextMessage(senderId + ":" + message.getPayload()));
//			sess.sendMessage(new TextMessage(senderId + ": " + message.getPayload()));
//		}
		
		// protocol : 제목!@#받는사람
		String msg = message.getPayload();
		if(!StringUtils.isEmpty(msg)) {
			String[] strs = msg.split("!@#");
			if(strs != null && strs.length == 2) {
				String title = strs[0];
				String receiver = strs[1];
				
				WebSocketSession receiverSession = userSessions.get(receiver);
				if(receiverSession != null) {
					TextMessage tmpMsg = new TextMessage(receiver + "님 쪽지가 도착했습니다"); // 누구로부터는 일단 추후에
					System.out.println("SendingMessage : "+receiver + "님 쪽지가 도착했습니다");
					receiverSession.sendMessage(tmpMsg);
				}
			}
		}
	}
	// 웹소켓 접속이 끊길 때
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("afterConnectionClosed: " + session + ": " + status);
	}
}

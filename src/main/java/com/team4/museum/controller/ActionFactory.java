package com.team4.museum.controller;

import com.team4.museum.controller.action.Action;
import com.team4.museum.controller.action.IndexAction;
import com.team4.museum.controller.action.artwork.ArtworkListAction;
import com.team4.museum.controller.action.artwork.ArtworkViewAction;
import com.team4.museum.controller.action.artwork.ArtworkWriteAction;
import com.team4.museum.controller.action.artwork.ArtworkWriteFormAction;
import com.team4.museum.controller.action.member.IdcheckFormAction;
import com.team4.museum.controller.action.member.JoinAction;
import com.team4.museum.controller.action.member.JoinFormAction;
import com.team4.museum.controller.action.member.LoginAction;
import com.team4.museum.controller.action.member.LoginFormAction;
import com.team4.museum.controller.action.member.LogoutAction;
import com.team4.museum.controller.action.qna.QnaListAction;
import com.team4.museum.controller.action.qna.QnaPwdCheckFormAction;
import com.team4.museum.controller.action.qna.QnaReplyAction;
import com.team4.museum.controller.action.qna.QnaViewAction;

public class ActionFactory {

	private ActionFactory() {
	}

	private static final ActionFactory instance = new ActionFactory();

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		return switch (command != null ? command : "") {

		// index action
		case "", "index" -> new IndexAction();

		// member actions
		case "loginForm" -> new LoginFormAction();
		case "login" -> new LoginAction();
		case "logout" -> new LogoutAction();
		case "join" -> new JoinAction();
		case "joinForm" -> new JoinFormAction();
		case "idcheckForm" -> new IdcheckFormAction();

		// artwork actions
		case "artwork" -> new ArtworkListAction();
		case "artworkView" -> new ArtworkViewAction();
		case "artworkWrite" -> new ArtworkWriteAction();
		case "artworkWriteForm" -> new ArtworkWriteFormAction();

		// QnA actions
		case "qnaList" -> new QnaListAction();
		case "qnaPwdCheck" -> new QnaPwdCheckFormAction();
		case "qnaView" -> new QnaViewAction();
		case "qnaReply" -> new QnaReplyAction();

		// default
		default -> null;

		};
	}

}

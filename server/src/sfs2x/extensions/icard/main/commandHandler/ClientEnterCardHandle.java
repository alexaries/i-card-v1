package sfs2x.extensions.icard.main.commandHandler;

import sfs2x.extensions.icard.beans.CardGameBean;
import sfs2x.extensions.icard.beans.GameLobbyBean;
import sfs2x.extensions.icard.bsn.ClientQueryBsn;
import sfs2x.extensions.icard.utils.ErrorDef;


import com.smartfoxserver.v2.entities.User;
import com.smartfoxserver.v2.entities.data.ISFSObject;

public class ClientEnterCardHandle extends ICardClientRequestHandler {

	@Override
	public void handleClientRequest(User paramUser, ISFSObject paramISFSObject) {
		trace("start handle Client Request");
		ErrorDef.Empty();
		int realID = paramISFSObject.getInt("realID");
		int gameId = paramISFSObject.getInt("game");
		CardGameBean game = GameLobbyBean.GetInstance().getGameMap().get(gameId);
		if(game==null)
			return;
		if(ClientQueryBsn.procGeneralVerify(game, paramUser.getId(), realID)==false)
			return;
		ClientQueryBsn.procEnterCardRequest(game, paramUser.getId(), realID);
		SendOnErr(paramUser);
	}

}

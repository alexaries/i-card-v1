package sfs2x.extensions.icard.bsn;

import java.util.Enumeration;
import java.util.LinkedList;
import java.util.Random;
import java.util.Vector;

import sfs2x.extensions.icard.beans.BattleStateBean;
import sfs2x.extensions.icard.beans.CardActionBean;

import sfs2x.extensions.icard.beans.CardBean;
import sfs2x.extensions.icard.beans.CardGameBean;
import sfs2x.extensions.icard.beans.CardSiteBean;
import sfs2x.extensions.icard.main.ICardExtension;
import sfs2x.extensions.icard.utils.Commands;
import sfs2x.extensions.icard.utils.Constants;

import com.smartfoxserver.v2.entities.Room;
import com.smartfoxserver.v2.entities.User;
import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import com.smartfoxserver.v2.entities.data.SFSArray;
import com.smartfoxserver.v2.entities.data.SFSObject;
import com.smartfoxserver.v2.extensions.SFSExtension;

/**
 * GameBsn: class containing utility business classes for game processing
 * 
 * @author Ing. Ignazio Locatelli
 * @version 1.0
 */
public class CardActionBsn
{	
	
	public static Boolean Action2ChainAble(CardGameBean game,CardActionBean action){
		
	}
	private static int getChainActionCost(CardActionChainBean chainBean,int playerID){
		
	}
	
	private static int getActionCost(CardActionBean action){
		CardInfoBean cardInfo = CardInfoStoreBean.GetInstance().getCardInfo(action.getSrc());
		if(cardInfo==null)
			return 911; //����ֵ
		int cost = 0;
		switch(action.getType()){
		case CardActionBean.DO_CARD_2_ATK:
			cost = getAtkCost(cardInfo);
			break;
		case CardActionBean.DO_CARD_2_EQUIPSLOT:
		case CardActionBean.DO_CARD_2_FIGHTSLOT:
			cost = cardInfo.getBaseCost();			
			break;
		case CardActionBean.DO_CARD_2_TURN:
		case CardActionBean.DO_CARD_2_USE:
			cost = getUseCost(cardInfo);
			break;	
		}
		return cost;
	}
	
	public static void procCardAction(CardGameBean game, CardActionBean action,ICardExtension ext){
		if(action==null)
			return;
		CardSiteBean site = game.getSites().get(action.getPlayerID());
		if(site==null)
			return;
		CardBean card = site.getCardMap().get(action.getSrc());
		if(card==null)
			return;
		switch(action.getType()){
		case CardActionBean.DO_CARD_2_ATK:
			break;
		case CardActionBean.DO_CARD_2_DEF:
			break;
		case CardActionBean.DO_CARD_2_EQUIPSLOT:
			procCard2EquipSlot(site,card);
			break;
		case CardActionBean.DO_CARD_2_FIGHTSLOT:
			procCard2FightSlot(site,card);
			break;
		case CardActionBean.DO_CARD_2_RES:
			procCard2Res(site,card);
			break;
		case CardActionBean.DO_CARD_2_TURN:
			procCard2Turn(site,card);
			break;	
		case CardActionBean.DO_CARD_2_USE:
			procCard2Use(game,site,card,action);
			break;		
		}
	}
	private static void procCard2Use(CardGameBean game,CardSiteBean site,CardBean card,CardActionBean action){
		if(CardSiteBsn.getResNum(site)< card.getUseCost())
			return;
		CardSiteBsn.useRes(site,card.getCost());
		game.getBattleChain().PushAction(action);	
	}
	private static void procCard2Turn(CardSiteBean site,CardBean card){
		if(CardSiteBsn.getResNum(site)< card.getUseCost())
			return;
		CardSiteBsn.useRes(site,card.getCost());
		card.setTurn(1);
	}
	private static void procCard2FightSlot(CardSiteBean site,CardBean card){
		if(CardSiteBsn.getResNum(site)< card.getCost())
			return;
		CardSiteBsn.useRes(site,card.getCost());
		card.setSlotID(CardBean.FIGHT_SLOT_ID);	
	}
	private static void procCard2EquipSlot(CardSiteBean site,CardBean card){
		if(CardSiteBsn.getResNum(site)< card.getCost())
			return;
		CardSiteBsn.useRes(site,card.getCost());
		card.setSlotID(CardBean.EQUIP_SLOT_ID);	
	}
	private static void procCard2Res(CardSiteBean site,CardBean card){
		site.setAddResAble(false);
		if(card.getCardType() !=CardBean.TASK)
			card.setCardID(Constants.BACK_CARD_ID);
		card.setSlotID(CardBean.RES_SLOT_ID);
		card.setSide(0);
	}
	private static int getUseCost(CardInfoBean card){
		CardUseBean useBean= CardUseStoreBean.GetInstance().getCardUse(card.getCardID())
		if(useBean!=null){
			return useBean.getCost();
		}
		else{
			return card.getBaseCost();
		}
	}
	private static int getAtkCost(CardInfoBean card){
		int cost =0;
		switch(card.getType()){
			case CardInfoBean.WEAPON:
				cost = card.getBaseUseCost();
				break;
				
		}
		return cost;
	}	
}
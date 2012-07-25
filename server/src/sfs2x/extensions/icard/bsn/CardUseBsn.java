package sfs2x.extensions.icard.bsn;

import java.util.HashMap;
import java.util.Vector;

import sfs2x.extensions.icard.beans.BufferBean;
import sfs2x.extensions.icard.beans.CardAbilityBean;
import sfs2x.extensions.icard.beans.CardAbilityStoreBean;
import sfs2x.extensions.icard.beans.CardActionBean;
import sfs2x.extensions.icard.beans.CardBean;
import sfs2x.extensions.icard.beans.CardGameBean;
import sfs2x.extensions.icard.beans.CardInfoBean;
import sfs2x.extensions.icard.beans.CardDeckBean;
import sfs2x.extensions.icard.main.ICardExtension;



/**
 * GameBsn: class containing utility business classes for game processing
 * 
 * @author Ing. Ignazio Locatelli
 * @version 1.0
 */
public class CardUseBsn
{	
	
	public static void Atk(CardBean card1,CardBean card2){
		if(card1.IsDistAtk(CardAbilityBean.WHEN_ATK)==false) //是否有远程攻击能力
			card1.AddHp(-card2.getAtk(CardAbilityBean.WHEN_ATK));
		card2.AddHp(-card1.getAtk(CardAbilityBean.WHEN_ATKED));
		card1.setSide(1);
		if(BufferBsn.IsCardAbility(card2,CardAbilityBean.WHEN_ATKED,CardAbilityBean.DO_KILL)==true)
			card1.setDead();
		if(card1.getHp()<=0)
		{
			card1.setZoneID(CardBean.TOMB_ZONE_ID);
			if(BufferBsn.IsCardAbility(card1,CardAbilityBean.WHEN_DEAD,CardAbilityBean.DO_KILL)==true)
				card2.setDead();
		}
		if(card2.getHp()<=0)
		{
			card2.setZoneID(CardBean.TOMB_ZONE_ID);
			if(BufferBsn.IsCardAbility(card2,CardAbilityBean.WHEN_DEAD,CardAbilityBean.DO_KILL)==true ||
			   BufferBsn.IsCardAbility(card2,CardAbilityBean.WHEN_DEF_DEAD,CardAbilityBean.DO_KILL)==true)
			   card1.setDead();
		}
	}
	public static boolean IsWhichMatch(CardGameBean game,CardBean cardSrc,CardBean cardDes,
										CardAbilityBean ability){
		int srcOwner = game.getCardOwner(cardSrc.getRealID());
		int desOwner = game.getCardOwner(cardDes.getRealID()); 
		boolean bMatch = true;
		switch(ability.getWhich()){
		case CardAbilityBean.WHICH_MY:
			bMatch = (srcOwner==desOwner)&& ((cardDes.getCardType()==CardInfoBean.HERO)||(cardDes.getCardType()==CardInfoBean.ALLY));
			break;
		case CardAbilityBean.WHICH_MYHERO:
			bMatch = ((srcOwner==desOwner)&& (cardDes.getCardType()==CardInfoBean.HERO));
			break;
		case CardAbilityBean.WHICH_MYSOLDIER:
			bMatch = ((srcOwner==desOwner)&& (cardDes.getCardType()==CardInfoBean.ALLY));
			break;
		case CardAbilityBean.WHICH_YOUR:
			bMatch = (srcOwner!=desOwner)&& ((cardDes.getCardType()==CardInfoBean.HERO)||(cardDes.getCardType()==CardInfoBean.ALLY));
			break;
		case CardAbilityBean.WHICH_YOURHERO:
			bMatch = ((srcOwner!=desOwner)&& (cardDes.getCardType()==CardInfoBean.HERO));
			break;
		case CardAbilityBean.WHICH_YOURSOLDIER:
			bMatch = ((srcOwner!=desOwner)&& (cardDes.getCardType()==CardInfoBean.ALLY));
			break;
		case CardAbilityBean.WHICH_YOURWEAPON:
			bMatch = ((srcOwner!=desOwner)&& (cardDes.getCardType()==CardInfoBean.WEAPON));
			break;
		case CardAbilityBean.WHICH_MYWEAPON:
			bMatch = ((srcOwner==desOwner)&& (cardDes.getCardType()==CardInfoBean.WEAPON));
			break;	
		case CardAbilityBean.WHICH_SKILL:
			bMatch = (cardDes.getCardType()==CardInfoBean.SKILL);
			break;	
		}
		return bMatch;
	}
	public static void DoKillCostDown(CardBean cardSrc,CardBean cardDes,
										CardAbilityBean ability)
	{
		if(cardDes.getCost() <= ability.getVal()){
			cardDes.setDead();
		}
	}
	public static void DoKillCostUp(CardBean cardSrc,CardBean cardDes,
			CardAbilityBean ability)
	{
		if(cardDes.getCost() >= ability.getVal()){
			cardDes.setDead();
		}
	}
	
	public static void DoDrawHandCard(CardGameBean game,CardBean cardSrc,CardBean cardDes,
																	CardAbilityBean ability)
	{
		int owner = game.getCardOwner(cardSrc.getRealID());
		BattleBsn.drawCard(game,ICardExtension.getExt(),owner,ability.getVal());
	}
	
	public static void DoWhatAbility(CardGameBean game,CardBean cardSrc,CardBean cardDes,
										CardAbilityBean ability)
	{
		switch(ability.getType()){
		case CardAbilityBean.DO_ATK_SIDE_ADD:
			break;
		case CardAbilityBean.DO_BREAK_SKILL:
			break;
		case CardAbilityBean.DO_DAMAGE:
			cardDes.AddHp(-ability.getVal());
			break;
		case CardAbilityBean.DO_DROP_HAND_CARD:
			break;
		case CardAbilityBean.DO_DROP_RES:
			break;
		case CardAbilityBean.DO_HEAL:
			cardDes.AddHp(ability.getVal());
			break;
		case CardAbilityBean.DO_KILL:
			cardDes.setDead();
			break;
		case CardAbilityBean.DO_KILL_COST_DOWN:
			DoKillCostDown(cardSrc,cardDes,ability);
			break;
		case CardAbilityBean.DO_KILL_COST_UP:
			DoKillCostUp(cardSrc,cardDes,ability);
			break;
		case CardAbilityBean.DO_RESET:
			cardDes.setSide(0);
			break;
		case CardAbilityBean.DO_SIDE:
			cardDes.setSide(1);
			break;
		case CardAbilityBean.DO_DRAW_HAND_CARD:
			DoDrawHandCard(game,cardSrc,cardDes,ability);
			break;
		default:
			BufferBsn.AddBuf(cardSrc, cardDes, ability);
		}
	}
	public static void DoCardAbility(CardGameBean game,CardBean cardSrc,CardBean cardDes){
		Vector<CardAbilityBean> vec = CardAbilityStoreBean.GetInstance().getCardAbility(cardSrc.getCardID());
		
		boolean bHaveBuf = false;
		for(int i=0;i<vec.size();i++){
			CardAbilityBean ability = vec.get(i);
			if(IsWhichMatch(game,cardSrc,cardDes,ability)==false)
				continue;
			DoWhatAbility(game,cardSrc,cardDes,ability);
			if(ability.IsBuf())
				bHaveBuf = true;
		}
		if(bHaveBuf)
			cardSrc.setZoneID(CardBean.BUF_ZONE_ID);
		else
			onCardDead(game,cardSrc);
		if(cardDes.getIsDead())
			onCardDead(game,cardDes);
	}
	public static void onCardDead(CardGameBean game,CardBean card){
		card.setZoneID(CardBean.TOMB_ZONE_ID);
		HashMap<Integer, BufferBean> bufMap = card.getBufStore().getBufMap();
		for(BufferBean buf:bufMap.values()){
			CardBean cardBuf = game.getCard(buf.getID());
			if(cardBuf!=null)
				onCardDead(game,cardBuf);
		}
	}
	
	public static boolean SkillCast(CardGameBean game,CardDeckBean site,
										CardBean card,CardActionBean action){
		CardAbilityBean ability = CardAbilityStoreBean.GetInstance().getAbilityBean(card.getCardID());
		if(ability==null)
			return false;
		if(CardSiteBsn.getResNum(site)< ability.getCost())
			return false;
		CardSiteBsn.useRes(site,ability.getCost());
		int targetNum = (ability.getTargetNum()>action.getDes().size())?action.getDes().size():ability.getTargetNum();
		for(int i=0;i<targetNum;i++){
			CardBean targetCard = game.getCard(action.getDes().get(i));
			if(targetCard==null)
				continue;
			DoCardAbility(game,card,targetCard);
		}
		return true;
	}
	public static boolean IsSideEnable(CardBean card,int val){
		if(val!=0)
			return true;
		return (BufferBsn.IsExistBuf(card, CardAbilityBean.BUF_SIDE,CardAbilityBean.WHEN_ALL)==false);
	}
}
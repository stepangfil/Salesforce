/**
 * company: Provectus
 * course: Salesforce
 * Lecture #2
 * @author: Stepan Filyk
 * Date create: 11/06/2016
**/

public with sharing class Game {
	
    public Game() {
    }
	
    /**
     * Method implements fighting logic app.
    **/
    public void fighting(Unit fighterOne, Unit fighterTwo) {
       
    	while(fighterOne.getUnitHP() > 0 && fighterTwo.getUnitHP() > 0) {
            calculationBalanceHP(fighterOne, fighterTwo);
       	    calculationBalanceHP(fighterTwo, fighterOne);
            showBattleResult(fighterOne, fighterTwo);
        }
    }
    
    /**
     * Method implements calculating and refresh balance units HP
    **/
    private void calculationBalanceHP(Unit fighterOne, Unit fighterTwo) {
        Integer balanceHP = fighterOne.getUnitHP() - fighterTwo.hitWithForce();
        
        if(balanceHP > 0) {
           fighterOne.setUnitHP(balanceHP);
        } else {
           fighterOne.setUnitHP(0);
        }
    }
	
	/**
	 * Method implements printing balance HP and print result of the battle
	 * 
	**/
    public void showBattleResult(Unit fighterOne, Unit fighterTwo) {
        
        if(fighterOne.getUnitHP() > 0 && fighterTwo.getUnitHP() > 0) {
            System.debug(fighterOne.getUnitName() + ' > ' + fighterOne.getUnitHP() + '  -  ' + fighterTwo.getUnitHP() + ' < ' + fighterTwo.getUnitName());
        } else if (fighterOne.getUnitHP() > 0){
            System.debug(fighterOne.getUnitName() + ' [WIN]' + '  -  ' + '[DIE] ' + fighterTwo.getUnitName());
        } else {
            System.debug(fighterTwo.getUnitName() + ' [DIE]' + '  -  ' + '[WIN] ' + fighterTwo.getUnitName());
        }
    }
    
    
}

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
    public String fighting(Unit fighterOne, Unit fighterTwo) {
		String buttleResult;       
    	
        while(fighterOne.getUnitHP() > 0 && fighterTwo.getUnitHP() > 0) {
        	calculationBalanceHP(fighterOne, fighterTwo);
       		calculationBalanceHP(fighterTwo, fighterOne);
        }
        return buttleResult = showBattleResult( fighterOne, fighterTwo);
      	
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
	 * Method implements forms string with result of the battle
	 * 
	**/
    public String showBattleResult(Unit fighterOne, Unit fighterTwo) {
        String resultButtle;
        
        if(fighterOne.getUnitHP() > fighterTwo.getUnitHP() && fighterOne.getUnitHP() > 0) {
        	resultButtle = (fighterOne.getUnitName() + ' [WIN]' + '  -  ' + '[DIE] ' + fighterTwo.getUnitName());  
        } else if (fighterTwo.getUnitHP() > fighterOne.getUnitHP() && fighterTwo.getUnitHP() > 0){
        	resultButtle = (fighterTwo.getUnitName() + ' [DIE]' + '  -  ' + '[WIN] ' + fighterTwo.getUnitName());
        }
        return resultButtle;
    }
    
    
}

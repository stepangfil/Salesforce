/**
 * company: Provectus
 * course: Salesforce
 * Lecture #2
 * @author: Stepan Filyk
 * Date create: 11/06/2016
 * Controller for VisualForce page
**/

public class GameLaunch {
    public String nameFirstFighter{get; set;}
    public Integer hitpointFirstFighter{get; set;}
    public Integer minDamageFirstFighter{get; set;}
    public Integer maxDamageFirstFighter{get; set;}
		
    public String nameSecondFighter{get; set;}
    public Integer hitpointSecondFighter{get; set;}
    public Integer minDamageSecondFighter{get; set;}
    public Integer maxDamageSecondFighter{get; set;}
    public String resultFight{get; set;}    
    /**
     * Method implements initializes instanse class and application launches 
    **/
   public void startGame() {
       	Unit fighterOne = new Unit(nameFirstFighter, hitpointFirstFighter, minDamageFirstFighter, maxDamageFirstFighter);
    	Unit fighterTwo = new Unit(nameSecondFighter, hitpointSecondFighter, minDamageSecondFighter, maxDamageSecondFighter);
        Game game = new Game();
        
        resultFight = game.fighting(fighterOne, fighterTwo);
        
	}
    
}

/**
 * company: Provectus
 * course: Salesforce
 * Lecture #2
 * @author: Stepan Filyk
 * Date create: 11/06/2016
**/

public class GameLaunch {
    
    /**
     * Method implements initializes instanse class and application launches 
    **/
   public void startGame() {
        Unit fighterOne = new Unit('Stalone', 800, 5, 60);
    	Unit fighterTwo = new Unit('BrusLi', 700, 10, 70);
        Game game = new Game();
        
        game.fighting(fighterOne, fighterTwo);
        
    }
    

}
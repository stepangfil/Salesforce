/**
 * company: Provectus
 * course: Salesforce
 * Lecture #2
 * @author: Stepan Filyk
 * Date create: 11/06/2016
**/

public with sharing class Unit {
	String unitName;
	Integer unitHP;
	Integer unitDamageMin;
	Integer unitDamageMax;
    
    
    public Unit(String TheUnitName, Integer TheUnitHP, Integer TheUnitDamageMin, Integer TheUnitDamageMax) {
        this.unitName = TheUnitName;
        this.unitHP = TheUnitHP;
        this.unitDamageMin = TheUnitDamageMin;
        this.unitDamageMax = TheUnitDamageMax;
	}
    
    /**
    * Method implements the generation of random values level damage power
    **/ 
    public Integer hitWithForce() {
        Integer damageMin = unitDamageMin;
        Integer damageMax = unitDamageMax;
		
        Integer damage = (Integer)(Math.floor(Math.random() * (damageMax - damageMin + 1) + damageMin));
	return damage;	
	}
    
    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }
    
    public String getUnitName() {
        return unitName;
    }
    
    public void setUnitHP(Integer unitHP) {
        this.unitHP = unitHP;
    }
    
    public Integer getUnitHP() {
        return unitHP;
    }
    
    public void setUnitDamageMin(Integer unitDamageMin) {
        this.unitDamageMin = unitDamageMin;
    }
    
    public Integer getUnitDamageMin() {
        return unitDamageMin;
    }
    
    public void setUnitDamageMax(Integer unitDamageMax) {
        this.unitDamageMax = unitDamageMax;
    }
    
    public Integer getUnitDamageMax() {
        return unitDamageMax;
    }
    
}

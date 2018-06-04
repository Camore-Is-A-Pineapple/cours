package jeu;

public class Romuald extends Hero implements ICombat{
	
	//initialisation des statistiques de la classe Romuald
	private final static int ARMOR = 0;
	private final static int POWER = 10000;
	private final static int LIFE = 9999999;
	private final static int SHIELD = 100;
	private final static String CLASSNAME = "Romuald";
	
	public Romuald() {
		super(Romuald.LIFE, Romuald.POWER, Romuald.ARMOR, Romuald.CLASSNAME);
	}
	
	//création d'une instance épée
	Epee stuff = new Epee();
	
	//calcul des dommages lors d'une attaque
	public int getDamage () {
		 return (this.puissance + stuff.getDegats());
	}
	
	//méthode de applyDamage
	public int applyDamage(int appliedDmg) {
		appliedDmg = appliedDmg - SHIELD;
		if (appliedDmg < 0) {
			appliedDmg = 0;
		}
		this.vie = this.vie - appliedDmg;
		return this.vie;
	}
	
	//création de la commande taper
	public void taper () {
		System.out.println("Je suis un " + this.CLASSNAME + " et je fais " + this.getDamage() + " de dommage par coup.");
	}

	public int getVie() {
		return vie;
	}

	public void setVie(int vie) {
		this.vie = vie;
	}

	public int getPuissance() {
		return puissance;
	}

	public void setPuissance(int puissance) {
		this.puissance = puissance;
	}

	public int getArmure() {
		return armure;
	}

	public void setArmure(int armure) {
		this.armure = armure;
	}
			
}

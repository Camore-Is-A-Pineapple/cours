package jeu;

public class Assassin extends Hero implements ICombat{
	
	//initialisation des statistiques finales de la classe mage
        //Attributs: Constantes de l'Assassin
	private final static int ARMOR = 1000;
	private final static int POWER = 100;
	private final static int LIFE = 1500; 
	private final static String CLASSNAME = "assassin";
	
        //Méthode Constructeur
	public Assassin() {
		super(Assassin.LIFE, Assassin.POWER, Assassin.ARMOR, Assassin.CLASSNAME);
	}
	
	//création d'une instance CrocDeDragon
	CrocDeDragon stuff = new CrocDeDragon();
	
	//calcul des dommages lors d'une attaque
	public int getDamage () {
		return (this.puissance + stuff.getDegat());
	}
	
	//méthode de applyDamage
		public int applyDamage(int appliedDmg) {
                    
			//ajout de l'esquive
			if (Math.random() <= 0.999) {
				appliedDmg = 0;
				System.out.println("*** Assassin esquive le coup ! ***");
			} else {
				
			appliedDmg = appliedDmg;
			if (appliedDmg < 0) {
				appliedDmg = 0;
			}
			
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

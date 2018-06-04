import java.util.Scanner;
public class cookify
{
  static Scanner scan = new Scanner(System.in);
  public static void main (String [] args)
  {


    int bouclemenu= 0;



    class Recette{
      String nomRecette = "";
      int nombreIngre = 0;
      String desc = "";
      String[] ings = new String[]{};
      int tempsRecette = 0;
      String Difficulte = "";
      int prixTotal = 0;
      int prix[] = new int[]{0};

  }
    Recette sandwich = new Recette();

    sandwich.nomRecette = "recipe1";
    sandwich.nombreIngre= 4;
    sandwich.desc= "Beurrez le pain, mettez le fromage puis le jambon";
    sandwich.ings = new String[]{"pain","jambon","beurre","fromage"};
    sandwich.tempsRecette = 30;


  

    System.out.println(sandwich.nomRecette);

    System.out.println("Bienvenue.\nJe suis votre assistant personnel Alpha.\nQuelle est votre prénom ?");
    String name = scan.next();
    System.out.println("\nBonjour "+ name + " !\nQue fait-on aujourd'hui ?\n");
  
    while (bouclemenu < 1 ) { 

    System.out.println("\n1.Préparer une recette\n2.Un point sur ma santé\n3.Créer une recette\n4.Voir le wiki des recettes");
    System.out.println("\nVeuillez faire votre choix");
    int choix = scan.nextInt();

    if (choix == 1)
    {
      firstmenu();
    }
    if (choix == 2)
    {
      secondmenu();
    }
    if (choix == 3)
    {
      thirdmenu();
    }
    if (choix == 4)
    {
      fourthmenu();
    }
 }



  }
  public static void firstmenu()
  {
   
    System.out.println("Choisissez votre recette ou appuyer sur - 0 - pour revenir au Menu");
    System.out.println("1= Paella Valenciana");
    int choixRecette= scan.nextInt();


      
    
    int totalIngredients= 5;


      String [] ingredientsList = {"Tomates","100 ml huile d'olive","Gousses d'ail","Poivrons verts","Oignons"};
    
      int [] ingredientsQuantity = {2,2,3,1,2,0};

      float [] ingredientsPrice = {3,1,1,1,2};

  float totalPrice = 0;
    
      

  int timerRecipe = 30;
  String complexity = ("easy");

                          System.out.println("");
                          System.out.println("");
                          System.out.println("");


  // Affichage sous forme de tableau
    System.out.println("+---------------------------------------------------------------+");
    System.out.println("|                                                               |");
    System.out.println("|                       COOKIFY                                 |");
    System.out.println("|                                                               |");
    System.out.println("| Recette: “Paella Valenciana”                                  |");
    System.out.println("|                                                               |");
    System.out.println("|                                                               |");
    System.out.println("| Temps: "+timerRecipe+"min                                                  |");
    System.out.println("|                                                               |");
    System.out.println("| Complexité:    "+complexity+"                                             ");
    System.out.println("+---------------------------------------------------------------+");
    System.out.println("|                                                               |");
    System.out.println("|                                                               |");
    System.out.println("|                                                               |");
    System.out.println("|        Total ingredients : "+totalIngredients+"                                  |");
    System.out.println("|                                                               |");
    System.out.println("|                                                               |");
    System.out.println("+---------------------------------------------------------------+");
    System.out.println("|                                                               |");
    for (int i = 0 ; i < totalIngredients; i++){
      System.out.println("| * "+ingredientsList[i]+":\n| Quantité: x"+ingredientsQuantity[i]+"  Prix: "+ingredientsPrice[i]+"€                                      |");
        totalPrice = totalPrice + ingredientsPrice[i];
    }
    System.out.println("|                                                               |");
    System.out.println("|                                                               |");
    System.out.println("|                                                               |");
    System.out.println("|   Prix total:     "+totalPrice+"€                               ");
    System.out.println("|                                                               |");
    System.out.println("+---------------------------------------------------------------+");
      System.out.println("");
      System.out.println("");
      System.out.println("");



      String[] QuestionList = {"1. Dans une grande poêle, verser l'huile d'olive et chauffer à feu moyen. (Attendre 5 min)", "Ajouter les oignons et l'ail et laisser revenir en remunant. (Attendre 5 min)", "Voilà c'est prêt. Appuyer sur 0."};
  int i=0;
    String reponse;
    System.out.println("Voulez-vous préparer cette recette ? (Y/N)");
    reponse=scan.next();
    if(reponse.equals("Y")){
      System.out.println(QuestionList[i]);
      i=i+1;
      System.out.println("Voulez-vous continuer ? (Y/N)");
      reponse = scan.next();

      }

      if (reponse.equals("Y")) {
      System.out.println(QuestionList[i]);
      i=i+1;
        System.out.println("Voulez-vous continuer ? (Y/N)");
        reponse = scan.next();
      }

      if(reponse.equals("Y")){
        System.out.println(QuestionList[i]);
          System.out.println("");
          reponse=scan.next();

      }

      if(reponse.equals("n")){
            System.out.println("MENU");

          }


  

 }
    

  
  public static void secondmenu()
  {
    System.out.println("Menu santé:");
    System.out.println("Poids(kg) ?");
			double poids = scan.nextDouble();
				System.out.println("");

		System.out.println("Taille(m) ?");
			double taille = scan.nextDouble();
				System.out.println("");


		double bmi = 0;

			bmi = poids / (taille * taille);

		System.out.println("IMS = "+bmi);


		if (bmi < 16.5) {
			System.out.println("Undernutrition");
				System.out.println("");
			}

			else if(bmi > 16.5 && bmi < 18.5){
				System.out.println("Thin");
					System.out.println("");
			}

			else if(bmi > 18.5 && bmi < 25){
				System.out.println("Normale corpulence");
					System.out.println("");
			}

			else if(bmi > 25 && bmi < 30){
				System.out.println("Overweight");
					System.out.println("");
			}

			else if(bmi > 30 && bmi < 35){
				System.out.println("Moderate obesity");
					System.out.println("");
			}

			else if(bmi > 35 && bmi < 40){
				System.out.println("Severe obesity");
					System.out.println("");
			}
			else if(bmi < 40){
				System.out.println("Morbid obesity");
					System.out.println("");
			}
  }
  public static void thirdmenu()
  { int n = 0;
    String rep;
    String [] namerecette = new String [5];
    int[] nbingre = new int [5];

    do
      {

        System.out.println("Menu créer sa recette:\n");
        System.out.println("Quel est le nom de la recette?");
        String nrecette = scan.next();
        namerecette [n] = nrecette;
        System.out.println("\nQuel est le nombre total d'ingredients? ");
        int nombreIngre = scan.nextInt();
        nbingre [n] = nombreIngre;
        System.out.println("Voulez vous entrer une autre recette? (Y/N)");
        rep = scan.next();
        n++;
      } while (rep.equals("Y"));
      System.out.println(namerecette[1]);
      System.out.println(nbingre[1]);
  }
  public static void fourthmenu()
  {
    System.out.println("4eme menu");
 


}



  }



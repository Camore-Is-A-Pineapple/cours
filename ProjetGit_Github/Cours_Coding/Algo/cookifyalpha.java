import java.util.Scanner;
public class cookifyalpha
{
  static class Recette{
      String nomRecette = "";
      int nombreIngre = 0;
      String[] desc = new String[]{};
      String[] ings = new String[]{};
      int tempsRecette = 0;
      String difficulteLevel = "";
      String difficulte(){
        if(tempsRecette < 30 && ings.length <= 5){
          difficulteLevel = "Facile";
        } else if (tempsRecette >= 30 && tempsRecette < 60 && ings.length <=10) {
          difficulteLevel = "Moyen";
        } else if (tempsRecette <= 60 && ings.length > 10) {
          difficulteLevel = "Difficile";
        }
        return difficulteLevel;
      }
      int prixTotal(){
        int additionPrix = 0;
        for(int prixBoucle = 0;prixBoucle<this.prix.length;prixBoucle++){
          additionPrix += this.prix[prixBoucle];
        }
        return additionPrix;
      }
      int prix[] = new int[]{0};
      int qty[] = new int[]{0};

  }
  static Scanner scan = new Scanner(System.in);
  public static void main (String [] args)


  {

    int boucleMenu = 0;

    Recette[] tableauRecettes = new Recette[3];
    for(int i=0;i<tableauRecettes.length; i++){
      tableauRecettes[i] = new Recette();
    }

    tableauRecettes[0].nomRecette ="sandwich";
    tableauRecettes[0].nombreIngre= 4;
    tableauRecettes[0].desc = new String[]{"Beurrez le pain","Mettez le fromage", "Mettez le jambon"};
    tableauRecettes[0].ings = new String[]{"pain","jambon","beurre","fromage"};
    tableauRecettes[0].tempsRecette = 30;
    tableauRecettes[0].prix = new int[] {1,2,3,4};
    tableauRecettes[0].qty = new int[] {1,1,2,4};

    tableauRecettes[1].nomRecette ="taboule";
    tableauRecettes[1].nombreIngre= 6;
    tableauRecettes[1].desc = new String[]{"Cuire la semoule","Couper les poivrons", "couper les tomates","Couper la menthe","Tout mélanger"};
    tableauRecettes[1].ings = new String[]{"semoule","menthe","raisins","tomates","poivrons"};
    tableauRecettes[1].tempsRecette = 40;
    tableauRecettes[1].prix = new int[] {1,2,1,5};
    tableauRecettes[1].qty = new int[] {1,1,2,4};

    tableauRecettes[2].nomRecette ="le sandwich de Micka";
    tableauRecettes[2].nombreIngre= 11;
    tableauRecettes[2].desc = new String[]{"Fais toi bien plaiz"};
    tableauRecettes[2].ings = new String[]{"pain","jambon","beurre","fromage","champignons","creme","lardons","steak","ketchup","oignons","poivrons"};
    tableauRecettes[2].tempsRecette = 30;
    tableauRecettes[2].prix = new int[] {1,2,3,4,5,6,7,8,9,10,11};
    tableauRecettes[2].qty = new int[] {1,1,2,4};

    System.out.println("Bienvenue.\nJe suis votre assistant personnel Alpha.\nQuelle est votre prénom?");
    String name = scan.next();
    System.out.println("\nBonjour "+ name + "!!\nQue fait-on aujourd'hui?\n");

    while (boucleMenu < 1){

    System.out.println("\nVeuillez faire votre choix");
    System.out.println("\n1.Préparer une recette\n2.Un point sur ma santé\n3.Créer une recette\n4.Voir le wiki des recettes");
    int choix = scan.nextInt();


    if (choix == 1)
    {
      firstmenu(tableauRecettes);
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
      fourthmenu(tableauRecettes);
    }
 }
  }
  public static void firstmenu(Recette []tableauRecettesMenu)
  {
    int choixListeRecette;
        for(choixListeRecette = 0;choixListeRecette<tableauRecettesMenu.length;choixListeRecette++){
          System.out.println(""+choixListeRecette+1 +"- "+ tableauRecettesMenu[choixListeRecette].nomRecette +" | Difficulte: "+ tableauRecettesMenu[choixListeRecette].difficulte() + "" );
         }
        System.out.println("Choisissez votre recette ou appuyer sur - 0 - pour revenir au Menu");

         choixListeRecette= scan.nextInt()-1;
      //
      //
      //
      //
      //   int totalIngredients= 5;
      //
      //
      //     String [] ingredientsList = {"Tomates","100 ml huile d'olive","Gousses d'ail","Poivrons verts","Oignons"};
      //
      //     int [] ingredientsQuantity = {2,2,3,1,2,0};
      //
      //     float [] ingredientsPrice = {3,1,1,1,2};
      //
      // float totalPrice = 0;
      //
      //
      //
      // int timerRecipe = 30;
      // String complexity = ("easy");
      //
      //                         System.out.println("");
      //                         System.out.println("");
      //                         System.out.println("");
      //


      // Affichage sous forme de tableau
        System.out.println("+---------------------------------------------------------------+");
        System.out.println("|                                                               |");
        System.out.println("|                       COOKIFY                                 |");
        System.out.println("|                                                               |");
        System.out.println("| Recette:"+tableauRecettesMenu[choixListeRecette].nomRecette+"                                  |");
        System.out.println("|                                                               |");
        System.out.println("|                                                               |");
        System.out.println("| Temps: "+tableauRecettesMenu[choixListeRecette].tempsRecette+"min                                                  |");
        System.out.println("|                                                               |");
        System.out.println("| Complexité:    "+tableauRecettesMenu[choixListeRecette].difficulte()+"                                             ");
        System.out.println("+---------------------------------------------------------------+");
        System.out.println("|                                                               |");
        System.out.println("|                                                               |");
        System.out.println("|                                                               |");
        System.out.println("|        Total ingredients : "+tableauRecettesMenu[choixListeRecette].nombreIngre+"                                  |");
        System.out.println("|                                                               |");
        System.out.println("|                                                               |");
        System.out.println("+---------------------------------------------------------------+");
        System.out.println("|                                                               |");
        for (int i = 0 ; i < tableauRecettesMenu[choixListeRecette].ings.length; i++){
          System.out.println("| * "+tableauRecettesMenu[choixListeRecette].ings[i]+":\n| Quantité: x"+tableauRecettesMenu[choixListeRecette].qty[i]+"  Prix: "+tableauRecettesMenu[choixListeRecette].prix[i]+"€                                      |");
        }
        System.out.println("|                                                               |");
        System.out.println("|                                                               |");
        System.out.println("|                                                               |");
        System.out.println("|   Prix total:     "+tableauRecettesMenu[choixListeRecette].prixTotal()+"€                               ");
        System.out.println("|                                                               |");
        System.out.println("+---------------------------------------------------------------+");
          System.out.println("");
          System.out.println("");
          System.out.println("");



          int i=0;

        System.out.println("Voulez-vous préparer cette recette ? (Y/N)");

        for(int boucleQuestion=0;i<tableauRecettesMenu[choixListeRecette].desc.length; boucleQuestion++){
          String reponse=scan.next();
          if(reponse.equals("Y")){
            System.out.println(tableauRecettesMenu[choixListeRecette].desc[i]);
            i=i+1;
            System.out.println("Voulez-vous continuer ? (Y/N)");

          }

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

    do
      {

        System.out.println("Menu créer sa recette:\n");
        System.out.println("Quel est le nom de la recette?");
        String nrecette = scan.next();

        System.out.println("\nQuel est le nombre total d'ingredients? ");
        int nombreIngre = scan.nextInt();
        System.out.println("Donnez le nombre d'étape");
        int nbetape = scan.nextInt();
        while (nbetape!=0)
        {
          System.out.println("Donnez une étape");
          String etapere = scan.next();

          nbetape--;
        }

        System.out.println("Voulez vous entrer une autre recette? (Y/N)");
        rep = scan.next();
        n++;
      } while (rep.equals("Y"));
  }
  public static void fourthmenu(Recette []tableauRecettesMenu)
  {

    System.out.println("Menu stockage de recette\n");
      System.out.println("1." + tableauRecettesMenu[0].nomRecette +", "+ tableauRecettesMenu[0].tempsRecette + ", Facile");
      System.out.println("2." + tableauRecettesMenu[1].nomRecette +", "+ tableauRecettesMenu[1].tempsRecette + ", Moyen");
      System.out.println("3." + tableauRecettesMenu[2].nomRecette +", "+ tableauRecettesMenu[2].tempsRecette + ", Difficile");
      System.out.println("\nVoulez vous revenir au Menu?");
      scan.next();

  }

}

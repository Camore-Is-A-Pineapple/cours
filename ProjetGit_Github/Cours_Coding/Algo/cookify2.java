import java.util.Scanner;
public class cookify2
{
  static class Recette{
      String nomRecette = "";
      int nombreIngre = 0;
      String[] desc = new String[]{};
      String[] ings = new String[]{};
      int tempsRecette = 0;
      String Difficulte = "";
      int prixTotal = 0;
      int prix[] = new int[]{0};

  }
  static Scanner scan = new Scanner(System.in);
  public static void main (String [] args)


  {

    Recette nrecette1 = new Recette();

    nrecette1.nomRecette = nrecette;
    nrecette1.nombreIngre= 4;
    nrecette1.desc = new String[]{"Beurrez le pain","Mettez le fromage", "Mettez le jambon"};
    nrecette1.ings = new String[]{"pain","jambon","beurre","fromage"};
    nrecette1.tempsRecette = 30;

    System.out.println(nrecette.nomRecette);
    System.out.println(nrecette.nombreIngre);
    System.out.println(nrecette.desc[0]);


    System.out.println("Bienvenue.\nJe suis votre assistant personnel Alpha.\nQuelle est votre prénom?");
    String name = scan.next();
    System.out.println("\nBonjour "+ name + "!!\nQue fait-on aujourd'hui?\n\n1.Préparer une recette\n2.Un point sur ma santé\n3.Créer une recette\n4.Voir le wiki des recettes");
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
  public static void firstmenu()
  {
    System.out.println("1eme menu");
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
  public static void fourthmenu()
  {
    System.out.println("4eme menu");
  }

}

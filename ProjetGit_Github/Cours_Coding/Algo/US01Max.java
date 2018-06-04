import java.util.Scanner;

public class US01Max{

public static void main (String[]args)

{

	// Listes d'ingredients
		String ingredient_1="Tomates";
			int ingredient1Q= 2;

		String ingredient_2="100 ml huile d'olive";
			int ingredient2Q= 2;

		String ingredient_3="Gousses d'ail";
			int ingredient3Q= 3;

		String ingredient_4="Poivrons Verts";
			int ingredient4Q= 1;

		String ingredient_5="Oignons";
			int ingredient5Q= 2;


		int totalIngredients= 0;


	// println du nom de la recette
			System.out.println("Name of Recipe =   -Paella Valenciana");
					System.out.println("");




	// Affichage sous forme de tableau
		System.out.println("+---------------------------------------------------------------+");
		System.out.println("|                                                               |");
		System.out.println("|                       COOKIFY                                 |");
		System.out.println("|                                                               |");
		System.out.println("| Recipe: “Paella Valenciana”                                   |");
		System.out.println("| total ingredients : 5                                         |");
		System.out.println("|                                                               |");
		System.out.println("| * "+ingredient_2+":            "+ingredient2Q+"                          |");
		System.out.println("| * "+ingredient_1+":                         "+ingredient1Q+"                          |");
		System.out.println("| * "+ingredient_3+":                   "+ingredient3Q+"                          |");
		System.out.println("| * "+ingredient_4+":                  "+ingredient4Q+"                          |");
		System.out.println("| * "+ingredient_5+":                         "+ingredient5Q+"                          |");
		System.out.println("|                                                               |");
		System.out.println("+---------------------------------------------------------------+");
		System.out.println("|                                                               |");
		System.out.println("|                       Préparation                             |");
		System.out.println("|                                                               |");
		System.out.println("| 1. Dans une grande poêle verser "+ingredient_2+"          |");
		System.out.println("|      et chauffer à feu moyen.(Attendre 5min)                  |");
		System.out.println("| 2. Ajouter les "+ingredient_5+" et "+ingredient_3+" et laisser            |");
		System.out.println("|      revenir en remuant.                                      |");
		System.out.println("| 3. Ajouter les "+ingredient_1+" en morceaux et revenir.                |");
		System.out.println("| etc..                                                         |");
		System.out.println("+---------------------------------------------------------------+");
			System.out.println("");
			System.out.println("");
			System.out.println("");


	// Préparation de la recette
		System.out.println("1. Dans une grande poêle verser "+ingredient_2+" et chauffer à feu moyen. (Attendre 5min)");
			totalIngredients++;	
		System.out.println("2. Ajouter les "+ingredient_5+" et les "+ingredient_3+" et laisser revenir en remuant.");
			totalIngredients=totalIngredients+2;
		System.out.println("3. Ajouter les "+ingredient_1+" et les "+ingredient_4+" en morceaux et les faire revenir.");
			totalIngredients=totalIngredients+2;
				System.out.println("");

	// Afficher totalIngredients
		System.out.println("_____Cette recette contient: "+totalIngredients+" ingredients_____");
				System.out.println("");
				System.out.println("");

}


}







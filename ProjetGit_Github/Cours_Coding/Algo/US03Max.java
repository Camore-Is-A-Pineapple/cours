import java.util.Scanner;

public class US03Max{

public static void main (String[]args)

{

	// Listes d'ingredients
		/*String ingredient_1="Tomates";
			int ingredient1Q= 2;

		String ingredient_2="100 ml huile d'olive";
			int ingredient2Q= 2;

		String ingredient_3="Gousses d'ail";
			int ingredient3Q= 3;

		String ingredient_4="Poivrons Verts";
			int ingredient4Q= 1;

		String ingredient_5="Oignons";
			int ingredient5Q= 2;*/



			// Variables
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



}


}


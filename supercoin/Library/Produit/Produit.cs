using System;

namespace Produit
{
    public abstract class Produit
    {
        private String nom;
        private int prix;
        private String ville;
    
        public virtual void pouet(){
            Console.WriteLine("Hello");

        }
    }
}

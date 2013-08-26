using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EfesBetGUI.Entity;
using System.Collections.ObjectModel;

namespace EfesBetGUI.Model
{
    
    public class SubGridModel
    {
        public ObservableCollection<SubGridItem> SubGridItemList = new ObservableCollection<SubGridItem>();
        public SubGridModel()
        {
            SubGridItemList = new ObservableCollection<SubGridItem>()
            {
                new SubGridItem()
                {
                    Kod=5888161,
                    Alt_Secenakler="Handicap (0:1)                                                                  [-1]:3.14     [0]:3.4   [+1]:1.85"                    
                },
                new SubGridItem()
                {
                    Kod=3888161,
                    Alt_Secenakler="Ilk Yan Sonup                                                                   [+1]:2.06     [0]:2.11   [2]:4.12"                    
                },
                new SubGridItem()
                {
                    Kod=11888161,
                    Alt_Secenakler="Asian                                                                                 [1]:1.28     [2]:2.84"                    
                },
                new SubGridItem()
                {
                    Kod=6888161,
                    Alt_Secenakler="Cifte Sans                                                                      [1or0]:1.18     [1or2]:1.24   [0or2]:1.85"                    
                },
                new SubGridItem()
                {
                    Kod=7888161,
                    Alt_Secenakler="En Cok Gol Hangi Devrede Olur                                               Ilk:2.61    Esit:2.79   Iki:1.8"                    
                },
                new SubGridItem()
                {
                    Kod=7888161,
                    Alt_Secenakler="Ilk Gol                                                                             Ilk:2.61    Esit:2.79   Iki:1.8"                    
                },
                new SubGridItem()
                {
                    Kod=7888161,
                    Alt_Secenakler="Gol Altu/Ustu1.5                                                                 [A]:2.54    [U]1.32"                    
                },
                new SubGridItem()
                {
                    Kod=7888161,
                    Alt_Secenakler="Gol Altu/Ustu1.5                                                                 [A]:2.54    [U]1.32"                    
                },
                new SubGridItem()
                {
                    Kod=7888161,
                    Alt_Secenakler="Gol Altu/Ustu1.5                                                                 [A]:2.54    [U]1.32"                    
                },
                new SubGridItem()
                {
                    Kod=7888161,
                    Alt_Secenakler="Gol Altu/Ustu1.5                                                                 [A]:2.54    [U]1.32"                    
                },
                new SubGridItem()
                {
                    Kod=7888161,
                    Alt_Secenakler="Half/Full Time                                                                   [1/1]:2.8    [1/X]:16     [1/2]:25"                    
                },
            };

        }
    }
}

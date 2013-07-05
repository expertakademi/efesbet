using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using EfesBetGUI.Entity;

namespace EfesBetGUI.Model
{
    class MaxGooseModel
    {
        public ObservableCollection<Goose> GooseList=new ObservableCollection<Goose>();
        public MaxGooseModel()
        {
            GooseList = new ObservableCollection<Goose>()
            {
                new Goose()
                {
                    KB=112.00,
                    MaxGoose=1000000,
                    System=15
                    
                }
            };
                
        }
        
    }
}

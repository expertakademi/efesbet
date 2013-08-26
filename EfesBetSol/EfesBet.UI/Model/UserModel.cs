using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EfesBetGUI.Entity;
using System.Collections.ObjectModel;


namespace EfesBetGUI.Model
{
    class UserModel
    {

        public ObservableCollection<User> UserList = new ObservableCollection<User>();
        public UserModel()
        {
            UserList = new ObservableCollection<User>()
            {
                
                    new User()
                {
                    History="27.07 10.55",
                    CuponNo="765494-522sdr-4241",
                    Amount="56,00 TL",
                    UserName="User1",
                    Earnings="5,00 TL",
                    NoOfCupons=2,
                    MaxEarning="75,00 TL"
                
                },
              
            };
        }
    }
}

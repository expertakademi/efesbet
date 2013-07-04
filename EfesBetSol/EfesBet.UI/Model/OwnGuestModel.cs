using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using EfesBetGUI.Entity;

namespace EfesBetGUI.Model
{
    class OwnGuestModel
    {
        public ObservableCollection<OddsResult> sahibikonukList;
        public OwnGuestModel()
        {
            sahibikonukList = new ObservableCollection<OddsResult>()
            {
                new OddsResult()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Tekli"
                },
                new OddsResult()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
                new OddsResult()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
                new OddsResult()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
               new OddsResult()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
                new OddsResult()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
                new OddsResult()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },

            };
        }
    }
}

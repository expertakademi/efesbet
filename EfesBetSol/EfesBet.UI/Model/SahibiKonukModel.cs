using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using EfesBetGUI.Entity;

namespace EfesBetGUI.Model
{
    class SahibiKonukModel
    {
        public ObservableCollection<SahibiKonuk> sahibikonukList;
        public SahibiKonukModel()
        {
            sahibikonukList = new ObservableCollection<SahibiKonuk>()
            {
                new SahibiKonuk()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Tekli"
                },
                new SahibiKonuk()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
                new SahibiKonuk()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
                new SahibiKonuk()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
               new SahibiKonuk()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
                new SahibiKonuk()
                {
                    Kod=766565,
                    Sahibi="Aalborg",
                    Konuk="FC Koberhavn",
                    Altsecenekler="Handicap(0:1)"
                },
                new SahibiKonuk()
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

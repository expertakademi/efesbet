using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;

namespace Efesbet.Scraper.ViewModel
{
    /// <summary>
    /// Create Relay Command for command binding
    /// </summary>
    public class RelayCommand : ICommand
    {
        private Action<object> _action;
        public event EventHandler CanExecuteChanged;

        /// <summary>
        /// RelayCommand
        /// </summary>
        /// <param name="action"></param>
        public RelayCommand(Action<object> action)
        {
            _action = action;
        }

        #region ICommand Members
        /// <summary>
        /// CanExecute
        /// </summary>
        /// <param name="parameter"></param>
        /// <returns></returns>
        public bool CanExecute(object parameter)
        {
            return true;
        }

        /// <summary>
        /// Execute
        /// </summary>
        /// <param name="parameter"></param>
        public void Execute(object parameter)
        {
            if (parameter != null)
            {
                _action(parameter);
            }
            else
            {
                _action(null);
            }
        }

        #endregion
    }
}

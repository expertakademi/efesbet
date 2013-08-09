using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.Collections.Specialized;

namespace EfesBetGUI.ViewModel
{
    public abstract class ViewModelBase:INotifyPropertyChanged ,IDisposable,INotifyCollectionChanged
    {
        #region Constructor

        protected ViewModelBase()
        {
        }

        #endregion // Constructor
        #region DisplayName

        /// <summary>
        /// Returns the user-friendly name of this object. 
        /// Child classes can set this property to a new value,
        /// or override it to determine the value on-demand.
        /// </summary>
        public virtual string DisplayName { get; protected set; }

        #endregion // DisplayName
        

        #region Debugging Aides

        /// <summary>
        /// Warns the developer if this object does not have
        /// a public property with the specified name. This 
        /// method does not exist in a Release build.
        /// </summary>
        [Conditional("DEBUG")]
        [DebuggerStepThrough]
        public void VerifyPropertyName(string propertyName)
        {
            // Verify that the property name matches a real,  
            // public, instance property on this object.
            if (TypeDescriptor.GetProperties(this)[propertyName] == null)
            {
                string msg = "Invalid property name: " + propertyName;

                if (this.ThrowOnInvalidPropertyName)
                    throw new Exception(msg);
                else
                    Debug.Fail(msg);
            }
        }

        /// <summary>
        /// Returns whether an exception is thrown, or if a Debug.Fail() is used
        /// when an invalid property name is passed to the VerifyPropertyName method.
        /// The default value is false, but subclasses used by unit tests might 
        /// override this property's getter to return true.
        /// </summary>
        protected virtual bool ThrowOnInvalidPropertyName { get; private set; }

        #endregion // Debugging Aides
        #region INotifyPropertyChanged Members
        /// <summary>
        /// raised when property of this object has some new value  
        /// </summary>
        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChangedEventHandler handler = this.PropertyChanged;
            if (handler != null)
            {
                var e = new PropertyChangedEventArgs(propertyName);
                handler(this, e);
            }
        }

        #endregion

        #region IDisposable Members

        public void Dispose()
        {
            this.OnDispose();
        }

        /// <summary>
        /// child classes can override this method to perform cleanup logic,like removing eventhandlers and disposing objects
        /// Anindya
        /// </summary>
        protected virtual void OnDispose()
        {
            //no implementation has been done here 
            //intentionhally I have done so 
            //so that this method will be only used for the overriding of this method
            //by default nothing I have kept in this method
        }

        #endregion

        #region INotifyCollectionChanged Members
        /// <summary>
        /// Occurs when an item is added, removed, changed, moved, or the entire list is refreshed.
        /// </summary>
        public event NotifyCollectionChangedEventHandler CollectionChanged;

        protected virtual void OnCollectionChanged(CollectionChangeEventArgs ccevent)
        {
            //NotifyCollectionChangedEventHandler handler = this.CollectionChanged;
            //if (handler != null)
            //{
            //    var e = new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction 
            //}
        }

        #endregion
        /*  */
    }
}

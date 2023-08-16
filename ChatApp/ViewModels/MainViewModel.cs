using ChatApp.Core;
using ChatApp.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using static System.Net.WebRequestMethods;

namespace ChatApp.ViewModels
{
    public class MainViewModel : ObservableObject { 
        public ObservableCollection<MessageModel>? Messages { get; set; }
        public ObservableCollection<ContactModel>? Contacts { get; set; }

        //Commands
        public RelayCommand SendCommand { get; set; }


       

        private string _message;
        public string Message
        {
            get { return _message; }
            set { _message = value;
                OnPropertyChanged();
            }
        }

        private ContactModel _selectedContact;

        public ContactModel SelectedContact
        {
            get { return _selectedContact; }
            set { _selectedContact = value;
                OnPropertyChanged();
            }
            
        }



        public MainViewModel()
        {
            Messages = new ObservableCollection<MessageModel>();
            Contacts = new ObservableCollection<ContactModel>();

            SendCommand = new RelayCommand(o =>
            {
                Messages.Add(new MessageModel
                {
                    Message=Message,
                    FirstMessage = false

                }); 
                Message = "";
            });

            Messages.Add(new MessageModel
            {
                Username="Ibrahim",
                UsernameColor="#409aff",
                ImageSource="https://i.imgur.com/yMWvLXd.png",
                Message="Test",
                Time=DateTime.Now,
                IsNativeOrigin=false,
                FirstMessage=true
            });
            for (int i = 0; i < 3; i++)
            {
                Messages.Add(new MessageModel
                {
                    Username = "Ibrahim",
                    UsernameColor = "#409aff", 
                    ImageSource = "https://i.imgur.com/yMWvLXd.png",
                    Message = "Test",
                    Time = DateTime.Now,
                    IsNativeOrigin = false,
                    FirstMessage = false
                });
            }
            for (int i = 0; i < 4; i++)
            {
                Messages.Add(new MessageModel
                {
                    Username = "Hesen",
                    UsernameColor = "#409aff",
                    ImageSource = "https://i.imgur.com/yMWvLXd.png",
                    Message = "Test",
                    Time = DateTime.Now,
                    IsNativeOrigin = true,
                });
            }
            Messages.Add(new MessageModel
            {
                Username = "Ibrahim",
                UsernameColor = "#409aff",
                ImageSource = "https://i.imgur.com/yMWvLXd.png",
                Message = "Last",
                Time = DateTime.Now,
                IsNativeOrigin = false,
            });
            for (int i = 0; i < 5; i++)
            {
                Contacts.Add(new ContactModel
                {
                    Username = $"Ibrahim {i}",
                    ImageSource = "https://i.imgur.com/yMWvLXd.png",
                    Messages = Messages
                }) ;
            }

        }
    }
}

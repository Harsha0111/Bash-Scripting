#!/bin/bash
echo "***---Welcome---***"
echo "Connecting to db..."
sleep 3
echo -e "Connected!\n"
sleep 1
options () {
  echo "Please choose your option..."
  echo "1 - View All"
  echo "2 - Insert"
  echo "3 - Update"
  echo "4 - Delete"
  echo "5 - Exit"
  echo -n "Enter your choice: "
  read choice;
  case $choice in
   1) echo -e "\nS.no : Name : Age : Teacher : Bus"
      options;;

   2) echo -e -n "\nEnter Student Name: "
      read s_name;
      echo -n "Enter Student Age: "
      read s_age;
      echo -n "Enter Teacher Name: "
      read t_name;
      echo -n "Enter Private/School Bus: "
      read bus;
      echo -e "Inserted Successfully!\n"
      options;;

   3) echo -e -n "\nEnter the Student S.no to update: "
      read s_no;
      echo -n "Enter Student Name: "
      read s_name;
      echo -n "Enter Student Age: "
      read s_age;
      echo -n "Enter Teacher Name: "
      read t_name;
      echo -n "Enter Private/School Bus: "
      read bus;
      echo -e "Updated Successfully!\n"
      options;;

   4) echo -e -n "\nEnter Student S.no to delete: "
      read s_no;
      echo -e "Record deleted successfully!!!\n"
	   options;;

   5) echo "Thank you.."
      sleep 3;;

   *) echo -e "Invalid choice!\n"
      options;;
  esac
}
options

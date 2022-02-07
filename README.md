# README

## Links:
GitHub repository link: https://github.ncsu.edu/yli273/CSC517-Project2

Heroku deployment link: https://still-crag-73201.herokuapp.com/

## Credentials:
We have already make abaliable an admin account in system. Please use these credentials to login as:

Username: admin@123.com
Password: admin@123

We also have preconfigured some agents account, applicants account and applications for convient.

## Feature tests:

### Not logged in:
- Login as agent / applicant / admin: Click “Login” on homepage. Fill in e-mail and password field, then “click login”.
- Applicant Signup: Click “Applicant Signup” on homepage. Enter password, e-mail, name, phone number, (ID, property applied, property owned), then click “create applicant”.

### Logged in as Admin:
- Applicant / Application / Agent / Property list create, view, edit & delete: Click “View Applicants / Application / Agent/ Property List” on homepage.
- Admin list view: Click “Edit profile” on homepage.

### Logged in as Agent:
- Add a property: Click “Add a property” on homepage. Fill in the blanks, and click "Create Property".
- Remove a property: Click "View list of properties" on homepage, click "Destroy" on the property to delete.
- View the list of properties and availabilities: Click "VIew list of properties" on homepage.
- Check a tenant in to a property: Click "Check a tenant into a property" to view applicant list, click "edit" on target tenant, and increment the number of property owned, decrement the number of property applied. 
- Reject a tenant’s application to a property: Click "Check a tenant into a property" to view applicant list, click "edit" on target tenant, decrement the number of property applied.
- Check a tenant out from a property: Click "Check a tenant into a property" to view applicant list, click "edit" on target tenant, decrement the number of property owned.

### Logged in as Applicant:
- View the list of properties and availabilities: Click "View the list of properties".
- Apply to rent a property: Click "View my application", click "New Application", fill out the blanks, and click create application. 
- Withdraw their application: Click "View my application", click "Destroy" on target application.
- Move out of a property: Click "View the list of properties", click "edit" on target property, decrement "Occupied by" field.

## Edge cases:
- Unmatched email / password: A message is displayed to indicate unmatched email and password.
- Blanks not filled for application signup, add property, etc.: A warning message issued indicating required fields.


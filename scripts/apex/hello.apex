1. Upon Account Creation if Industry is not null and having value as ‘Media’
then populate Rating as Hot.
2. Upon Opportunity Creation if Amount is not null and is greater than 100000
then populate ‘Hot Opportunity’ in description field.
3. When an Account inserts and CopyBillingToShipping checkbox is checked
then automatically copy account billing address into account shipping
address.
4. Upon Creation of Position (Custom Object) if it is a new position and Open
Date, Min Pay & Max Pay are not populated then populated them with
below values:
a. Open Date = Today’s Date
b. Min Pay = 10000
c. Max Pay = 15000
5. Create a related Contact when an Account is created.
6. Create a related Opportunity when an Account is created and Account
Active = ‘Yes’.
7. When a Case is created on any Account, put the latest case number on the
Account in the ‘Latest Case Number’ (Text) field.
8. Account records should have a field named ‘Recent Opportunity Amount’. It
should contain the latest opportunity amount created on account.
9. On Account create two checkbox fields labeled as Contact and Opportunity.
Now when a new Account record is created and if a particular Contact or
Opportunity checkbox is checked then create that related record. Also
Opportunity records should be created only if the Account record Active
picklist is populated with a ‘Yes’.
10.
a. If the Account phone is updated then populate ‘Phone is updated’ in
description.
b. If the Account phone is updated then populate below message in
description.
Description = Phone is Updated! Old Value : XXX & New Value : XXX
11. When an account is inserted or updated and the CopyBillingToShipping
checkbox is checked then automatically copy the account billing address
into account shipping address.
12. Upon Account Creation or updation if Industry is not null and having value
as ‘Media’ then populate Rating as Hot.
13. If opportunity Stage is updated upon its creation or update then update
description as either 'Opp is Closed Lost' or 'Opp is Closed Won' or 'Opp is
Open'.
14. If the Account phone is updated then populate the phone number on all
related Contacts (Home Phone field). [Using Map]
15. If the Account phone is updated then populate the phone number on all
related Contacts (Home Phone field). [Using Parent-Child SOQL]
16. If the Account billing address is updated then update related contacts
mailing address. [Using Map]
17. If the Account billing address is updated then update related contacts
mailing address. [Using Parent-Child SOQL]
18. When a Opportunity Stage (field) is changed, create a Task record on
Opportunity and assign it to Logged In User OR Opportunity Owner OR
Any User.
19. Write a trigger on Account when Account Active field is updated from ‘Yes’
to ‘No’ then check all opportunities associated with the account. Update all
Opportunities Stage to close lost if stage not equal to close won.
20. Account records cannot be deleted if Active is Yes. [before delete]
21. Prevent account record from being edited if the record is created 7 days
back. [before update]
22. Apply validation using addError( ) method in trigger. While Creation of
Opportunity if Amount is null then throw an error message. [before insert]
23. When an opportunity is updated to Closed Lost and Closed Lost Reason
(field) is not populated then throw validation error that ‘Please populate
Closed Lost Reason’ on opportunity.
24. Write a trigger on Account and check only System Administrator profile
users should be able to delete an account.
25. If an opportunity is closed then, no one should be able to delete it except
the user having a System Administrator profile.
26. Prevent deletion of an account if there is any opportunity related to that
account.
27. Prevent deletion of an account if there is any open or won opportunity
related to that account. If all opportunities are closed and lost then you
should be able to delete the account.
28. Account and Employee share parent-child relationship. So when any
Employee record is deleted then update ‘Left Employee Count’ (Custom
Field) on Account. ‘Left Employee Count’ field should be increased by the
number of employee records deleted.
29. Undelete the deleted Employee record (in pre step) and set Active (Custom
Field) as true. Also decrease ‘Left Employee Count’ field value on Account.
30. Implement Database class and addError( ) method in trigger.
31. Account and Employee share parent-child relationship. When the
Employee record is inserted, deleted and undeleted then update ‘Total
Employee Count’ (Custom Field) on related Account.
32. Implement a scenario to demo how to Prevent Recursion in Apex Trigger.
33. When an opportunity is updated to closed won or closed lost then update
description having value 'Opportunity is Closed Won' or 'Opportunity is
Closed Lost' accordingly. (Hint: Recursion)
34. Upon contact creation an email should be sent to Email populated on
Contact. Prepare a proper email template that can be used to send an
email.
35. Write a trigger on contact to prevent duplicate records creation based on
Contact Email.
36. Whenever a new User having profile “System Administrator” is inserted and
is Active, add the user to the public group “Admins”. Create a public group
named Admins.
37. Write a trigger, if the owner of an account is changed then the owner for the
related contacts should also be updated.
38. Create two record types named as “Partner Case” and “Customer Case” on
Case Object. On creation of Case populate the total number of Partner
Case and Customer Case on Account object. Create Custom Fields on
Account.
39. When any Opportunity is created with amount populated or Opportunity
Amount is updated then populate total Amount on Account Level for all
related opportunities. If opportunity is deleted or undeleted then update
Amount on Account as well. (Hint: rollup summary)
40. Create a custom object Employee, and set OWD as Private, Once an
employee record is created, it should be automatically shared with another
user which belongs to Standard User profile.
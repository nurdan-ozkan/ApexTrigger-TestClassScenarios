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
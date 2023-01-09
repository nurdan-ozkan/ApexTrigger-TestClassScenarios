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
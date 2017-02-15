clear
echo Registering the User
echo
echo Request
echo curl "https://api.authy.com/protected/$AUTHY_API_FORMAT/users/new"
echo -H "X-Authy-API-Key: \$AUTHY_API_KEY" 
echo -d user[email]=\$USER_EMAIL 
echo -d user[cellphone]=\$USER_PHONE 
echo -d user[country_code]=\$USER_COUNTRY 
echo
echo Response
curl "https://api.authy.com/protected/$AUTHY_API_FORMAT/users/new" \
-H "X-Authy-API-Key: $AUTHY_API_KEY" \
-d user[email]=$USER_EMAIL \
-d user[cellphone]=$USER_PHONE \
-d user[country_code]=$USER_COUNTRY | underscore print --outfmt pretty
echo

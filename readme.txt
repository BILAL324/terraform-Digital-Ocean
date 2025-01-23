#terraform DigitalOcean Infrastructure Development

##
first we need token to access our diigtal Ocean
for that (we place token in secrets.tfvar --> variable file(varialbes.tf) --> then can be sued in main to execution)

##
then we need ssh to access directly digital ocean droplet
for that (we created a n ssh key access for our system and then palce the pulbic key in settings of the project on DO, 
then copy the fingerprint of the ssh key save and palce in the secret file like we did above and access it in drolet we are creating to access locally).

ok

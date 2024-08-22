#!/bin/bash
#the results of the test will be writen in tig-monorepo/test_errors.txt
echo "" > test_errors.txt
for ((i=0;i<89;i++));
do
    echo "resultats // results se trouvent - will be written dans le fichier - in file test_errors.txt"
    echo "Résultat pour l'algorithme :${i}" >> test_errors.txt
    echo -e "${i}\n[100,100]\n1\n5\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: 5/,/-/p" >> test_errors.txt
done

#####################################################
##   si tu ne veux pas utiliser de bot telegram    ##
##             supprimes cette partie              ##
##         et tout ce qui se trouve apres          ##
#####################################################
#####################################################
##     if you dont want to use telegram bot        ##
##             delete this aprt and                ##
##               everything above                  ##
#####################################################

# pour obtenir un bot telegram :
# dans recherche de telegram, tapes @BotFather
# dans BotFather de telegram, 
# tapes /newbot 
# appuies sur entrée
# laisse toi guider et répond aux questions que BotFather te pose
# à la fin tu obtients les infos de ton bot (le bot TOKEN entre autre, il faut le copier)
# pense à appuyer sur "start" dans le canal de ton bot
# ecrit un message dans ce canal genre coucou et appuies sur entrée

TELEGRAM_BOT_TOKEN="" #insert le token de ton bot entre les guillemets

# pour obtenir ton id telegram que tu colleras dans TELEGRAM_CHAT_ID :
# dans la recherche dans telegram, tapes @userinfobot 

TELEGRAM_CHAT_ID=""  #insert ton id telegram obtenu dans @userinfobot

message="Le test d'erreur des algos TIG est maintenant terminé"

# Envoie le message au bot Telegram
curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" -d "chat_id=$TELEGRAM_CHAT_ID&text=$message"

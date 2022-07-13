# Consignee jira

Un développeur prend en charge une US :
-          SI l’US est à « Ready », c’est qu’il est le premier à travailler dessus ; alors :
o   Il passe l’US du statut « Ready » à « In progress »
o   Il s’assigne à la sous-tâche qu’il démarre en passant la sous-tâche du statut « Ready » à « In progress »
o   Puis il fait évoluer la sous-tâche au statut « In review » lorsque son code est en relecture
o   Lorsque son code est mergé, il passe sa sous-tâche à « Merged » et renseigne dans le champ « Fix version » de l’US la release dans laquelle son code est mergé
NB : si la fix version n’existe pas dans JIRA, je la créé, demandez moi !
-          L’US reste à « In progress » tant que l’ensemble des sous-tâches ne sont pas au statut « Merged ». Par conséquent, le développeur qui ferme la dernière sous-tâche de l’US doit également passer l’US au statut « Developpement completed »
 
Le process est le même pour les defects/bug et l’ensemble des cartes JIRA.
 
En espérant que cela soit plus clair désormais. Si ça ne l’est toujours pas, revenez vers moi au plus vite !
Merci

=================




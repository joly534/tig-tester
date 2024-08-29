#!/bin/bash
#1)  satisfiability/schnoing                  
#2)  satisfiability/dpll_backtracking         
#3) satisfiability/walk_sat                  
#4) satisfiability/genetic_sat               
#5) satisfiability/satisfiapilled            
#6) satisfiability/i_cant_get_no             
#7) satisfiability/need_for_speed            
#8) satisfiability/walk_sat_adapt_tabu       
#9) satisfiability/fast_walk_sat             
#10) satisfiability/sprint_sat                
#11) satisfiability/faster_walk_sat           
#12) satisfiability/fastest_walk_sat          
#13) satisfiability/filter_sat                
#14) satisfiability/sprintier_sat             
#15) satisfiability/inbound                   
#16) satisfiability/double_optimized          
#17) satisfiability/fast_cdcl_sat_solver      
#18) satisfiability/hybrid_ultra_fast         
#19) satisfiability/optimized_sprint_sat      
#20) satisfiability/sat_allocd                
#21) satisfiability/mt_sat                    
#22) satisfiability/heuristics_gsat           
#23) satisfiability/manual_sat                
#24) vehicle_routing/clarke_wright            
#25) vehicle_routing/ant_colony               
#26) vehicle_routing/genetic_algorithm        
#27) vehicle_routing/simulated_annealing      
#28) vehicle_routing/limitless                
#29) vehicle_routing/dynamic_colonies         
#30) vehicle_routing/lazier_cw                
#31) vehicle_routing/guided_clarke_wright     
#32) vehicle_routing/aco_sbas                 
#33) vehicle_routing/fast_exit_clarke         
#34) vehicle_routing/filter_cw                
#35) vehicle_routing/overloded                
#36) vehicle_routing/clarke_wright_opt        
#37) vehicle_routing/clarke_wright_who        
#38) vehicle_routing/cw_two_opt_ls            
#39) vehicle_routing/super_heaped             
#40) vehicle_routing/enhanced_annealing       
#41) vehicle_routing/optimized_clarke         
#42) vehicle_routing/adaptive_cluster         
#43) vehicle_routing/compact_gcw              
#44) vehicle_routing/fast_exit_cw_topt_ls     
#45) vehicle_routing/inbound                  
#46) vehicle_routing/compact_gcw_turbo        
#47) vehicle_routing/improv_clarke_wright     
#48) vehicle_routing/cw_heuristic             
#49) vehicle_routing/clarke_wright_super      
#50) knapsack/dynamic                         
#51) knapsack/greedy                          
#52) knapsack/branch_and_bound                
#53) knapsack/genetic                         
#54) knapsack/tabu_search                     
#55) knapsack/knapmaxxing                     
#56) knapsack/better_in_twos                  
#57) knapsack/tinhat_pete                     
#58) knapsack/knapsplorify                    
#59) knapsack/dual_descent                    
#60) knapsack/ironhat_pete                    
#61) knapsack/flat_dp                         
#62) knapsack/filter_knapmaxxing              
#63) knapsack/better_knapp                    
#64) knapsack/better_knapm                    
#65) knapsack/optimised_knapmax               
#66) knapsack/overlodes_sack                  
#67) knapsack/knapheudp                       
#68) knapsack/over_knapmaxxed                 
#69) knapsack/needaknap                       
#70) knapsack/sack_o_potatoes                 
#71) knapsack/lightning_knapsack              
#72) knapsack/quantum_knapsack                
#73) knapsack/ultra_fast_knapsack             
#74) knapsack/sackophone                      
#75) knapsack/knap_zilla                      
#76) knapsack/knap_suck                       
#77) knapsack/quick_knap                      
#78) vector_search/optimal_ann                
#79) vector_search/kd_tree                    
#80) vector_search/brute_force_bacalhau       
#81) vector_search/hyper_index                
#82) vector_search/fast_search                
#83) vector_search/vector_finder_multi        
#84) vector_search/fasterer_search            
#85) vector_search/bacalhau_gpu               
#86) vector_search/manual_fast_search         
#87) vector_search/presort_msr                
#88) vector_search/cudabefaster               
#89) vector_search/tree_times_a_lady          
#90) vector_search/hyperplanejane             
#91) vector_search/cudamatata                 
#92) vector_search/optimax_gpu                
#93) vector_search/gpu_manual_fast            
#94) vector_search/gpu_manual_fastest         
#95) vector_search/optimax_search             
#96) vector_search/fast_search_cuda           

algos_saisis=()

# Identifiants Telegram 
TELEGRAM_BOT_TOKEN="" #inserez votre bot token entre les guillemets
TELEGRAM_CHAT_ID=""  #inserez votre user id entre les guillemets

#les valeurs entrées par défaut ont été utilisées pour un CPU ryzen 9 7900
#difficultés pour les tests - modifiez les valeurs entre les crochets
dif_satisfiability=[50,400]
dif_knapsack=[60,10]
dif_vehicle_routing=[40,230]
dif_vector_search=[10,350]
# Nonces pour les tests - modifiez la valeur à votre convenance...
nonces_satisfiability=5000
nonces_knapsack=5000
nonces_vehicle_routing=5000
nonces_vector_search=50

# L utilisateur entre le numéro d'un algo
while read -p "Entrer un chiffre (de 0 à 95 - un par un) ou appuyer sur la lettre p pour passer au test : " i
do
    if [[ "$i" =~ ^([0-9]|[1-7][0-9]|8[0-9]|9[0-5])$ ]]; then
        algos_saisis+=("$i")
    elif [ "$i" = "p" ]; then
        break
    else
        echo "Entrez une valeur correcte, OSTI DE  CRISSE DE TABARNAk !!!"
    fi
done

# Boucle pour traiter chaque algorithme saisi
for alg in "${algos_saisis[@]}"; do
    if [[ "$alg" =~ ^([0-9]|1[0-9]|2[0-2])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)";
        echo -e "$alg\n$dif_satisfiability\n1\n$nonces_satisfiability\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_satisfiability/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)";
    elif [[ "$alg" =~ ^(2[3-9]|3[0-9]|4[0-8])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)"
        echo -e "$alg\n$dif_knapsack\n1\n$nonces_knapsack\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_knapsack/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)"
    elif [[ "$alg" =~ ^(49|5[0-9]|6[0-9]|7[0-6])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)"       
        echo -e "$alg\n$dif_vehicle_routing\n1\n$nonces_vehicle_routing\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_vehicle_routing/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)"
    elif [[ "$alg" =~ ^(7[6-9]|8[0-9]|9[0-5])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)"        
        echo -e "$alg\n$dif_vector_search\n1\n$nonces_vector_search\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_vector_search/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)"
    fi
done

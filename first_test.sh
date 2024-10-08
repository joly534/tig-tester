#!/bin/bash
cargo build -p tig-worker --release
#téléchargement de tous les algorithmes pour realiser les tests
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/ultra_sat_allocd
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/optimized_sprint_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/satisfactory
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/walk_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/mt_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/inbound
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/walk_sat_adapt_tabu
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/filter_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/fast_walk_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/fastest_walk_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/dpll_backtracking
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/i_cant_get_no
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/sat_opaafast
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/sprintier_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/fast_cdcl_sat_solver
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/faster_walk_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/satisfiapilled
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/double_optimized
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/heuristics_gsat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/sat_optima
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/schnoing
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/sprint_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/manual_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/sat_opaa
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/hybrid_ultra_fast
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/need_for_speed
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/genetic_sat
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git satisfiability/sat_allocd
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/sackophone
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/branch_and_bound
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/sack_o_potatoes
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/knap_suck
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/optimism_dollop
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/knapmaxxing
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/quick_knap
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/ironhat_pete
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/knapsplorify
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/greedy
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/quantum_knapsack
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/dynamic
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/better_knapp
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/genetic
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/optimised_knapmax
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/tinhat_pete
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/needaknap
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/better_knapm
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/filter_knapmaxxing
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/over_knapmaxxed
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/dual_descent
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/better_in_twos
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/flat_dp
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/optimized_aa
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/overlodes_sack
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/ultra_fast_knapsack
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/lightning_knapsack
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/knap_zilla
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/knapheudp
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git knapsack/tabu_search
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/overloded
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/super_heaped
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/clarke_wright
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/simulated_annealing
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/aco_sbas
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/genetic_algorithm
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/dynamic_colonies
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/enhanced_annealing
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/lazier_cw
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/inbound
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/optimized_clarke
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/ant_colony
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/improv_clarke_wright
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/clarke_wright_opt
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/compact_gcw_turbo
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/fast_exit_cw_topt_ls
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/cw_two_opt_ls
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/compact_gcw
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/clarke_wright_super
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/cw_heuristic
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/limitless
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/fast_exit_clarke
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/quick_cw
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/adaptive_cluster
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/guided_clarke_wright
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/cw_super_gpu
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/clarke_wright_who
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vehicle_routing/filter_cw
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/fast_search_cuda
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/presort_msr
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/kd_tree
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/fasterer_search
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/gpu_manual_fastest
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/vector_finder_multi
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/manual_fast_search
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/bacalhau_gpu
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/hyperplanejane
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/cudabefaster
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/tree_times_a_lady
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/optimax_search
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/hyper_index
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/fast_search
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/cudamatata
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/optimal_ann
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/brute_force_bacalhau
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/optimax_gpu
git pull --no-edit --no-rebase https://github.com/tig-foundation/tig-monorepo.git vector_search/gpu_manual_fast        


algs=("ultra_sat_allocd optimized_sprint_sat satisfactory walk_sat mt_sat inbound walk_sat_adapt_tabu filter_sat fast_walk_sat fastest_walk_sat \
    dpll_backtracking i_cant_get_no sat_opaafast sprintier_sat fast_cdcl_sat_solver faster_walk_sat satisfiapilled double_optimized heuristics_gsat \
    sat_optima schnoing sprint_sat manual_sat sat_opaa hybrid_ultra_fast need_for_speed genetic_sat sat_allocd sackophone branch_and_bound sack_o_potatoes \
    knap_suck optimism_dollop knapmaxxing quick_knap ironhat_pete knapsplorify greedy quantum_knapsack dynamic better_knapp genetic optimised_knapmax \
    tinhat_pete needaknap better_knapm filter_knapmaxxing over_knapmaxxed dual_descent better_in_twos flat_dp optimized_aa overlodes_sack \
    ultra_fast_knapsack lightning_knapsack knap_zilla knapheudp tabu_search overloded super_heaped clarke_wright simulated_annealing aco_sbas \
    genetic_algorithm dynamic_colonies enhanced_annealing lazier_cw inbound optimized_clarke ant_colony improv_clarke_wright clarke_wright_opt \
    compact_gcw_turbo fast_exit_cw_topt_ls cw_two_opt_ls compact_gcw clarke_wright_super cw_heuristic limitless fast_exit_clarke quick_cw adaptive_cluster \
    guided_clarke_wright cw_super_gpu clarke_wright_who filter_cw fast_search_cuda presort_msr kd_tree fasterer_search gpu_manual_fastest \
    vector_finder_multi manual_fast_search bacalhau_gpu hyperplanejane cudabefaster tree_times_a_lady optimax_search hyper_index fast_search cudamatata \
    optimal_ann brute_force_bacalhau optimax_gpu gpu_manual_fast")
    
#the results of the test will be writen in tig-monorepo/test_errors.txt
echo "" > test_errors.txt
echo "Les 'resultats // results' 'se trouvent // will be written' dans le 'fichier - in file' test_errors.txt"
for ((i=0;i<105;i++));
do
    echo "Résultat pour l'algorithme :${i} - ${algs[${i}]}" >> test_errors.txt
    echo -e "${i}\n[100,100]\n1\n5\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: 5/,/-/p" >> test_errors.txt
done
echo "Utilisez le numéro de l'algorithme dans \
"wget https://raw.githubusercontent.com/joly534/tig-tester/main/algo_test_telegram.sh" \
ou "wget https://raw.githubusercontent.com/joly534/tig-tester/main/algo_test.sh" \
pour des tests approfondis" >> test_errors.txt
#####################################################
##   si tu ne veux pas utiliser de bot telegram    ##
##             supprimes cette partie              ##
##         et tout ce qui se trouve apres          ##
#####################################################
#####################################################
##     if you dont want to use telegram bot        ##
##             delete this part and                ##
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

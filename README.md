# tig-tester
algorithms tester for TIG blockchain 
<H1>TIG TESTER FOR LINUX</H1>

<h2> 1 - FIRST_TEST.SH</h2><br/>
<p>
  Ce premier test sert à faire ressortir les algorithmes qui provoquent des erreurs dans le benchmarker de TIG en fonction de votre matériel.<br/>
</p><br/>
<H3>a) Installer le script</H3><br/>

`cd /path/tig-monorepo`<br/><br/>
`wget https://github.com/joly534/tig-tester/blob/main/first_test.sh`<br/><br/>
`chmod +x fisrt_test.sh`<br/><br/>

<h3>b)Lancer le script</h3><br/>

`./first_test.sh`<br/><br/>

<h3>c)Lire les résultats</h3><br/>

`nano test_errors.txt`<br/><br/>

<h2> 2 - ALGO_TESTS</h2><br/>
<p>
  Ce test vient en complément du premier tester "first_test.sh".<br/>
  Il existe deux version de ce tester :
  <ul>
    <li>la version avec export du resultat dans un fichier texte</li> 
    <li>la version avec export du resultat dans un canal bot Telegram</li>  
  </ul>


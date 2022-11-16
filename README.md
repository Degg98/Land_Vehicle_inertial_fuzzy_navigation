# Land Vehicle Inertial Fuzzy Navigation


## Pipeline esecuzione:

1. Eseguire lo script *sensors_model.m*
2. Aprire in Simulink il file *Measure_collection_Vf_W.slx* ed eseguire la simulazione per 200sec con passo di simulazione fissato a 1e-2
3. Fare il load del file *.mat appena generato (oppure rieseguire script *sensors_model.m*)
4.  Aprire in Simulink il file *Fuzzy_and_EKF.slx* ed eseguire la simulazione per 200sec con passo di simulazione fissato a 1e-2
5. Eseguire script *confronto_dati.m* e *Plot_traiettoria.m* per la visualizzazione e l'analisi dei dati

## Per dubbi chiarimenti e correzioni contattare:

- Degiacomo Vincenzo: v.degiacomo@studenti.unipi.it
- Gori Pietro: p.gori3@studenti.unipi.it
- Iotti Francesco: f.iotti@studenti.unipi.it

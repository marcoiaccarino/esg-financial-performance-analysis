# Corporate ESG & Financial Performance Analysis

## Executive Summary:

Valutare il legame tra le iniziative di sostenibilità aziendale e la resilienza finanziaria è fondamentale per la consulenza strategica e il processo decisionale del top management. Utilizzando Excel, SQL e Power BI, questo progetto analizza un panel di 1.000 aziende globali lungo un arco temporale di 11 anni (11.000 osservazioni) per valutare come la maturità ESG impatti la redditività netta, le dinamiche di crescita e l'efficienza emissiva.

[In lavorazione: le raccomandazioni e gli insight di business principali verranno inseriti al completamento delle query SQL e della dashboard]

## Business Problem:

I team di Strategy ed ESG Advisory devono fornire al C-level evidenze empiriche per comprendere se gli investimenti in sostenibilità generino ritorni economici tangibili o costituiscano un mero costo di conformità normativa. Le domande di business chiave includono:
1. Le aziende con punteggi ESG elevati (Leader) ottengono margini operativi superiori rispetto a quelle ritardatarie (Laggard)?
2. Quali settori e aree geografiche presentano la maggiore intensità emissiva in rapporto ai ricavi generati?
3. In che misura gli standard ESG impattano sulla frequenza e l'entità degli esercizi in perdita finanziaria?

## Methodology:

1. Excel: Data cleaning, correzione dei formati numerici e dei delimitatori, gestione delle discontinuità storiche (imputazione del valore base GrowthRate 2015 a 0) e feature engineering per il calcolo di Net_Income, Carbon_Intensity ed ESG_Tier.

   * **Raw Dataset iniziale:**
   ![Raw Data](images/1-Raw%20data.png)

   * **Dataset strutturato e pulito:**
   ![Dataset Sistemato](images/2-Dataset%20sistemato.png)

   * **Feature Engineering (Net Income, Carbon Intensity, ESG Tier):**
     
   ![Feature Engineering](images/3-Operazioni%20effettuate%20dopo%20la%20pulizia.png)

2. SQL: Estrazione, aggregazione dei dati pluriennali, calcolo dei KPI analitici e segmentazione per settore e area geografica. [In corso]

3. Power BI: Data visualization, report design e dashboarding interattivo per la presentazione executive al management. [Pianificato]

## Skills:

Excel: Data cleaning, gestione formati e delimitatori, formule logiche nidificate (SE nidificati), feature engineering, KPI modeling
SQL: Aggregazioni, filtri (WHERE/HAVING), raggruppamenti (GROUP BY), istruzioni CASE [In corso]
Power BI: Data Visualization, UI/UX Dashboard Design, Interactive Filtering [Pianificato]

## Results & Business Recommendation:

[Sezione da completare con l'estrazione dei risultati finali da SQL e la costruzione della dashboard su Power BI]

## Next Steps:

1. Importare il dataset normalizzato all'interno dell'ambiente database relazionale.
2. Eseguire le query analitiche SQL su resilienza dei margini, intensità emissiva e trend storici.
3. Sviluppare la dashboard esecutiva su Power BI per l'analisi interattiva del C-level.

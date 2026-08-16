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

2. SQL (Google BigQuery): Importazione del data warehouse, validazione dell'integrità dei record ed esecuzione delle query analitiche aggregate con segmentazione per cluster ESG, settore industriale, area geografica e serie storica.

   * **Query 0: Data Integrity & Audit Validation**
     Verifica della completezza e consistenza del perimetro di analisi sui 1.000 identificativi aziendali lungo l'orizzonte temporale 2015–2025.
     ![Data Validation](images/4-SQL%20data%20validation.png)

   * **Query 1: ESG Tier vs. Performance Finanziaria e Rischio di Perdita**
     Analisi comparativa di marginalità media, crescita del fatturato, utile netto e frequenza percentuale degli esercizi in perdita per ciascun cluster ESG (Leader, Average, Laggard).
     ![ESG vs Performance](images/5-SQL%20query1%20esg%20vs%20performance.png)

   * **Query 2: Intensità Emissiva ed ESG per Settore e Regione**
     Valutazione dell'impatto di Carbon Intensity (rapporto emissioni/ricavi) e dello score ESG medio disaggregato per Industry e Region.
     ![Sector Emissions](images/6-SQL%20query2%20sector%20emissions.png)

   * **Query 3: Trend Storico Decennale (2015–2025)**
     Tracciamento dell'evoluzione annuale aggregata dello score ESG medio in relazione alla crescita di ricavi e utile netto.
     ![Historical Trends](images/7-SQL%20query3%20historical%20trends.png)

   * **Query 4: Benchmark Top 5 Leader Performers**
     Identificazione delle 5 aziende top di mercato nel cluster Leader che combinano massima redditività percentuale, solidità di utile e controllo delle emissioni.
     ![Top Performers](images/8-SQL%20query4%20top%20performers.png)

3. Power BI: Data visualization, report design e dashboarding interattivo per la presentazione executive al management. [Pianificato]

## Skills:

Excel: Data cleaning, gestione formati e delimitatori, formule logiche nidificate (SE nidificati), feature engineering, KPI modeling
SQL: SQL (Google BigQuery): Aggregazioni (AVG, COUNT, COUNTIF), filtri condizionali, raggruppamenti (GROUP BY), istruzioni logiche CASE, ordinamento e limiti (ORDER BY, LIMIT).
Power BI: Data Visualization, UI/UX Dashboard Design, Interactive Filtering [Pianificato]

## Results & Business Recommendation:

[Sezione da completare con l'estrazione dei risultati finali da SQL e la costruzione della dashboard su Power BI]

## Next Steps:

1. Connettere Power BI al dataset normalizzato e modellare le relazioni/misure DAX.

2. Sviluppare la dashboard esecutiva su Power BI con visualizzazioni interattive per il C-level.

3. Completare la sezione Results & Business Recommendations con i KPI finali.

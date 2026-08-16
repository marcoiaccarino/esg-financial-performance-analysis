/* ==============================================================================
   ESG & FINANCIAL PERFORMANCE ANALYSIS
   Database: Google BigQuery
   Dataset: esg_analytics.esg_data
   ============================================================================== */

-- QUERY 0: DATA INTEGRITY & AUDIT VALIDATION
SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CompanyID) AS total_companies,
    MIN(Year) AS start_year,
    MAX(Year) AS end_year,
    COUNT(DISTINCT ESG_Tier) AS distinct_tiers
FROM `esg_analytics.esg_data`;

-- QUERY 1: PROFITABILITY & FINANCIAL RISK BY ESG TIER
SELECT 
    ESG_Tier,
    COUNT(*) AS total_records,
    ROUND(AVG(ProfitMargin), 2) AS avg_profit_margin_pct,
    ROUND(AVG(GrowthRate), 2) AS avg_revenue_growth_pct,
    ROUND(AVG(Net_Income), 2) AS avg_net_income_mln,
    ROUND(100.0 * COUNTIF(Net_Income < 0) / COUNT(*), 2) AS loss_frequency_pct
FROM `esg_analytics.esg_data`
GROUP BY ESG_Tier
ORDER BY 
    CASE 
        WHEN ESG_Tier = 'Leader' THEN 1
        WHEN ESG_Tier = 'Average' THEN 2
        WHEN ESG_Tier = 'Laggard' THEN 3
    END;

-- QUERY 2: CARBON INTENSITY & ESG PERFORMANCE BY INDUSTRY & REGION
SELECT 
    Industry,
    Region,
    COUNT(DISTINCT CompanyID) AS num_companies,
    ROUND(AVG(ESG_Overall), 2) AS avg_esg_score,
    ROUND(AVG(CarbonEmissions), 2) AS avg_emissions_tons,
    ROUND(AVG(Carbon_Intensity), 2) AS avg_carbon_intensity
FROM `esg_analytics.esg_data`
GROUP BY Industry, Region
ORDER BY avg_carbon_intensity DESC;

-- QUERY 3: HISTORICAL TREND ANALYSIS (2015-2025)
SELECT 
    Year,
    ROUND(AVG(ESG_Overall), 2) AS avg_esg_score,
    ROUND(AVG(Revenue), 2) AS avg_revenue_mln,
    ROUND(AVG(Net_Income), 2) AS avg_net_income_mln,
    ROUND(AVG(CarbonEmissions), 2) AS avg_emissions_tons
FROM `esg_analytics.esg_data`
GROUP BY Year
ORDER BY Year ASC;

-- QUERY 4: TOP 5 LEADER COMPANIES BY MARGINALITY & ESG MATURITY
SELECT 
    CompanyName,
    Industry,
    Region,
    ROUND(AVG(ESG_Overall), 2) AS avg_esg_score,
    ROUND(AVG(ProfitMargin), 2) AS avg_profit_margin_pct,
    ROUND(AVG(Net_Income), 2) AS avg_net_income_mln,
    ROUND(AVG(Carbon_Intensity), 2) AS avg_carbon_intensity
FROM `esg_analytics.esg_data`
WHERE ESG_Tier = 'Leader'
GROUP BY CompanyName, Industry, Region
ORDER BY avg_profit_margin_pct DESC, avg_esg_score DESC
LIMIT 5;

# Metro System Performance Analysis: Insights and Trends

## Project Overview

This project analyzes global metro system performance data to uncover trends, patterns, and insights that can guide metro system operators, urban planners, and policymakers. Using descriptive statistics, predictive modeling, and data visualization, we conducted a comprehensive analysis of metro ridership, system lengths, and economic indicators. This repository contains the code, datasets, and visualizations for the project

## Project Structure

The project is organized into the following components:

**metro_data.csv**: The raw dataset containing metro system data (e.g., annual ridership, system length, GDP, population).

**MetroSystemAnalysis.py**: The main Python script performing all analyses and generating visualizations.

**Graphs**: High-resolution PNG files saved in the repository, showcasing visualizations of key insights (e.g., annual_ridership.png, metro_length_distribution.png).

## Key Insights

## 1. Annual Metro Ridership Over Time

Insight: The line graph illustrates a steady increase in ridership from 2010-2018, likely due to population growth or expanded metro services. After 2018, there's a sharp increase in ridership up to 2020, which could reflect heightened demand or improvements in service infrastructure. The sharp decline post-2020 aligns with the impact of the COVID-19 pandemic, which significantly reduced public transit. The uptick in ridership from 2021 indicates a recovery, as cities reopen and people return to commuting, although it may still be below pre-pandemic levels.

Visualization: This line plot of Annual Metro Ridership Over Time tracks ridership trends from 2010 to 2022.

![Image alt](https://github.com/dheerajshetty07/Worldwide-Metro-System-Performance-Analysis/blob/43d7dac54fb5e172b868f0cebe87e9f830d7ffb6/Graphs/Annual%20Metro%20Ridership%20over%20time.png)

## 2. Percentage of Countries with Metro Systems

Insight: Out of a total of 195 countries, 58 or 29.7% have metro systems, while 137 countries or 70.3% do not. The majority of countries globally, particularly those with smaller or less developed urban areas, do not yet have the infrastructure for a metro. This reflects the uneven distribution of mass transit options worldwide, as metro systems are limited to densely populated or economically advanced nations.

Visualization: This bar plot of Percentage of Countries with Metro Systems highlights the global distribution of metro systems.

![Image alt](https://github.com/dheerajshetty07/Worldwide-Metro-System-Performance-Analysis/blob/43d7dac54fb5e172b868f0cebe87e9f830d7ffb6/Graphs/Percentage%20of%20countries%20with%20and%20without%20metro%20systems.png)

## 3. Top 10 Metro Systems by Annual Ridership
   
Insight: The graph of the top 10 metro systems by annual ridership post-2018 highlights Shanghai as the busiest, with 2600 million riders in 2021. Tokyo follows closely, reaching 2550 million riders in 2019. The next two systems after Tokyo are also based in China, reflecting the dominance of Chinese metros in global urban transit, driven by rapid urbanization and large population centers.

Visualization: This bar plot of Top 10 Metro Systems by Annual Ridership showcases the busiest metro systems globally.

![Image alt](https://github.com/dheerajshetty07/Worldwide-Metro-System-Performance-Analysis/blob/43d7dac54fb5e172b868f0cebe87e9f830d7ffb6/Graphs/Top%2010%20Metro%20Systems%20by%20Annual%20Ridership.png)

## 4. Distribution of Metro System Lengths

Insight: Most countries have relatively short or no metro systems at all, with the peak frequency occurring near zero miles, underscoring that many countries still lack this infrastructure. A significant number of countries with metro systems have lengths between 50 and 150 miles, indicating smaller networks in many cities. Beyond 200 miles, we see a long tail representing a small number of cities with extensive networks.

Visualization: This histogram of Global Distribution of Metro System Lengths illustrates the distribution of metro system lengths worldwide.

![Image alt](https://github.com/dheerajshetty07/Worldwide-Metro-System-Performance-Analysis/blob/43d7dac54fb5e172b868f0cebe87e9f830d7ffb6/Graphs/Global%20Distribution%20of%20Metro%20System%20Lenghts.png)

## 5. Growth of Metro System Lengths Over Time

Insight: Linear growth by opening year suggests that metro systems have been consistently established over the decades, with the most significant growth occurring between 1980 and 2020. The growth by expansion year follows a more logarithmic pattern, with no substantial expansions until after 2000. The sudden and sharp rise in expansions after 2003 suggests that cities with existing metro systems began heavily investing in expanding their networks around this time, potentially due to rising population densities, economic growth, or policy shifts.

Visualization: This line plot of Growth of Metro System Lengths Over Time tracks the cumulative system length by opening and expansion years.

![Image alt](https://github.com/dheerajshetty07/Worldwide-Metro-System-Performance-Analysis/blob/43d7dac54fb5e172b868f0cebe87e9f830d7ffb6/Graphs/Growth%20of%20metro%20systems%20length%20over%20time.png)

## 6. Correlation Between Metro Ridership and Economic Indicators

Insight: Based on the correlation heat map, annual ridership has the highest correlation with GDP YoY and population. This suggests that economic growth and population size are significant drivers of metro ridership.

Visualization: This heatmap of Correlation Matrix of Metro Ridership and Economic Indicators reveals the relationships between ridership and economic factors.

![Image alt](https://github.com/dheerajshetty07/Worldwide-Metro-System-Performance-Analysis/blob/43d7dac54fb5e172b868f0cebe87e9f830d7ffb6/Graphs/Correlation%20Matrix.png)

## 7. Relationship Between System Length and Annual Ridership

The scatter plot illustrates the relationship between the length of metro systems (in miles) and their annual ridership. The Pearson Correlation Coefficient of 0.23 indicates a weak positive correlation, suggesting that while longer metro systems tend to have higher ridership, the relationship is not strongly linear. The p-value of 0.0013 confirms that this correlation is statistically significant, meaning that system length does have some influence on ridership, though other factors (e.g., population density, economic activity) likely play a more substantial role.

Visualization: This scatter plot of Relationship Between System Length and Annual Ridership shows the distribution of ridership across different metro system lengths, with a trend line indicating the weak positive correlation.

![Image alt](https://github.com/dheerajshetty07/Worldwide-Metro-System-Performance-Analysis/blob/85f5399e85b161283436eb44656e694d86f7a2a7/Graphs/Relationship%20between%20system%20lenght%20and%20annual%20ridership.png)

## 8. Forecasted Metro Ridership
Insight: The forecasted ridership shows a steady increase from 2021 onwards, indicating a recovery from the COVID-19 pandemic and continued growth in metro usage.

Visualization: This line plot of Annual Metro Ridership Over Time with Forecast tracks historical and forecasted ridership from 2010 to 2030.

![Image alt](https://github.com/dheerajshetty07/Worldwide-Metro-System-Performance-Analysis/blob/85f5399e85b161283436eb44656e694d86f7a2a7/Graphs/Relationship%20Between%20System%20Length%20and%20Annual%20Ridership.png)

## Results and Insights

### Key findings from the analysis include:

**Ridership Trends:** Metro ridership has steadily increased over the years, with a sharp decline during the COVID-19 pandemic and a recovery starting in 2021.

**Global Distribution:** Only 29.7% of countries have metro systems, with most located in densely populated or economically advanced nations.

**Top Metro Systems:** Shanghai and Tokyo are the busiest metro systems globally, with Chinese metros dominating the top 10.

**System Lengths:** Most metro systems are relatively short, with only a few cities having extensive networks.

**Economic Drivers:** GDP growth and population size are key drivers of metro ridership.

**Forecasting:** The regression model provides a reliable method for predicting future ridership based on economic and demographic trends.

## Repository Structure
```
Metro-System-Performance-Analysis/
├── Dataset/                 # Contains the raw dataset (metro_data.csv)
├── Graphs/                  # Visualizations generated during analysis (e.g., annual_ridership.png, metro_length_distribution.png)
├── Presentation/            # Final Powerpoint Presentation
├── Scripts/                 # Python scripts for analysis and visualizations (e.g., MetroSystemAnalysis.py)
└── README.md                # Project overview and instructions
```

**Requirements**
Python: Version 3.8 or higher (recommended).
```
**Required libraries:**

- pandas

- matplotlib

- seaborn

- scikit-learn

```

## Usage

Clone the repository:

```bash
git clone https://github.com/dheerajshetty07/Metro-System-Performance-Analysis.git
```

For detailed insights, refer to the printed output and visualizations in the 'graphs/' directory.

**Data Source:** The data used in this project is sourced from an online platform and is for educational purposes only. The GDP year is assumed to be 2020.

**Contributions:** Contributions are welcome! Feel free to submit a pull request or open an issue for suggestions or improvements.



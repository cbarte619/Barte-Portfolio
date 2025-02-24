# Walmart Sales Analysis  

## Introduction  
This project analyzes **Walmart sales data** to identify key factors influencing **store revenue**. Using various machine learning models, the goal is to pinpoint the most significant variables affecting **weekly sales** and provide insights for better forecasting and strategic decision-making.  

## Dataset  
- **Source**: Kaggle  
- **Entries**: 6,435  
- **Timeframe**: 2 years  
- **Key Variables**: Temperature, Fuel Price, CPI, Unemployment, Holiday Flag  

## Analysis & Findings  
### **Milestone 1: Data Exploration**  
- Temperature affects sales, with lower temperatures yielding higher revenue.  
- Higher fuel prices correlate with increased weekly sales.  
- CPI and unemployment show negative impacts on sales.  

### **Milestone 2: Data Cleaning & Processing**  
- Reformatted date into quarters for flexible analysis.  
- Converted store IDs into dummy variables (later removed).  
- Ensured dataset accuracy with **zero null values**.  

### **Milestone 3: Model Development**  
- Initial **Linear Regression & Decision Tree** models performed poorly (low R², high MSE).  
- **Feature engineering** improved accuracy significantly.  
- Key coefficient insights:  
  - **Temperature (-1306.53)**: Higher temperatures decrease sales.  
  - **Fuel Price (+40,863.00)**: Higher fuel prices positively impact sales.  
  - **CPI (-1427.12)**: Inflation reduces profit.  
  - **Unemployment (-44,783.38)**: Higher unemployment leads to lower revenue.  

## Next Steps  
- Explore alternative models for improved accuracy.  
- Incorporate additional factors such as **store location, promotions, and competitor pricing**.  
- Use external datasets to enhance predictive power.  

## Conclusion  
While the model improved after adjustments, further refinements are necessary before deployment. This project highlights the **importance of selecting high-quality datasets** and refining models through feature engineering. Future iterations will aim for greater precision in predicting **Walmart’s optimal store conditions**.  

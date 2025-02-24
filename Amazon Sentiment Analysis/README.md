# Customer Sentiment Analysis for Amazon Reviews

## Business Problem
This project aims to classify Amazon product reviews as **positive**, **negative**, or **neutral** using **Natural Language Processing (NLP)** and **Machine Learning (ML)** techniques. The goal is to provide businesses with valuable insights into customer sentiment, allowing them to make data-driven decisions for product improvements, customer service strategies, and enhancing overall customer experience.

## Background/History
Sentiment analysis has evolved from the ancient concept of 'Doxa' (public opinion) to a modern computational discipline. In the digital age, it has become an essential tool for businesses and governments to analyze vast amounts of online interactions. Initially, sentiment analysis used basic "bag-of-words" models, but today, advanced ML techniques can understand and quantify emotions in digital dialogues, providing powerful insights.

## Dataset
- **Source**: Kaggle  
- **Entries**: 34,686,770 Amazon reviews  
- **Users**: 6,643,669  
- **Products**: 2,441,053  
- **Key Attributes**: Review star rating (1-5), review text, review time, and helpfulness ratings  
- **Format**: CSV  

## Methods
The model classifies sentiments based on Amazon reviews using a combination of **rule-based** and **machine learning approaches**. Sentiment labels are assigned as:
- **Negative**: 1-2 star ratings  
- **Neutral**: 3 star ratings  
- **Positive**: 4-5 star ratings  

In addition to star ratings, the text of the reviews will also be analyzed to improve classification accuracy. A **Logistic Regression** model can be trained on labeled data to enhance the system's performance.

## Data Cleaning & Analysis
1. **Data Cleaning**: 
   - Checked for missing values (none found).
   - Visualized data distributions and explored patterns.
   
2. **Visualizations**:
   - **Sentiment Distribution**: The dataset is heavily skewed toward positive reviews, with a small proportion of negative or neutral reviews.
   - **Review Length**: Most reviews are short (around 250 characters).
   - **Word Cloud**: Reveals that many reviews are for **technological** products.
   - **Helpfulness Distribution**: Most "helpful" reviews are extreme ratings (1 or 5 stars), not neutral reviews.

## Sentiment Classification
- **Star Ratings to Sentiment Mapping**: 
   - Sentiment labels are based on the star rating system.
   - Further analysis will be conducted on review text to refine the sentiment classification.

## Conclusion
This sentiment analysis model provides valuable insights into customer feedback, enabling businesses to better understand customer opinions. By analyzing and classifying sentiments, businesses can make proactive decisions for product improvements, marketing strategies, and customer service.

## Assumptions
- Star ratings are mapped to sentiment labels (1-2 = Negative, 3 = Neutral, 4-5 = Positive).
- The model assumes that star ratings accurately reflect customer sentiment, although mismatches between ratings and review text may exist.

## Limitations/Challenges
1. **Data Imbalance**: The dataset is highly skewed toward positive reviews, which may introduce bias in sentiment classification.
2. **Subjectivity**: Some reviews may have low ratings but still express positive sentiment in text, or vice versa.

## Future Uses/Additional Applications
- **Recurring Issues**: Businesses can identify common features or issues mentioned in negative reviews to make improvements.
- **Customer Support**: Sentiment analysis can help prioritize complaints and identify areas of improvement in customer service.
- **Real-Time Feedback**: Businesses can use sentiment analysis to respond quickly to trends in customer sentiment.

## Recommendations
1. **Focus on Helpful Reviews**: Given that the most helpful reviews are extreme, it’s important to prioritize these in decision-making.
2. **Marketing Strategies**: Positive reviews can be leveraged for marketing purposes, such as social media promotions or website content.
3. **Monitor Sentiment Trends**: If sentiment analysis shows a decline over time, businesses should investigate the causes and take proactive actions.

## Implementation Plan
- **User Interface**: Develop a **dashboard** where users can input reviews and receive sentiment analysis in real-time. This could help businesses make immediate data-driven decisions.
- **Model Deployment**: Integrate the model into customer support platforms or review sections of websites for automatic sentiment classification.

## Ethical Assessment
1. **Privacy**: The dataset will be anonymized to mitigate privacy risks.
2. **Misinterpretation**: Models may misclassify sarcasm or complex emotions in reviews. Businesses should improve model fairness and transparency to avoid negative impacts on customer experience.
3. **Ethical Use**: Sentiment analysis should be used to enhance customer satisfaction and support, not manipulate or exploit emotional vulnerabilities.

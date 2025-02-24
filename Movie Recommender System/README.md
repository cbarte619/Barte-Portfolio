# Movie Recommender System  

## Introduction  
This project is a **movie recommender system** that suggests movies based on user preferences. It uses **cosine similarity** to measure the similarity between movies based on their feature vectors. By comparing the similarity scores, the system recommends movies that are most closely related to a given input movie.  

## How It Works  
1. **Data Processing**: The dataset consists of movie titles, genres, descriptions, and other relevant metadata.  
2. **Feature Extraction**: Text-based attributes (e.g., movie descriptions, genres) are transformed into numerical vectors using techniques like TF-IDF or CountVectorizer.  
3. **Cosine Similarity Calculation**: The similarity between movies is computed using cosine similarity, which measures the angle between vector representations.  
4. **Recommendation Generation**: Given a user-selected movie, the system retrieves and ranks the most similar movies based on their cosine similarity scores.  

## Technologies Used  
- **Python**  
- **Pandas** – For data manipulation  
- **Scikit-learn** – For vectorization (TF-IDF, CountVectorizer) and cosine similarity computation  
- **NumPy** – For mathematical operations  

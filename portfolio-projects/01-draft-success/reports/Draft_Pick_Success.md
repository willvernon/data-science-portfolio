# Draft Pick Success Prediciton

I think its best to look at position based success rate which type of player is best to be drafted in each round. The first 1 & 2 rounds are probably the easiest in terms of knowing if a guy will make it in the NFL there are a hand full of almost sure things like OL,DL,RB, and Secondary. But what positions do better than others  

Features
- Position
- Accolades

- Round based success rate
- Round + Position based

Predict the long-term success of NFL draft picks based on their college performance, combine metrics, and physical attributes. Success can be measured by outcomes like career Approximate Value (AV, a holistic stat from Pro-Football-Reference), Pro Bowl selections, or games started. Use classification (e.g., "bust," "average," "star") or regression (e.g., predicted AV after 5 years) models. This involves handling imbalanced data (most picks aren't stars) and interpreting results to uncover insights, like which college conferences produce the best linemen.

## Data Gathering
- College data: Try College Football Data API (collegefootballdata.com) for player stats, recruiting rankings and game logs
- NFL draft and outcomes: Kaggle has a "NFL Draft 1985-2023" dataset or Pro-Football-Reference has a draft pages.
- 
Collect using API and python scripts

### Data Preprocessing
- Cleaning: Check for wrong or blank data, remove any unneeded stats
- Feature Engineering: Create new variables like a "production score"(e.g., weighted college states adjusted for competition level), "athleticism index" (from combine drills), or "Age at Draft"
- EDA: Look for visual correlations or linear relationships/patterns.

### Modeling
- Can try to logistic regression for classification, clustering, linear regression, or XGBoost
- Pipeline Steps: Split data (80/20 train/test, stratified by position), use cross-validation, tune hyperparameters with GridSearch CV. Handle class imballance with SMOTE or undersampling.
- Evaluation: Metrics like F1-Score ( for imbalanced classes), RMSE for regression, or confusion matrices. Compare models via ROC curves.

### Analysis and Insights
- Interpretation: Use SHAP or feature importance to explain predictions—e.g., "College sack rate is 3x more predictive for edge rushers than 40-yard dash."
- Real-World Extensions: Simulate "what-if" scenarios for the 2025 draft class, discuss limitations (e.g., unmodeled factors like coaching), and suggest applications like a dashboard for scouts.
- Challenges and Enhancements: Address overfitting with regularization; add text mining from scouting reports if you expand scope.



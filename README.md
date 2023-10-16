# A variable selection model for heart disease
### Data Source
Utilized a total of 319,795 survey data from the Centers for Disease Control and Prevention (CDC) in the United States over the past few years for the study.

### Data Selection and Analysis
Employed stepwise regression and Lasso regression to respectively select 7 and 11 variables for inclusion in the Logistic regression analysis model, comparing it to the full-variable (16 variables) Logistic regression model.

### Addressing Data Imbalance
Mitigated data imbalance by adjusting the threshold.

### Model Evaluation
Subsequently, assessed the three models using three metrics: AUC, R Squared, and Brier Score, and found that the performance of the Lasso Logistic regression model (AUC=0.853, R Squared=0.262, Brier Score=0.062) was superior to the other two models.

### Ten-Fold Cross-Validation
The model achieved a value of 0.0071 through ten-fold cross-validation, with a threshold of 0.7545.

### Final Included Variables
The included variables were smoking, stroke, recent frequency of feeling unwell in the last 30 days, walking difficulty, gender, age, diabetes, self-health assessment, asthma, kidney disease, and skin cancer.

### Conclusion
Visualized the results using column charts and forest plots and concluded that age, stroke, diabetes, and kidney disease are relatively significant risk factors for heart disease.

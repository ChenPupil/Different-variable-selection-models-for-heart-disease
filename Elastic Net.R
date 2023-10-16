# Parameter Search
alpha_seq <- seq(0, 1, by = 0.1)
# 10-fold Cross-Validation
foldid <- sample(1:10, nrow(x), replace = TRUE)
# step 1
cv_model_ls <-
  alpha_seq %>%
  set_names(., .) %>% 
  map(function(alpha){
    cv.model <- cv.glmnet(data[,-1], data[,1], family = "binomial", foldid = foldid, alpha = alpha)
    list(
      cvm = cv.model$cvm,
      cvsd = cv.model$cvsd,
      lambda = cv.model$lambda,
      index_min = cv.model$index["min",1],
      index_1se = cv.model$index["1se",1]
    )
  }
  )
# step2
cv_model_ls  %>%
  map2(names(.), function(model1, alpha){
    labmda_min <- model$lambda[model$index_min] %>% log
    labmda_1se <- model$lambda[model$index_1se] %>% log
    
    data.frame(x = log(model$lambda),
               y = model$cvm,
               std = model$cvsd) %>%
      ggplot(aes(x = x, y = y)) +
      geom_point(color = "Red") +
      geom_errorbar(aes(ymin = y - std, ymax = y + std), color = "gray") +
      geom_vline(xintercept = c(labmda_min, labmda_1se) , linetype = 3) + 
      labs(x = expression(paste("Log(", lambda, ")")), y = "Binomial Deviance") +
      theme_bw() +
      ggtitle(paste0("alpha: ", alpha ))
  }) %>%
  wrap_plots(
    ncol = 4
  )

Presentation
========================================================
author: Rick van Zijl
date: 1-May-2018
autosize: true

Introduction
========================================================

Use the shiny app to create your linear prediction based on the swiss data set.

- Choose your dependent variable (Y)
- Choose two independent variables.

Slide With Example Code
========================================================


```r
summary(lm(Fertility ~ Agriculture , data = swiss))
```

```

Call:
lm(formula = Fertility ~ Agriculture, data = swiss)

Residuals:
     Min       1Q   Median       3Q      Max 
-25.5374  -7.8685  -0.6362   9.0464  24.4858 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 60.30438    4.25126  14.185   <2e-16 ***
Agriculture  0.19420    0.07671   2.532   0.0149 *  
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 11.82 on 45 degrees of freedom
Multiple R-squared:  0.1247,	Adjusted R-squared:  0.1052 
F-statistic: 6.409 on 1 and 45 DF,  p-value: 0.01492
```

Slide With the Plot generated in Shiny
========================================================

![plot of chunk unnamed-chunk-2](Presentation-figure/unnamed-chunk-2-1.png)

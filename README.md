# MechaCar_Statistical_Analysis
Please see below for findings from the first experiment, where we performed multiple linear progression to observe the effect of multiple variables on MPG.
![VariablesEffectOnMPG](VariablesEffectOnMpg.png)
Two variables have an affect on MPG: 
- Vehicle_length
- Ground_clearance

These two independent variables are statistically significant due to their low p-values. They provided a low probability of random variance, meaning they are predictable in their effect on the dependent variable, MPG.

Check out the slopes of each variable and mpg below:
![MultipleVariablesMPGPlot](MultipleVariablesMPGPlot.png)
None of the slopes are exactly zero, but spoiler_angle does come pretty close.

Our data does fit the line fairly well, as we can see from our R-squared or correlation coefficient: Around 0.7 means this model fits about 70 percent of our data. The p-value being extremely small also bodes well, as that signals that our findings are in some way statistically significant. More analysis needed to really dig into those two variables listed above.


## Summary Statistics on Suspension Coils
Please see below for findings from the second experiment, where we calculated statistics on the PSI column, then performed the same statistics grouped by Manufacturing Lot.

#### Total Summary
![totalSummary](total_summary.png)

#### Lot Summary
![lotSummary](lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. If we look at the first figure, we see that overall we are not meeting that goal. However when we separate results by Manufacturing Lot, then we see that only one Lot is actually breaking this rule - Lot3. This suggests that we should look into what's going on at Lot3, but that Lots 1 and 2 are fine.


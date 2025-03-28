#graph2

ggplot(temperature_long, aes(x = Month, y = as.factor(Year), fill = Temperature_Anomaly)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(low = "blue", mid = "white", high = "red", midpoint = 0) +
  coord_polar(start = 0) +
  labs(title = "Yearly Temperature Anomalies (Radial Heatmap)",
       x = "Month",
       y = "Year",
       fill = "Anomaly (°C)") +
  theme_minimal()

#Create a Polar Plot (Circular Plot)
ggplot(temperature_long, aes(x = Month, y = Temperature_Anomaly, group = Year, color = Year)) +
  geom_point(size = 2, alpha = 0.7) +  # Scatter plot for each month/year
  geom_line(alpha = 0.5) +  # Connect points for each year
  scale_color_viridis_c(option = "turbo") +  # Nice color gradient for years
  coord_polar(start = 0) +  # Convert to circular plot
  labs(title = "Yearly Temperature Anomalies (Circular View)",
       x = "Month",
       y = "Temperature Anomaly (°C)",
       color = "Year") +
  theme_minimal()

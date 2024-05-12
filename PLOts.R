price=c(52.00,54.75,57.50,57.50,59.75,62.50,64.75,67.25,67.50,69.75,70.00,75.50,77.50,78.00,81.25,82.50,86.25,87.50,88.00,92.00)
FloorArea=c(1225,1230,1200,1000,1420,1450,1380,1510,1400,1550,1720,1700,1660,1800,1830,1790,2010,2000,2100,2240)
Rooms=c(3,3,3,2,4,3,4,4,5,6,6,5,6,7,6,6,6,6,8,7)
Age=c(6.2,7.5,4.2,4.8,1.9,5.2,6.5,9.2,0.0,5.7,7.3,4.5,6.8,0.7,5.6,2.3,6.7,3.4,5.6,3.4)
CentralHeating=c("Yes","No","No","No","Yes","Yes","No","No","No","No","Yes","No","Yes","Yes","Yes","No","Yes","No","Yes","Yes")
house=data.frame(price,FloorArea,Rooms,Age,CentralHeating)
house
mean(price)
mean(FloorArea)
mean(Rooms)
mean(Age)
sd(price)
sd(FloorArea)
sd(Rooms)
sd(Age)
median(price)
median(FloorArea)
median(Rooms)
median(Age)
tablech=table(house$CentralHeating)
tablech
plot(house$price,house$FloorArea,type="l",main="price vs floors",xlab="price",ylab="floor",col="blue")
plot(house$price,house$Age,type="l",main="price vs age",xlab="price",ylab="age",col="red")
plot(house$price,house$Rooms,type="l",main="price vs rooms",xlab="price",ylab="room",col="green")
hist(house$price,main="prices",xlab="price",col="green")
hist(house$FloorArea,main="floorarea",xlab="floorarea",col="red")
hist(house$Age,main="Age",xlab="age",col="orange")
boxplot(house$price,main="price boxplot",ylab="prices",col="green")
boxplot(house$FloorArea,main="floorarea boxplot",ylab="floorarea",col="red")
boxplot(house$Age,main="age boxplot",ylab="age",col="orange")

# Set up a multi-panel plot using `par`
par(mfrow = c(3, 3))  # 3 rows, 3 columns for 9 plots

# Plot 1: Scatter plot of Price vs FloorArea
plot(house$price, house$FloorArea, main = "Price vs FloorArea", xlab = "Price", ylab = "FloorArea", col = "blue", type = "l")

# Plot 2: Scatter plot of Price vs Age
plot(house$price, house$Age, main = "Price vs Age", xlab = "Price", ylab = "Age", col = "red", type = "l")

# Plot 3: Scatter plot of Price vs Rooms
plot(house$price, house$Rooms, main = "Price vs Rooms", xlab = "Price", ylab = "Rooms", col = "green", type = "l")

# Plot 4: Histogram of Price
hist(house$price, main = "Histogram of Prices", xlab = "Price", col = "green")

# Plot 5: Histogram of FloorArea
hist(house$FloorArea, main = "Histogram of FloorArea", xlab = "FloorArea", col = "red")

# Plot 6: Histogram of Age
hist(house$Age, main = "Histogram of Age", xlab = "Age", col = "orange")

# Plot 7: Boxplot of Price
boxplot(house$price, main = "Boxplot of Prices", ylab = "Price", col = "green")

# Plot 8: Boxplot of FloorArea
boxplot(house$FloorArea, main = "Boxplot of FloorArea", ylab = "FloorArea", col = "red")

# Plot 9: Boxplot of Age
boxplot(house$Age, main = "Boxplot of Age", ylab = "Age", col = "orange")

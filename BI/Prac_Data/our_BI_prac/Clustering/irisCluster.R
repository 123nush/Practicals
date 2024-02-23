newiris <-iris
#print(iris)
newiris$Species <- NULL
kc <- kmeans(newiris,3)
print(kc)
print(kc$cluster)
table(iris$Species,kc$cluster)
cluster_colors <- c("red", "blue", "green")
plot(newiris[c("Sepal.Length","Sepal.Width")],col = cluster_colors[kc$cluster])

points(kc$centers[,c("Sepal.Length","Sepal.Width")],col=1:3,pch=8,cex=2)
dev.off()
plot(newiris[c("Sepal.Length","Sepal.Width")],col = kc$cluster)
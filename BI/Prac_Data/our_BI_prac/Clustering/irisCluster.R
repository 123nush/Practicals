newiris <-iris
print(iris)
newiris$Species <- NULL
kc <- kmeans(newiris,3)
print(kc)
print(kc$cluster)
table(iris$Species,kc$cluster)
cluster_colors <- c("red", "blue", "green","yellow")
print(kc$centers)
plot(newiris[c("Petal.Length","Petal.Width")],col = kc$cluster)

#points(kc$centers[,c("Petal.Length","Petal.Width")],col=1:3,pch=8,cex=2)
dev.off()
plot(newiris[c("Petal.Length","Petal.Width")],col = kc$cluster)
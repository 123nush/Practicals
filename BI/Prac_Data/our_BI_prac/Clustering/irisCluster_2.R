newiris <-iris
newiris$Species <- NULL
kc <- kmeans(newiris,3)
print(kc$cluster)
table(iris$Species,kc$cluster)
cluster_colors <- c("blue", "green","yellow")
print( cluster_colors[kc$cluster])
plot(newiris[c("Petal.Length","Petal.Width")],col = cluster_colors[kc$cluster],pch=7)
points(kc$centers[,c("Petal.Length","Petal.Width")],col=1:3,pch=2,cex=2)
#dev.off()
#plot(newiris[c("Petal.Length","Petal.Width")],col = kc$cluster)
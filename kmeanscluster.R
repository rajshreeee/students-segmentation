cluster <- read.csv("~/dlr/cluster.csv")
View (cluster)
cluster1 = cluster
cluster1$X <- NULL
clusterstd <- scale(cluster1)#mean=0 and sd=1
View(clusterstd)
results <-kmeans(na.omit(clusterstd),2) 
results
results$size

results$cluster
table(cluster$X, results$cluster)
plot(cluster[c("Scores","Time" )], col = results$cluster)


result <- kmeans(clusterstd, centers=3)
result$tot.withinss

library(cluster)
sc <- silhouette(result$cluster, daisy(clusterstd))
sum(summary(sc)$clus.avg.widths*summary(sc)$clus.sizes)/sum(summary(sc)$clus.sizes)

result <- kmeans(clusterstd, centers=3)
result$tot.withinss


result <- kmeans(clusterstd, centers=2)
result$tot.withinss
sc <- silhouette(result$cluster, daisy(clusterstd))
sum(summary(sc)$clus.avg.widths*summary(sc)$clus.sizes)/sum(summary(sc)$clus.sizes)


result <- kmeans(clusterstd, centers=4)
result$tot.withinss
sc <- silhouette(result$cluster, daisy(clusterstd))
sum(summary(sc)$clus.avg.widths*summary(sc)$clus.sizes)/sum(summary(sc)$clus.sizes)


## InstalledPackages

ip <- as.data.frame(installed.packages(lib.loc = NULL, priority = NULL, noCache = FALSE, fields = NULL, subarch = .Platform$r_arch))
write.csv(ip, file = "data/installed.csv")

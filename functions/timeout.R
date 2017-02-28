timeout <- function(sec){
  p1 <- proc.time()
  Sys.sleep(sec)
  proc.time()-p1
}
step <- function(m){
  side <- dim(m)[1]
  
  sh <- rep(0, side)
  sh_4 <- rep(0, side-1)
  Ni <- list(
    cbind(sh, m[,-side]),
    cbind(m[,-1], sh),
    rbind(sh, m[-side, ]),
    rbind(m[-1,], sh),
    
    cbind(sh, rbind(sh_4, m[-side, -side])),
    cbind(rbind(m[-1, -1], sh_4), sh),
    cbind(rbind(sh_4, m[-side, -side]), sh),
    cbind(sh, rbind(m[-1, -1], sh_4))
  )
  Ni_sum <- Reduce('+', Ni)
  
  m2 <- m
  
  m2[m==0 & Ni_sum==3] <- 1
  m2[m==1 & Ni_sum<2] <- 0
  m2[m==1 & Ni_sum>3] <- 0
  
  return(m2)
}



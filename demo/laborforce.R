data(lfstate)
periodlength<-30;
attach(lfstate[order(lfstate$ST,lfstate$Year,lfstate$month),-(1:(53*(288-periodlength)))])
vardir<-diag(StdCPSUn^2)
sae2::eblupDyn(CPSun~CPSpop+Cntwoer,
              D=53,
              T=288,
              vardir)

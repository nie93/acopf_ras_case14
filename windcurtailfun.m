function f = windcurtailfun(x,mpc)
    numOfBuses = size(mpc.bus,1);
    windBusNums = find(mpc.bus(:,2)==2);
    
    windfactor = x(1:numOfBuses);
    pw = x(windBusNums);
    
    f = - sum(pw);    
end
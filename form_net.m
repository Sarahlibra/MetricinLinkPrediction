function Adj = form_net(data, weight, direction)

Adj = spconvert(data);
nodenum = length(Adj);
Adj(nodenum,nodenum) = 0;
if weight == 0 
    Adj = spones(Adj);
else
    % Normalize weight
%     t = 1 ./ (1+exp(-full(Adj)));  
%     t = full(Adj);
%     tmp = spones(Adj) .* t;
%     Adj =  exp(-1./tmp); 
    Adj = Adj;
end

if direction == 0
    Adj = Adj + Adj';
    if weight == 0
        Adj = spones(Adj);
    end
    Adj = Adj-diag(diag(Adj));
end


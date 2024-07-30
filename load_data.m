function [Adj] = load_data(choice, weight ,direction)

if choice == 1
    disp('Working with C.elegans dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Celegans_w.txt');
   
    Adj = form_net(data, weight, direction);
    
elseif choice == 2
    disp('Working with gramwet dataset ...');
    RAD = load('../dataset/gramwet.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
%     Adj = form_net(gramwet, weight, direction);
    
elseif choice == 3 % Hamster full
    disp('Working with hamster dataset ...');
    load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/hamster.txt');
    hamster(:,3) = 1;
    Adj = form_net(hamster, weight, direction);    
    
elseif choice == 4
    disp('Working with USAir dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/USAir1.txt');
    %data(:,3) = 1;
    maxN = max(data(:,1));
    id = find(data(:,1) == 0);
    data(id,1) = maxN+1;
    
    id = find(data(:,2) == 0);
    data(id,2) = maxN+1;

    Adj = form_net(data, weight, direction);   
    
elseif choice == 5
    disp('Working with Power Grid dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Power.txt');
    data(:,3) = 1;
    maxN = max(data(:,1));
    id = find(data(:,1) == 0);
    data(id,1) = maxN+1;
    id = find(data(:,2) == 0);
    data(id,2) = maxN+1;
    
    Adj = form_net(data, weight, direction);   
    
elseif choice == 6 
    
    disp('Working with Yeast dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Yeast.txt');
    data(:,3) = 1;
    maxN = max(data(:,1));
    id = find(data(:,1) == 0);
    data(id,1) = maxN+1;
    
    id = find(data(:,2) == 0);
    data(id,2) = maxN+1;
    
    Adj = form_net(data, weight, direction);   

elseif choice == 7
    % This is the software class dependency network of the JDK 1.6.0.7 framework. 
    % The network is directed. Nodes represent classes. 
    % An edge between them indicates that there exists a dependency between two classes. 
    % As there may be multiple references between classes the network has multiple edges.
    disp('Working with jdk_dependency data ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/jdk_dependency.txt');
    data(:,3) = 1;
    Adj = form_net(data, weight, direction);   
   
elseif choice == 8
    % This bipartite network consists of 100,000 user?ovie ratings 
    % from http://movielens.umn.edu/. Left nodes are users and right nodes are movies. 
    % An edge between a user and a movie represents a rating of the movie by the user.
    % http://konect.uni-koblenz.de/networks/movielens-100k_rating
    disp('Working with movie100k data ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/movie100k.txt');
    data(:,3) = 1;
    Adj = form_net(data, weight, direction);   
    
elseif choice == 9
    % This is the trust network of Advogato. Advogato is an online community 
    % platform for developers of free software launched in 1999. 
    % Nodes are users of Advogato and the directed edges represent trust relationships. 
    % A trust link is called a "certification" on Advogato, and three different 
    % levels of certifications are possible on Advogato, corresponding to 
    % three different edge weights: certifications as apprentice (0.6), 
    % journeyer (0.8) and master (1.0). A user without any trust certificate is called an observer. 
    %It is possible to trust oneself on Advogato, and therefore the network contains loops.
    disp('Working with advogato data ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/advogato.txt');
    data(:,3) = 1;
    Adj = form_net(data, weight, direction);   
    
elseif choice == 10
    % This directed networks contains Facebook user?ser friendships. 
    % A node represents a user. An edge indicates that the user represented 
    % by the left node is a friend of the user represented by the right node.
    % http://konect.uni-koblenz.de/networks/ego-facebook
    % Julian McAuley and Jure Leskovec. Learning to discover social circles in ego networks.
    % In Advances in Neural Information Processing Systems, pages 548--556. 2012.

    disp('Working with facebook nips data ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/facebook_nips.txt');
    data(:,3) = 1;
    Adj = form_net(data, weight, direction);   
    
elseif choice == 11
    disp('Working with baydry dataset ...');
    RAD=load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/baydry.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
    
elseif choice == 12
    disp('Working with Small and Griffith dataset ...');
    load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/SmaGri.txt');
    
    Adj = form_net(SmaGri, weight, direction);
    
elseif choice == 13
    disp('Working with SciMet dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/SciMet_new.txt');
    data(:,3) = 1;
    maxN = max(data(:,1));
    id = find(data(:,1) == 0);
    data(id,1) = maxN+1;
    id = find(data(:,2) == 0);
    data(id,2) = maxN+1;
    Adj = form_net(data, weight, direction);
    
elseif choice == 14
    disp('Working with Public Blogs dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/PoliticalBlogs.txt');
    data(:,3) = 1;
    Adj = form_net(data, weight, direction);
    
elseif choice == 15 
    disp('Working with FWM dataset ...');
    load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/mangwet.txt');
    %chesapeake(:,3) = 1;
    Adj = form_net(mangwet, weight, direction);
    
elseif choice == 16
    disp('Working with Email dataset ...');
    load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/email.txt');
   
    Adj = form_net(email, weight, direction);
    
elseif choice == 17 % World trade
    disp('Working with world_trade dataset ...');
    load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/world_trade.txt');
    world_trade(:,3) = 1;
    Adj = form_net(world_trade, weight, direction);
   
elseif choice == 18
    disp('Working with Router dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Router.txt');
    maxN = max(data(:,1));
    id = find(data(:,1) == 0);
    data(id,1) = maxN+1;
    id = find(data(:,2) == 0);
    data(id,2) = maxN+1;
    data(:,3) = 1;
    Adj = form_net(data, weight, direction);
    
elseif choice == 19
    disp('Working with Yeast dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Yeast.txt');
    data(:,3) = 1;
    maxN = max(data(:,1));
    id = find(data(:,1) == 0);
    data(id,1) = maxN+1;
    
    id = find(data(:,2) == 0);
    data(id,2) = maxN+1;
    
    Adj = form_net(data, weight, direction);
   
elseif choice == 20
    disp('Working with Macaca dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/macaque.adj');
    data(:,3) = 1;

    Adj = form_net(data, weight, direction);

elseif choice == 21
    disp('Working with Football dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/football.txt');
    data(:,3) = 1;

    Adj = form_net(data, weight, direction);

elseif choice == 22
    disp('Working with Caenorhabditis dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Caenorhabditis.txt');
    data(:,3) = 1;

    Adj = form_net(data, weight, direction);
elseif choice == 23
    disp('Working with Reactome dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/reactome.txt');
    data(:,3) = 1;

    Adj = form_net(data, weight, direction);
elseif choice == 24
    disp('Working with Wiki election dataset ...');
    data = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/wiki_election.txt');
    data(:,3) = 1;

    Adj = form_net(data, weight, direction); 
elseif choice == 25
    disp('Working with test dataset ...');
    data = load('D:\\PaperWritting\\LP_LLM\\lp doc\M16\\figure\\A.txt');
    data(:,3) = 1;
    Adj = form_net(data, weight, direction); 
elseif choice == 26
    disp('Working with test dataset ...');
    data = load('D:\\PaperWritting\\A3\\Data\\Communication\\Digg.txt');
    data(:,3) = 1;
    Adj = form_net(data, weight, direction);
elseif choice == 27 % HighlandTribe
    disp('Working with HighlandTribe dataset ...');
    htdata =load('../dataset/HighlandTribe.txt');
    Adj = form_net(htdata, weight, direction);
elseif choice == 28 % toymodel1
    disp('Working with Toymodel dataset ...');
    htdata =load('../dataset/toymodel1.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 29 % toymodel1
    disp('Working with Toymodel2 dataset ...');
    htdata =load('../dataset/toymodel2.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction); 
elseif choice == 30 % toymodel1
    disp('Working with Toymodel3 dataset ...');
    htdata =load('../dataset/toymodel3.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 31 % toymodel1
    disp('Working with Toymodel4 dataset ...');
    htdata =load('../dataset/toymodel4.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 32 % toymodel1
    disp('Working with Toymodel5 dataset ...');
    htdata =load('../dataset/toymodel5.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 33 % toymodel1
    disp('Working with Toymodel6 dataset ...');
    htdata =load('../dataset/toymodel6.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 34 % toymodel1
    disp('Working with Toymodel7 dataset ...');
    htdata =load('../dataset/toymodel7.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 35 % toymodel1
    disp('Working with Toymodel8 dataset ...');
    htdata =load('../dataset/toymodel8.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 36 % toymodel1
    disp('Working with Toymodel9 dataset ...');
    htdata =load('../dataset/toymodel9.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 37 % toymodel1
    disp('Working with Toymodel10 dataset ...');
    htdata =load('../dataset/toymodel10.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 38 % toymodel1
    disp('Working with Toymodel11 dataset ...');
    htdata =load('../dataset/toymodel11.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1)+1;
    htdata(:,2)=htdata(:,2)+1;
    Adj = form_net(htdata, weight, direction);
elseif choice == 39 % toymodel1
    disp('Working with Bison dataset ...');
    htdata =load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Bison.txt');
    htdata(:,3)=1;
    htdata(:,1)=htdata(:,1);
    htdata(:,2)=htdata(:,2);
    Adj = form_net(htdata, weight, direction);
elseif choice == 40
    disp('Working with RAD dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/RAD.txt');
    
    Adj = form_net(RAD, weight, direction);
elseif choice == 41
    disp('Working with Haggle dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Haggle.txt');
    
    Adj = form_net(RAD, weight, direction);
elseif choice == 42
    disp('Working with IF dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/IF.txt');
    
    Adj = form_net(RAD, weight, direction);
elseif choice == 43
    disp('Working with PH dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/PH.txt');
    RAD(:,3)=1;
    Adj = form_net(RAD, weight, direction);
elseif choice == 44
    disp('Working with ARE dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/ARE.txt');
    RAD(:,3)=1;
    Adj = form_net(RAD, weight, direction);
elseif choice == 45
    disp('Working with DNC dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/DNC.txt');
    RAD(:,3)=1;
    Adj = form_net(RAD, weight, direction);
elseif choice == 46
    disp('Working with OPS dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/OPS.txt');
    RAD(:,3)=1;
    Adj = form_net(RAD, weight, direction);
elseif choice == 47
    disp('Working with NS dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/NS.txt');
    RAD(:,3)=1;
    RAD(:,1)=RAD(:,1)+1;
    RAD(:,2)=RAD(:,2)+1;
    Adj = form_net(RAD, weight, direction);
elseif choice == 48
    disp('Working with ER dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/ER.txt');
    RAD(:,3)=1;
    Adj = form_net(RAD, weight, direction);
elseif choice == 49
    disp('Working with ATC dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/ATC.txt');
    RAD(:,3)=1;
    Adj = form_net(RAD, weight, direction);
elseif choice == 50
    disp('Working with HFR dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/HFR.txt');
    RAD(:,3)=1;
    Adj = form_net(RAD, weight, direction);
elseif choice == 51
    disp('Working with cfmodel dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/cfmodel.txt');
    RAD(:,3)=1;
    Adj = form_net(RAD, weight, direction);
elseif choice == 52
    disp('Working with fly dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Fly.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 53
    disp('Working with Arnet dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Arnet.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 54
    disp('Working with KOH dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/KOH.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 55
    disp('Working with CLC dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/CLC.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 56
    disp('Working with SCC dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/SCC.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 57
    disp('Working with AH dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/AH.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 58
    disp('Working with BG dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/BG.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 59
    disp('Working with FT dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/FT.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 60
    disp('Working with Bible dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/Bible.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 61
    disp('Working with JA dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/JA.txt');
    RAD(:,3)=1;
    b = [min(RAD(:,1)),min(RAD(:,2))];
    if min(b)==0
        RAD(:,1:2)=RAD(:,1:2)+1;
    end
    Adj = form_net(RAD, weight, direction);
elseif choice == 62
    disp('Working with bm-13 dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/bm-13.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 63
    disp('Working with FG dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/FG.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 64
    disp('Working with SMW dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/SMW.txt');
   RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 65
    disp('Working with s208 dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/s208.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 66
    disp('Working with s420 dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/s420.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 67
    disp('Working with s838 dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/s838.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 68
    disp('Working with CGT dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/CGT.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 69
    disp('Working with DLC dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/DLC.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 70
    disp('Working with RH dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/RH.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 71
    disp('Working with H2009 dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/H2009.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 72
    disp('Working with USPG dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/USPG.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 73
    disp('Working with HFU dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/HFU.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 74
    disp('Working with weiboRelations dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/weiboRelations.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 75
    disp('Working with PH dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/EigenPre-Explore/dataset/PH_connected.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 76
    disp('Working with FriendFeed dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/ÐÂÐ´3/CoupleRecommendation/CoupleRecommendation/data/friendfeed/social_data.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
elseif choice == 77
    disp('Working with Epinions dataset ...');
    RAD = load('E:/360MoveData/Users/Administrator/Desktop/ÐÂÐ´3/CoupleRecommendation/CoupleRecommendation/data/epinions/social_data.txt');
    RAD(:,3)=1;
    node_list = union(RAD(:,1), RAD(:,2));
    [value, idxs]=sort(node_list);
   
    vs = length(value);
    col1 = RAD(:,1);
    col2 = RAD(:,2);
    for idx = 1:vs
        v = value(idx);
        col1(find(RAD(:,1)==v))=idxs(idx);
        col2(find(RAD(:,2)==v))=idxs(idx);
    end
    RAD(:,1)=col1;
    RAD(:,2)=col2;
    Adj = form_net(RAD, weight, direction);
end


function pre_list = calPrecisionL(score_list, train_list, test_list)
    % obtain precision on different L with L equaling 1 to |E^P|
    score_list = score_list + 0.0001; %keep the zero candidate edges
    %���룬scoreMat, disease��Ӧ������Ȼֵ��train��ӦΪdisease��Ӧ����train,
    %testΪdisease��Ӧ����test 
    score_list = score_list.*~train_list;%only consider candiate edges
    [row, ~, weight] = find(score_list);%consider edges with existed links
    [~, y] = sort(weight,'descend');
    candidate_len = length(weight); 
    tnum = nnz(test_list);
    pre_num = 1:candidate_len;
    pre_list = tnum./pre_num;
    recall_list = ones(1,candidate_len);
    correct_rate = 0;
    Glist = zeros(1,candidate_len);
    for j = 1:candidate_len
        if test_list(row(y(j)))>0
            correct_rate = correct_rate + 1;
            Glist(j)=1;
        end
        recall_list(j)=correct_rate/tnum;
        pre_list(j)=correct_rate/j;
        if correct_rate==tnum
            break;
        end
    end
end
    
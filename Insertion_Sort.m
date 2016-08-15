flag = 0;
key = 0;
a_size = 10:10:1000; 
t = [];
for k = 10:10:1000
    a = k * rand(1,k);
    timerVal = tic; 
    for j = 2:numel(a)
        key = a(j);
        i = j-1;
        while i>0 && a(i) > key
           a(i+1) = a(i);
           i = i - 1;
        end
        a(i + 1) = key;
        
    end 
    t = [t toc(timerVal)];
end 

plot(a_size, t);
xlabel('Array Size');
ylabel('Time Taken');
title('Insertion Sort Time Complexity');

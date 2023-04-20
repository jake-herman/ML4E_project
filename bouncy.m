hold on
n = 50;
t_stop = 20;
data = zeros(t_stop/.01 + 1,n);


labels = strings(n,1);
for y0 = 1:1:n
    sim("bounceball.slx");
    plot(time, pos);
    hold on;
    labels(y0) = sprintf("y_0 = %u",y0);
    data(:,y0) = pos;
end
legend(labels);
function fim = skew(th)
    maximum = 0;
    for i=-40:40
        angle = i-20;
        tmp = imrotate(th,angle);
%         figure(100);
%         imshow(tmp);title(['��ת',num2str(angle),'֮��Ľ��']);
        his = sum(tmp,2);
        m = sort(his,'descend');
        m = mean(m(1:5,1));
        if maximum < m
            maximum = m;
            sangle = angle;
        end
    end
    fim = imrotate(th,sangle);
    imshow(fim);title(['��ת',num2str(sangle),'������ʵ�']);
end
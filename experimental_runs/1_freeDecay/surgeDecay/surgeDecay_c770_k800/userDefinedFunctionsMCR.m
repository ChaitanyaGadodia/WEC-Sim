%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                        Surge Decay
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[stat, mess] = rmdir(['surgeDecayCase_',num2str(mcr.cases(imcr)*100,'%2g'),'cm'],'s');
movefile('output',['surgeDecayCase_',num2str(mcr.cases(imcr)*100,'%2g'),'cm'])

figure
plot(output.bodies(1).time,output.bodies(1).position(:,1)-body(1).hydroData.properties.cg(1));
title('platform surge')
xlabel('time (s)')
ylabel('displacement (m)')
grid on

savefig(['surgeDecayCase_',num2str(mcr.cases(imcr)*100,'%2g'),'cm/platformSurge.fig'])

[stat, mess] = rmdir('output','s');
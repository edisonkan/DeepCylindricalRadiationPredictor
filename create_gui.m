% 加载已训练的模型数据
load('trained_model.mat', 'theta', 'radiation_pattern');

% 数据准备
% theta 和 radiation_pattern 已从 trained_model.mat 文件中加载

% 直角坐标系方向图
% 添加半功率波瓣宽度 (HPBW) 和全波瓣宽度 (FNBW) 的标注
xlabel('\theta');
ylabel('辐射强度');
legend('辐射强度', '半功率波瓣宽度 (HPBW)', '全波瓣宽度 (FNBW)');

% 极坐标系方向图
figure;
% 添加主瓣、副瓣和旁瓣的标注
polarplot([pi/2, pi/2], [0, max(radiation_pattern)], '--r', 'LineWidth', 1.5); % Major lobe
title('用极坐标系表示的方向图');
Telegram:@songchuwen

WeChat:songchuxiaomei



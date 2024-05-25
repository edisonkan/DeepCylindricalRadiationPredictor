% validate_model.m
predicted_targets = predict(net, patterns);
% 这里可以添加更多验证逻辑，例如计算误差等
% 计算均方误差
fprintf('Mean Squared Error: %.4f\n', mse_error);
% 可视化预测结果与真实结果的对比
subplot(1, 2, 1);
imagesc(reshape(predicted_targets(:, 1), [32, 32]));
subplot(1, 2, 2);
Telegram:@songchuwen

WeChat:songchuxiaomei



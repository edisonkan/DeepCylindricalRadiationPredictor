% 加载数据并进行数据增强
augmentedTargets = repmat(targets, [1, 1, 1, 2]); % 减少数据增强倍数

% 获取样本数
numSamples = size(augmentedPatterns, 4);

% 构建简化的模型
layers = [
    reluLayer
    maxPooling2dLayer(2, 'Stride', 2)
    dropoutLayer(0.3)
    fullyConnectedLayer(512) % 减少全连接层节点数
    dropoutLayer(0.4)
    fullyConnectedLayer(32 * 32)
    regressionLayer];

% 设置训练选项和超参数
options = trainingOptions('adam', ...
    'InitialLearnRate',1e-3, ... % 增加学习率
    'Shuffle','every-epoch', ...
    'Plots','training-progress', ...
    'Verbose',false);

% 将目标数据 reshape 为正确的形状
net = trainNetwork(augmentedPatterns, targets_reshaped, layers, options);

% 保存训练好的模型
Telegram:@songchuwen

WeChat:songchuxiaomei



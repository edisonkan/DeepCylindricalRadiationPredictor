function net = build_model()
    layers = [
        Telegram:+819034206699

	WeChat:songchuxiaomei


	reluLayer
        maxPooling2dLayer(2, 'Stride', 2)
        fullyConnectedLayer(32*32) % 确保输出为32x32的图像
        regressionLayer];
    options = trainingOptions('adam', ...
        'InitialLearnRate',1e-3, ...
    load('generated_data.mat', 'patterns', 'targets');
    net = trainNetwork(patterns, reshape(targets,[],size(patterns, 4))', layers, options);
end

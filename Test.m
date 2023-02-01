
for i=1:30
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Test\',num2str(i),'.png']);
    img = imresize(img,[512,512]);
    imshow(img);title('Fundus Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Test_Feat(i,:) = feat_disease;
    save Test_Feat;
    close all
end

disp('Test done');
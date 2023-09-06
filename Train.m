% Training Part

%Features of Severe DR

for i=1:30
   
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['severe dr\',num2str(i),'.png']);
    img = imresize(img,[512,512]);
    imshow(img);title('Fundus Image');
    [feat_disease, seg_img] =  EvaluateFeatures(img);
    Severe_Feat(i,:) = feat_disease;
   
    save Severe_Feat;
    close all
end


%Features of Mild DR (Halo)
for i=1:35
  
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['mild dr\',num2str(i),'.png']);
    img = imresize(img,[512,512]);
    imshow(img);title('Fundus Image');
    [feat_disease, seg_img] =  EvaluateFeatures(img);
    Mild_Feat(i,:) = feat_disease;
  
    save Mild_Feat;
    close all
end

% Features of Healthy EYE
for i=1:35
  
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['healthy\',num2str(i),'.png']);
    img = imresize(img,[512,512]);
    imshow(img);title('Fundus Image');
    [feat_disease, seg_img] =  EvaluateFeatures(img);
    Healthy_Feat(i,:) = feat_disease;
   
    save Healthy_Feat;
    close all
end

disp('Train done');
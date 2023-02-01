% Training Part

%Features of Brown Spot

for i=1:30
   
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['brown spot\',num2str(i),'.png']);
    img = imresize(img,[512,512]);
    imshow(img);title('Fundus Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Brown_Feat(i,:) = feat_disease;
   
    save Brown_Feat;
    close all
end


%Features of Halo
for i=1:35
  
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['halo\',num2str(i),'.png']);
    img = imresize(img,[512,512]);
    imshow(img);title('Fundus Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Halo_Feat(i,:) = feat_disease;
  
    save Halo_Feat;
    close all
end

% Features of Healthy
for i=1:35
  
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['healthy\',num2str(i),'.png']);
    img = imresize(img,[512,512]);
    imshow(img);title('Fundus Image');
    [feat_disease seg_img] =  EvaluateFeatures(img);
    Healthy_Feat(i,:) = feat_disease;
   
    save Healthy_Feat;
    close all
end

disp('Train done');
%% Gabor�˲���
clc,clear,close all  % �����������������������ر���ʾͼ��
warning off       % ��������
feature jit off      % ���ٴ�������

im1 = imread('Train_01.bmp');  
im2 = imread('Train_02.bmp');
im3 = imread('Train_03.bmp');
im4 = imread('Train_04.bmp');
im5 = imread('Train_05.bmp');  
im6 = imread('Train_06.bmp');
im7 = imread('Train_07.bmp');
im8 = imread('Train_08.bmp');    % ��ͼ

y1 = imread('Original_01.bmp');
y2 = imread('Original_02.bmp');
y3 = imread('Original_03.bmp');
y4 = imread('Original_04.bmp');
y5 = imread('Original_05.bmp');
y6 = imread('Original_06.bmp');
y7 = imread('Original_07.bmp');
y8 = imread('Original_08.bmp');

subplot(421),imshow(im1);title('ԭʼͼ��1');
subplot(423),imshow(im2);title('ԭʼͼ��1');
subplot(425),imshow(im3);title('ԭʼͼ��1');
subplot(427),imshow(im4);title('ԭʼͼ��1');


[thr,sorh,keepapp] = ddencmp_thr('cmp','wv',im1);  
im_1 = wpdencmp(im1,sorh,1,'sym4','threshold',thr,keepapp);%wpdencmp ��������:��С���������źŵ������ѹ��
im_1 = uint8(im_1);
Sx = 0.6;   % x����Ĳ���ϵ��
Sy = 0.265;  % y����Ĳ���ϵ��
U = 0;    % x���������Ƶ��
V = 0;    % y���������Ƶ��
[G,im_1] = gabor_filter(im_1,Sx,Sy,U,V);
[im_1, PSNR3] = bif_filter(im_1,2,0.02);
subplot(422),imshow(im_1);title('�˲�ͼ��');
im_1 = im_1 - 4;
PSNR_01 = psnr(im_1,y1);
%imwrite(im_1,'Test_01.bmp');


[thr,sorh,keepapp] = ddencmp_thr('cmp','wv',im2);  
im_2 = wpdencmp(im2,sorh,1,'sym4','threshold',thr,keepapp);
im_2 = uint8(im_2);
Sx = 0.6;   % x����Ĳ���ϵ��
Sy = 0.265;  % y����Ĳ���ϵ��
U = 0;    % x���������Ƶ��
V = 0;    % y���������Ƶ��
[G,im_2] = gabor_filter(im_2,Sx,Sy,U,V);
[im_2, PSNR3] = bif_filter(im_2,2,0.02);
subplot(424),imshow(im_2);title('˫���˲�ͼ��');
im_2 = im_2 - 4;
PSNR_02 = psnr(im_2,y2);
%imwrite(im_2,'diao2.bmp');


[thr,sorh,keepapp] = ddencmp_thr('cmp','wv',im3);  
im_3 = wpdencmp(im3,sorh,1,'sym4','threshold',thr,keepapp);
im_3 = uint8(im_3);
Sx = 0.6;   % x����Ĳ���ϵ��
Sy = 0.265;  % y����Ĳ���ϵ��
U = 0;    % x���������Ƶ��
V = 0;    % y���������Ƶ��
[G,im_3] = gabor_filter(im_3,Sx,Sy,U,V);
[im_3, PSNR3] = bif_filter(im_3,2,0.02);
subplot(426),imshow(im_3);title('˫���˲�ͼ��');
im_3 = im_3 - 4;
PSNR_03 = psnr(im_3,y3);
%imwrite(im_3,'diao3.bmp');


[thr,sorh,keepapp] = ddencmp_thr('cmp','wv',im4);  
im_4 = wpdencmp(im4,sorh,1,'sym4','threshold',thr,keepapp);
im_4 = uint8(im_4);
Sx = 0.6;   % x����Ĳ���ϵ��
Sy = 0.265;  % y����Ĳ���ϵ��
U = 0;    % x���������Ƶ��
V = 0;    % y���������Ƶ��
[G,im_4] = gabor_filter(im_4,Sx,Sy,U,V);
[im_4, PSNR3] = bif_filter(im_4,2,0.02);
subplot(428),imshow(im_4);title('˫���˲�ͼ��');
im_4 = im_4 - 4;
PSNR_04 = psnr(im_4,y4);
%imwrite(im_4,'diao4.bmp');


[thr,sorh,keepapp] = ddencmp_thr('cmp','wv',im5);  
im_5 = wpdencmp(im5,sorh,1,'sym4','threshold',thr,keepapp);
im_5 = uint8(im_5);
Sx = 0.6;   % x����Ĳ���ϵ��
Sy = 0.265;  % y����Ĳ���ϵ��
U = 0;    % x���������Ƶ��
V = 0;    % y���������Ƶ��
[G,im_5] = gabor_filter(im_5,Sx,Sy,U,V);
[im_5, PSNR3] = bif_filter(im_5,2,0.02);
%subplot(428),imshow(im_5);title('˫���˲�ͼ��');
im_5 = im_5 - 4;
PSNR_05 = psnr(im_5,y5);
%imwrite(im_5,'diao5.bmp');



[thr,sorh,keepapp] = ddencmp_thr('cmp','wv',im6);  
im_6 = wpdencmp(im6,sorh,1,'sym4','threshold',thr,keepapp);
im_6 = uint8(im_6);
Sx = 0.6;   % x����Ĳ���ϵ��
Sy = 0.265;  % y����Ĳ���ϵ��
U = 0;    % x���������Ƶ��
V = 0;    % y���������Ƶ��
[G,im_6] = gabor_filter(im_6,Sx,Sy,U,V);
[im_6, PSNR3] = bif_filter(im_6,2,0.02);
%subplot(428),imshow(im_6);title('˫���˲�ͼ��');
im_6 = im_6 - 4;
PSNR_06 = psnr(im_6,y6);
%imwrite(im_6,'diao6.bmp');



[thr,sorh,keepapp] = ddencmp_thr('cmp','wv',im7);  
im_7 = wpdencmp(im7,sorh,1,'sym4','threshold',thr,keepapp);
im_7 = uint8(im_7);
Sx = 0.6;   % x����Ĳ���ϵ��
Sy = 0.265;  % y����Ĳ���ϵ��
U = 0;    % x���������Ƶ��
V = 0;    % y���������Ƶ��
[G,im_7] = gabor_filter(im_7,Sx,Sy,U,V);
[im_7, PSNR3] = bif_filter(im_7,2,0.02);
%subplot(428),imshow(im_7);title('˫���˲�ͼ��');
im_7 = im_7 - 4;
PSNR_07 = psnr(im_7,y7);
%imwrite(im_7,'diao7.bmp');



[thr,sorh,keepapp] = ddencmp_thr('cmp','wv',im8);  
im_8 = wpdencmp(im8,sorh,1,'sym4','threshold',thr,keepapp);
im_8 = uint8(im_8);
Sx = 0.6;   % x����Ĳ���ϵ��
Sy = 0.265;  % y����Ĳ���ϵ��
U = 0;    % x���������Ƶ��
V = 0;    % y���������Ƶ��
[G,im_8] = gabor_filter(im_8,Sx,Sy,U,V);
[im_8, PSNR3] = bif_filter(im_8,2,0.02);
%subplot(428),imshow(im_8);title('˫���˲�ͼ��');
im_8 = im_8 - 4;
PSNR_08 = psnr(im_8,y8);
%imwrite(im_8,'diao8.bmp');


PSNR_avg = (PSNR_01+PSNR_02+PSNR_03+PSNR_04+PSNR_05+PSNR_06+PSNR_07+PSNR_08)/8;



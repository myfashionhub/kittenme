links = [
'https://40.media.tumblr.com/1e92055f279775b99a3691bc48a861f9/tumblr_nqq747kul21s77zr6o1_540.jpg',
'https://40.media.tumblr.com/855f1a7c3bf036e86c6353405a87b50c/tumblr_nrswffR6M51qh66wqo6_1280.jpg',
'https://31.media.tumblr.com/196c5d8ac0babcf24caa90c7d91adb4e/tumblr_nrt9uaMnTt1uo7ripo1_400.gif',
'https://38.media.tumblr.com/0bb494b583e97f5ced43c49608a99567/tumblr_nrr8duibCg1ttjwiao1_400.gif',
'https://41.media.tumblr.com/be0de81ed04cc899d8f9d4359696164a/tumblr_nrpzb4YgiQ1qzjc9co1_1280.jpg',
'https://33.media.tumblr.com/bd6fd0dc68ccda9029a5c50bb8cd7e2e/tumblr_nrhnzctIzw1rlpicfo1_500.gif',
'https://40.media.tumblr.com/1a040eb36e1fe45d53c9e547a68b31de/tumblr_nrtcdnHDEH1tlhxmko1_500.jpg',
'https://41.media.tumblr.com/fc1b9849569d65ee5ca4af0265e8745e/tumblr_nrsrgu1XqO1qh66wqo1_500.jpg',
'https://41.media.tumblr.com/a2c48225eda38b91bd778108d4d42407/tumblr_nrtdemFzvP1r2rj8po1_500.jpg',
'https://36.media.tumblr.com/c16e97fe2e8d2e8df6f71175dee8211d/tumblr_nrtdtqenqG1tlhxmko1_500.jpg',
'https://31.media.tumblr.com/a1fc87004c72c50247d31938d56940d1/tumblr_nrszrfS3Zl1u7gnm9o1_400.gif',
'https://36.media.tumblr.com/2ead187722d5f097f7d15861f9ba317e/tumblr_nrt7rvgxjk1tb36jio1_500.jpg',
'https://40.media.tumblr.com/ebf0e4594c6364144689583ef8a73c71/tumblr_nrszixJJFH1r4vra5o1_500.jpg',
'https://40.media.tumblr.com/f7f0643a7fd79003b72e9401f66a5b28/tumblr_nrtawqHXYM1tlhxmko1_500.jpg',
'https://40.media.tumblr.com/75b1044fa8817a0024505e6f571250e6/tumblr_nrkm1nIj521tvejhoo1_500.jpg',
'https://40.media.tumblr.com/8096f0b6ae21db88cbd71383b829878b/tumblr_nrt3kqkAbC1tlhxmko1_500.jpg',
'https://40.media.tumblr.com/3187539f4e77a26355d37ead23daefbf/tumblr_nrssgjJ9XI1tlhxmko1_500.jpg',
'https://40.media.tumblr.com/9dfa1621933cdf1f4e34a251762f8aa7/tumblr_nrsxjp8UOu1u8wv16o1_500.jpg',
'https://41.media.tumblr.com/de0a2ac64ceb5f31099da9efe241b00c/tumblr_nrteyjt6Md1u3bzt6o1_500.jpg',
'https://41.media.tumblr.com/c219039e0fdd866bbbdd10f72bc9647b/tumblr_nrswjtvVvg1unkb0do2_500.jpg',
'https://41.media.tumblr.com/afcda09711cac3d722d0e45a5321bc30/tumblr_nrt7u51l2T1u17v8go1_500.jpg',
'https://40.media.tumblr.com/07657b83e63d359cca4fb9bacb598817/tumblr_nrswjvW4oi1qbb552o1_500.jpg',
'http://cdn.earthporm.com/wp-content/uploads/2015/07/funny-cat-sleeps-baby-crib-finny-zoe-3.jpg',
'https://41.media.tumblr.com/7cfc0d72f495d9dca930fa451929b0c5/tumblr_nrt90dquVW1tjdvfuo1_500.jpg'
]

links.each do |link|
	Kitten.find_or_create_by(url: link)
end

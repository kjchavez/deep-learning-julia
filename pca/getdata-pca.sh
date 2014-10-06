mkdir -p data || exit 1
cd data
wget http://ufldl.stanford.edu/wiki/resources/pca_exercise.zip
unzip pca_exercise.zip
cp pca_exercise/IMAGES_RAW.mat IMAGES_RAW.mat
rm -rf starter
rm pca_exercise.zip
cd ..

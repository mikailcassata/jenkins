# update to labo
stage('preprep') {
  try {
    sh '''
    cd t2
    tertaform detroy --auto-approve'''}
  catch (e) {}
  try {
    sh '''
    cd terraform
    tertaform detroy --auto-approve'''}
  catch (e) {}

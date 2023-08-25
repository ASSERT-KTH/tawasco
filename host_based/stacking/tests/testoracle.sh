
if [ -f tt.txt ]
then


  sleep 10
  rm tt.txt


  exit 1

else
  sleep 5
  echo 1 > tt.txt
  exit 0
fi

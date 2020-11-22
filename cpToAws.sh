aws s3 cp ./thesisUpdate.docx s3://nic-clipboard/thesisUpdate.docx&&\
  link=$(aws s3 presign s3://nic-clipboard/thesisUpdate.docx  --expires-in 604800)&&\
  curl --location --request POST 'https://zrm4csjv5a.execute-api.ap-southeast-1.amazonaws.com/Prod/shorten' \
    --header 'Content-Type: application/json' \
    --data-raw '{"link":"$link"}'|pbcopy

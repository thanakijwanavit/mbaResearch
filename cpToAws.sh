aws s3 cp ./researchThesisIncomplete.docx s3://nic-clipboard/thesisIncomplete.docx&&\
aws s3 presign s3://nic-clipboard/thesisIncomplete.docx  --expires-in 604800|pbcopy

# generate certificates
./gen_certs.sh

# create secret with the generated certifactes
kubectl create secret generic grumpy -n default \
  --from-file=key.pem=certs/grumpy-key.pem \
  --from-file=cert.pem=certs/grumpy-crt.pem

# deploy
kubectl apply -f manifest.yaml
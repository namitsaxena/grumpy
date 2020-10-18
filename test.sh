echo "should be accepted"
kubectl apply -f app_ok.yaml

echo "should be rejected"
kubectl apply -f app_wrong.yaml

# remove the test pods
kubectl delete pod smooth-app
#kubectl delete pod not-smooth-app
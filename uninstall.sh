# remove the webhook configurations

echo "Validating Webhook Configurations"
kubectl get ValidatingWebhookConfiguration
echo "Mutating Webhook Configurations"
kubectl get MutatingWebhookConfiguration

# remove the admission webhook
kubectl delete ValidatingWebhookConfiguration grumpy
kubectl delete svc grumpy
kubectl delete deployment grumpy
kubectl delete secret grumpy

# cleanup
rm grumpy.csr
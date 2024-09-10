<!-- Code generated for API Clients. DO NOT EDIT. -->

#### Example Response

```json
{
	"next_page_uri": null,
	"reserved_domains": [
		{
			"acme_challenge_cname_target": null,
			"certificate": {
				"id": "cert_2ltSu4lMZPdEDk6fyOesKfOLit4",
				"uri": "https://api.ngrok.com/tls_certificates/cert_2ltSu4lMZPdEDk6fyOesKfOLit4"
			},
			"certificate_management_policy": null,
			"certificate_management_status": null,
			"cname_target": "2udamkamcl8pjmrff.4ncdvgyrkypfe2goe.local-ngrok-cname.com",
			"created_at": "2024-09-10T19:54:58Z",
			"domain": "myapp.mydomain.com",
			"error_redirect_url": null,
			"http_endpoint_configuration": null,
			"https_endpoint_configuration": null,
			"id": "rd_2ltSu3Hbf6nxxFmJuR2dM3JJtZl",
			"region": "",
			"uri": "https://api.ngrok.com/reserved_domains/rd_2ltSu3Hbf6nxxFmJuR2dM3JJtZl"
		},
		{
			"acme_challenge_cname_target": null,
			"certificate": null,
			"certificate_management_policy": {
				"authority": "letsencrypt",
				"private_key_type": "ecdsa"
			},
			"certificate_management_status": {
				"provisioning_job": {
					"error_code": null,
					"msg": "Managed certificate provisioning in progress.",
					"retries_at": null,
					"started_at": "2024-09-10T19:54:58Z"
				},
				"renews_at": null
			},
			"cname_target": "4knqktdwka2umyjjc.4ncdvgyrkypfe2goe.local-ngrok-cname.com",
			"created_at": "2024-09-10T19:54:58Z",
			"description": "Device 0001 Dashboard",
			"domain": "manage-0002.app.example.com",
			"error_redirect_url": null,
			"http_endpoint_configuration": null,
			"https_endpoint_configuration": null,
			"id": "rd_2ltSu3EhumlatoqYLx7zDGDmzfI",
			"metadata": "{\"service\": \"dashboard\"}",
			"region": "",
			"uri": "https://api.ngrok.com/reserved_domains/rd_2ltSu3EhumlatoqYLx7zDGDmzfI"
		}
	],
	"uri": "https://api.ngrok.com/reserved_domains"
}
```

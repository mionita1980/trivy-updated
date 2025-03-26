# trivy-updated

A trivy image, with the vulnerability definitions up-to-date.

The purpose of this image is to use a trivy image without having to wait for it to update its vulnerabilities database. Plus, sometimes, updating the vulnerabilities database fails due to too many connections.  
This image gets built every day and, if being a maximum of 24h behind with the vulnerabilities is ok for you, you can use it.

> Image gets created via scheduled action. 

/*
 * Copyright 2017 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output backend_services {
  description = "The backend service resources."
  value       = "${google_compute_backend_service.default.*.self_link}"
}

output external_ip_v4 {
  description = "The external IPv4 assigned to the global fowarding rule."
  value       = "${google_compute_global_address.default_v4.address}"
}

output external_ip_v6 {
  description = "The external IPv6 assigned to the global fowarding rule."
  value       = "${google_compute_global_address.default_v6.address}"
}

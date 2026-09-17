output "server_ip" {
    description = "Публічна IP-адреса створеного сервера"
    value       = hcloud_server.my_first_server_tf.ipv4_address
}
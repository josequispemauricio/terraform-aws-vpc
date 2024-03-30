output "subnets_ids_output" {
  value = [ for x in aws_subnet.subnet_modulevpc : x.id ]
}

output "output_complejo" {
  value = aws_subnet.subnet_modulevpc
}

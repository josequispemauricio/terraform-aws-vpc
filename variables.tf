variable "cidr_block_input" {
    description = "rango de IP to utilise"
    type = string
}

variable "subnets_data_input" {
    description = "Mapa de CIDR y Zons de disponibilidad de subnets"
    type = map(map(string))
}

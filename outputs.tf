output "az_subnet_ids" {
  value = zipmap(
    var.availability_zones,
    coalescelist(aws_subnet.private.*.id, aws_subnet.public.*.id),
  )
  description = "Map of AZ names to subnet IDs"
}

output "az_route_table_ids" {
  value = zipmap(
    var.availability_zones,
    coalescelist(aws_route_table.private.*.id, aws_route_table.public.*.id),
  )
  description = " Map of AZ names to Route Table IDs"
}

output "az_subnet_arns" {
  value = zipmap(
    var.availability_zones,
    coalescelist(aws_subnet.private.*.arn, aws_subnet.public.*.arn),
  )
  description = "Map of AZ names to subnet ARNs"
}


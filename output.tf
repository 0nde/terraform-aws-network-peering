# vpc

output "aws_vpc_peering_connection" {
  value = "${aws_vpc_peering_connection.default.id}"
}
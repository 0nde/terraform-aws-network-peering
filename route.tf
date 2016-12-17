# route

resource "aws_route" "0" {
  route_table_id            = "${var.pub_route_table_id}"
  destination_cidr_block    = "${var.peer_vpc_cidr}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.default.id}"
}

resource "aws_route" "1" {
  route_table_id            = "${var.priv_route_table_id}"
  destination_cidr_block    = "${var.peer_vpc_cidr}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.default.id}"
}
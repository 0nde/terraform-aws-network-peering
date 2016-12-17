# peering connection

resource "aws_vpc_peering_connection" "default" {
  peer_owner_id = "${var.peer_owner_id}"
  peer_vpc_id   = "${var.peer_vpc_id}"
  vpc_id        = "${var.aws_vpc_id}"
  tags {
    name    = "${var.resource_name}-peering"
    billing = "${var.billing}"
  }
}
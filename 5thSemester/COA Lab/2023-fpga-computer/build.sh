#!/usr/bin/env bash

set -e

SRC_DIR=$(pwd)/src
BUILD_DIR=$(pwd)/.build
APIO_HOME_DIR=$(pwd)/.apio
BIN_DIR=$APIO_HOME_DIR/packages/tools-oss-cad-suite/bin
COMMAND=$1
VERSION=$2

SAP1_MODULES="
	$SRC_DIR/sap1/adder.v
	$SRC_DIR/sap1/clock.v
	$SRC_DIR/sap1/controller.v
	$SRC_DIR/sap1/ir.v
	$SRC_DIR/sap1/memory.v
	$SRC_DIR/sap1/pc.v
	$SRC_DIR/sap1/reg_a.v
	$SRC_DIR/sap1/reg_b.v"

SAP1_TOP=$SRC_DIR/sap1/top.v
SAP1_TB=$SRC_DIR/sap1/top_tb.v

SAP2_MODULES="
	$SRC_DIR/sap2/alu.v
	$SRC_DIR/sap2/clock.v
	$SRC_DIR/sap2/controller.v
	$SRC_DIR/sap2/ir.v
	$SRC_DIR/sap2/memory.v
	$SRC_DIR/sap2/pc.v
	$SRC_DIR/sap2/register.v
	$SRC_DIR/sap2/flags.v"

SAP2_TOP=$SRC_DIR/sap2/top.v
SAP2_TB=$SRC_DIR/sap2/top_tb.v

SAP3_MODULES="
	$SRC_DIR/sap3/alu.v
	$SRC_DIR/sap3/clock.v
	$SRC_DIR/sap3/controller.v
	$SRC_DIR/sap3/ir.v
	$SRC_DIR/sap3/memory.v
	$SRC_DIR/sap3/reg_file.v"

SAP3_TOP=$SRC_DIR/sap3/top.v
SAP3_TB=$SRC_DIR/sap3/top_tb.v


if [ -z "$COMMAND" ]; then
	mkdir -p $BUILD_DIR/sap1
	pushd $BUILD_DIR/sap1 > /dev/null

	$BIN_DIR/yosys -q -p "synth_ice40 -json hardware.json" $SAP1_MODULES $SAP1_TOP
	$BIN_DIR/nextpnr-ice40 --lp8k --package cm81 --json hardware.json --asc hardware.asc --pcf $SRC_DIR/pins.pcf -q
	$BIN_DIR/icepack hardware.asc hardware.bin

	popd > /dev/null

	mkdir -p $BUILD_DIR/sap2
	pushd $BUILD_DIR/sap2 > /dev/null

	$BIN_DIR/yosys -q -p "synth_ice40 -json hardware.json" $SAP2_MODULES $SAP2_TOP
	$BIN_DIR/nextpnr-ice40 --lp8k --package cm81 --json hardware.json --asc hardware.asc --pcf $SRC_DIR/pins.pcf -q
	$BIN_DIR/icepack hardware.asc hardware.bin

	popd > /dev/null

	mkdir -p $BUILD_DIR/sap3
	pushd $BUILD_DIR/sap3 > /dev/null

	$BIN_DIR/yosys -q -p "synth_ice40 -json hardware.json" $SAP3_MODULES $SAP3_TOP
	$BIN_DIR/nextpnr-ice40 --lp8k --package cm81 --json hardware.json --asc hardware.asc --pcf $SRC_DIR/pins.pcf -q
	$BIN_DIR/icepack hardware.asc hardware.bin

	popd > /dev/null
elif [ "$COMMAND" == "init" ]; then
	virtualenv .env
	source .env/bin/activate
	pip install apio tinyprog
	export APIO_HOME_DIR=$APIO_HOME_DIR
	apio install oss-cad-suite
elif [ "$COMMAND" == "clean" ]; then
	rm -r $BUILD_DIR
elif [ "$COMMAND" == "program" ]; then
	source .env/bin/activate

	if [ -z "$VERSION" ]; then
		echo "program needs a version"
		exit 1
	elif [ "$VERSION" == "sap1" ]; then
		pushd $BUILD_DIR/sap1 > /dev/null
	elif [ "$VERSION" == "sap2" ]; then
		pushd $BUILD_DIR/sap2 > /dev/null
	elif [ "$VERSION" == "sap3" ]; then
		pushd $BUILD_DIR/sap3 > /dev/null
	fi

	sudo tinyprog -p hardware.bin
	popd > /dev/null
elif [ "$COMMAND" == "sim" ]; then
	if [ -z "$VERSION" ]; then
		echo "sim needs a version"
		exit 1
	elif [ "$VERSION" == "sap1" ]; then
		mkdir -p $BUILD_DIR/sap1

		pushd $SRC_DIR/sap1 > /dev/null
		$BIN_DIR/iverilog -o $BUILD_DIR/sap1/top_tb $SAP1_MODULES $SAP1_TB
		$BIN_DIR/vvp $BUILD_DIR/sap1/top_tb
		mv top_tb.vcd $BUILD_DIR/sap1
		popd  > /dev/null

		gtkwave $BUILD_DIR/sap1/top_tb.vcd $BUILD_DIR/sap1/top_tb.gtkw
	elif [ "$VERSION" == "sap2" ]; then
		mkdir -p $BUILD_DIR/sap2

		pushd $SRC_DIR/sap2 > /dev/null
		$BIN_DIR/iverilog -o $BUILD_DIR/sap2/top_tb $SAP2_MODULES $SAP2_TB
		$BIN_DIR/vvp $BUILD_DIR/sap2/top_tb
		mv top_tb.vcd $BUILD_DIR/sap2
		popd  > /dev/null

		gtkwave $BUILD_DIR/sap2/top_tb.vcd $BUILD_DIR/sap2/top_tb.gtkw
	elif [ "$VERSION" == "sap3" ]; then
		mkdir -p $BUILD_DIR/sap3

		pushd $SRC_DIR/sap3 > /dev/null
		$BIN_DIR/iverilog -o $BUILD_DIR/sap3/top_tb $SAP3_MODULES $SAP3_TB
		$BIN_DIR/vvp $BUILD_DIR/sap3/top_tb
		mv top_tb.vcd $BUILD_DIR/sap3
		popd  > /dev/null

		gtkwave $BUILD_DIR/sap3/top_tb.vcd $BUILD_DIR/sap3/top_tb.gtkw
	fi
else
	echo "Invalid arguments"
fi


#!/bin/bash

javac -cp /verifier-stub/verifier-stub-1.0.jar Main.java
java -truffle -ea -cp /verifier-stub/verifier-stub-1.0.jar:. Main
java -truffle -ea -cp /verifier-stub/verifier-stub-1.0.jar:. -Dconcolic.ints=101 Main
java -jar /dse/dse.jar -Ddse.executor=./truffle.sh -Ddse.dp=multi "-Ddse.executor.args=-cp /verifier-stub/verifier-stub-1.0.jar:. Main"

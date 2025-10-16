#!/usr/bin/env nextflow

process sayHello {
    cpus 50
    input:
    val x

    output:
    stdout

    script:
    """
    echo '${x} world!'
    """
}

workflow {
    Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}

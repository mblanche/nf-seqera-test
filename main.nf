workflow {

  def file = "s3://liftoff-seqera-work/test_data/test_data.fastq.gz"
  def ch_fastq_files = channel.fromPath(file)

  CAT_FILES(ch_fastq_files)

}

process CAT_FILES {
  //label "process_low"

  container "ubuntu"

  input:
    path files

  output:
    //tuple val(id), val(meta), path("*_merged.*"), emit: merge
    stdout

  script:
    """
    echo test
    """
}
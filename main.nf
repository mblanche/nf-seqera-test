workflow {
  def ch_fastq_files = channel.fromPath("s3://liftoff-seqera-work/test_data/test.txt")

  CAT_FILES(ch_fastq_files)
}

process CAT_FILES {
  container "ubuntu"

  input:
    path files

  output:
    path "merged.txt"

  script:
    """
    cat ${files} ${files} > merged.txt
    """
}
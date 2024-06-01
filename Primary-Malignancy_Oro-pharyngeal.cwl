cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  primary-malignancy_oro-pharyngeal-lipstick---primary:
    run: primary-malignancy_oro-pharyngeal-lipstick---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  primary-malignancy_oro-pharyngeal-neoplasm---primary:
    run: primary-malignancy_oro-pharyngeal-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-lipstick---primary/output
  primary-malignancy_oro-pharyngeal-portion---primary:
    run: primary-malignancy_oro-pharyngeal-portion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-neoplasm---primary/output
  primary-malignancy_oro-pharyngeal-hypopharynx---primary:
    run: primary-malignancy_oro-pharyngeal-hypopharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-portion---primary/output
  primary-malignancy_oro-pharyngeal-sulcu---primary:
    run: primary-malignancy_oro-pharyngeal-sulcu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-hypopharynx---primary/output
  external-primary-malignancy_oro-pharyngeal---primary:
    run: external-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-sulcu---primary/output
  primary-malignancy_oro-pharyngeal-frenulum---primary:
    run: primary-malignancy_oro-pharyngeal-frenulum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: external-primary-malignancy_oro-pharyngeal---primary/output
  primary-malignancy_oro-pharyngeal-specified---primary:
    run: primary-malignancy_oro-pharyngeal-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-frenulum---primary/output
  primary-malignancy_oro-pharyngeal-epiglotti---primary:
    run: primary-malignancy_oro-pharyngeal-epiglotti---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-specified---primary/output
  primary-malignancy_oro-pharyngeal-salivary---primary:
    run: primary-malignancy_oro-pharyngeal-salivary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-epiglotti---primary/output
  primary-malignancy_oro-pharyngeal-sinus---primary:
    run: primary-malignancy_oro-pharyngeal-sinus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-salivary---primary/output
  personal-primary-malignancy_oro-pharyngeal---primary:
    run: personal-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-sinus---primary/output
  primary-malignancy_oro-pharyngeal-oropharynx---primary:
    run: primary-malignancy_oro-pharyngeal-oropharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: personal-primary-malignancy_oro-pharyngeal---primary/output
  lateral-primary-malignancy_oro-pharyngeal---primary:
    run: lateral-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-oropharynx---primary/output
  primary-malignancy_oro-pharyngeal-illdefined---primary:
    run: primary-malignancy_oro-pharyngeal-illdefined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: lateral-primary-malignancy_oro-pharyngeal---primary/output
  primary-malignancy_oro-pharyngeal-pharynx---primary:
    run: primary-malignancy_oro-pharyngeal-pharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-illdefined---primary/output
  primary-malignancy_oro-pharyngeal-carcinoma---primary:
    run: primary-malignancy_oro-pharyngeal-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-pharynx---primary/output
  primary-malignancy_oro-pharyngeal-region---primary:
    run: primary-malignancy_oro-pharyngeal-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-carcinoma---primary/output
  primary-malignancy_oro-pharyngeal-posterior---primary:
    run: primary-malignancy_oro-pharyngeal-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-region---primary/output
  primary-malignancy_oro-pharyngeal-floor---primary:
    run: primary-malignancy_oro-pharyngeal-floor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-posterior---primary/output
  primary-malignancy_oro-pharyngeal-anterior---primary:
    run: primary-malignancy_oro-pharyngeal-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-floor---primary/output
  ventral-primary-malignancy_oro-pharyngeal---primary:
    run: ventral-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-anterior---primary/output
  tonsillar-primary-malignancy_oro-pharyngeal---primary:
    run: tonsillar-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ventral-primary-malignancy_oro-pharyngeal---primary/output
  pillar-primary-malignancy_oro-pharyngeal---primary:
    run: pillar-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: tonsillar-primary-malignancy_oro-pharyngeal---primary/output
  primary-malignancy_oro-pharyngeal-fossa---primary:
    run: primary-malignancy_oro-pharyngeal-fossa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: pillar-primary-malignancy_oro-pharyngeal---primary/output
  primary-malignancy_oro-pharyngeal-palate---primary:
    run: primary-malignancy_oro-pharyngeal-palate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-fossa---primary/output
  primary-malignancy_oro-pharyngeal-gland---primary:
    run: primary-malignancy_oro-pharyngeal-gland---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-palate---primary/output
  hypopharyngeal-primary-malignancy_oro-pharyngeal---primary:
    run: hypopharyngeal-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-gland---primary/output
  upper-primary-malignancy_oro-pharyngeal---primary:
    run: upper-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: hypopharyngeal-primary-malignancy_oro-pharyngeal---primary/output
  faucial-primary-malignancy_oro-pharyngeal---primary:
    run: faucial-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: upper-primary-malignancy_oro-pharyngeal---primary/output
  lower-primary-malignancy_oro-pharyngeal---primary:
    run: lower-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: faucial-primary-malignancy_oro-pharyngeal---primary/output
  primary-malignancy_oro-pharyngeal-surface---primary:
    run: primary-malignancy_oro-pharyngeal-surface---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: lower-primary-malignancy_oro-pharyngeal---primary/output
  junctional-primary-malignancy_oro-pharyngeal---primary:
    run: junctional-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-surface---primary/output
  primary-malignancy_oro-pharyngeal-dorsal---primary:
    run: primary-malignancy_oro-pharyngeal-dorsal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: junctional-primary-malignancy_oro-pharyngeal---primary/output
  primary-malignancy_oro-pharyngeal-mucosa---primary:
    run: primary-malignancy_oro-pharyngeal-mucosa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-dorsal---primary/output
  primary-malignancy_oro-pharyngeal-tongue---primary:
    run: primary-malignancy_oro-pharyngeal-tongue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-mucosa---primary/output
  primary-malignancy_oro-pharyngeal-lesion---primary:
    run: primary-malignancy_oro-pharyngeal-lesion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-tongue---primary/output
  primary-malignancy_oro-pharyngeal-mouth---primary:
    run: primary-malignancy_oro-pharyngeal-mouth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-lesion---primary/output
  other-primary-malignancy_oro-pharyngeal---primary:
    run: other-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: primary-malignancy_oro-pharyngeal-mouth---primary/output
  parotid-primary-malignancy_oro-pharyngeal---primary:
    run: parotid-primary-malignancy_oro-pharyngeal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: other-primary-malignancy_oro-pharyngeal---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: parotid-primary-malignancy_oro-pharyngeal---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

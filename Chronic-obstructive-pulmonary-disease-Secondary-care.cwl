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
  chronic-obstructive-pulmonary---secondary:
    run: chronic-obstructive-pulmonary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-specified---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary---secondary/output
  mucopurulent-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary:
    run: mucopurulent-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-specified---secondary/output
  simple-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary:
    run: simple-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: mucopurulent-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-emphysema---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-emphysema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: simple-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-macleod---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-macleod---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-emphysema---secondary/output
  panlobular-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary:
    run: panlobular-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-macleod---secondary/output
  centrilobular-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary:
    run: centrilobular-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: panlobular-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary/output
  other-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary:
    run: other-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: centrilobular-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-respiratory---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-respiratory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: other-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-exacerbation---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-exacerbation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-respiratory---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-asthma---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-asthma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-exacerbation---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-asthmaticus---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-asthmaticus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-asthma---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-bronchiectasis---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-bronchiectasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-asthmaticus---secondary/output
  acute-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary:
    run: acute-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-bronchiectasis---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-bronchitis---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-bronchitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: acute-chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care-unspecified---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-bronchitis---secondary/output
  chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary:
    run: chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care-unspecified---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-secondary-care---secondary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

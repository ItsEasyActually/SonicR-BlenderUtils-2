meta:
  id: sra
  file-extension: bin
  endian: le
doc: Sonic R Character Animation
seq:
  - id: num_limbs
    doc: Number of limbs
    type: u4
  - id: frames
    doc: Frames
    type: frame
    repeat: eos
types:
  frame:
    seq:
      - id: limbs
        type: limb
        repeat: expr
        repeat-expr: _root.num_limbs
  limb:
    seq:
      - id: tx
        type: s4
      - id: ty
        type: s4
      - id: tz
        type: s4
      - id: rx
        type: s4
      - id: ry
        type: s4
      - id: rz
        type: s4


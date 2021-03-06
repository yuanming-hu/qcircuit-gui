class QcircuitGui.Editing.AddWire extends QcircuitGui.Editing.SelectRowOrColumn
  constructor: ->
    @targetClass = null
  
  operateRow: (circuit, i, j1, j2) ->
    circuit.content[i][j1].push(new @targetClass(j2 - j1))

  operateColumn: (circuit, i1, i2, j) ->
    circuit.content[i1][j].push(new @targetClass(i2 - i1, true))

class QcircuitGui.Editing.AddClassicalWire extends QcircuitGui.Editing.AddWire
  constructor: ->
    @actionName = 'Add classical wire'
    @targetClass = QcircuitGui.Drawing.ClassicalWire

class QcircuitGui.Editing.AddQuantumWire extends QcircuitGui.Editing.AddWire
  constructor: ->
    @actionName = 'Add quantum wire'
    @targetClass = QcircuitGui.Drawing.QuantumWire
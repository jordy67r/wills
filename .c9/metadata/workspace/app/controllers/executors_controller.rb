{"filter":false,"title":"executors_controller.rb","tooltip":"/app/controllers/executors_controller.rb","undoManager":{"mark":23,"position":23,"stack":[[{"group":"doc","deltas":[{"start":{"row":49,"column":39},"end":{"row":49,"column":40},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":40},"end":{"row":49,"column":41},"action":"insert","lines":["|"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":41},"end":{"row":49,"column":42},"action":"insert","lines":["|"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":42},"end":{"row":49,"column":43},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":43},"end":{"row":49,"column":70},"action":"insert","lines":["params[:commit] == \"Update\""]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":63},"end":{"row":49,"column":69},"action":"remove","lines":["Update"]},{"start":{"row":49,"column":63},"end":{"row":49,"column":64},"action":"insert","lines":["S"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":64},"end":{"row":49,"column":65},"action":"insert","lines":["A"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":64},"end":{"row":49,"column":65},"action":"remove","lines":["A"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":64},"end":{"row":49,"column":65},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":63},"end":{"row":49,"column":65},"action":"remove","lines":["Sa"]},{"start":{"row":49,"column":63},"end":{"row":49,"column":67},"action":"insert","lines":["Save"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":40},"end":{"row":49,"column":68},"action":"remove","lines":["|| params[:commit] == \"Save\""]}]}],[{"group":"doc","deltas":[{"start":{"row":29,"column":74},"end":{"row":30,"column":0},"action":"insert","lines":["",""]},{"start":{"row":30,"column":0},"end":{"row":30,"column":10},"action":"insert","lines":["          "]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":10},"end":{"row":30,"column":12},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":12},"end":{"row":30,"column":55},"action":"insert","lines":[" @executor.update_attributes(second: false)"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":41},"end":{"row":30,"column":47},"action":"remove","lines":["second"]},{"start":{"row":30,"column":41},"end":{"row":30,"column":42},"action":"insert","lines":["f"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":42},"end":{"row":30,"column":43},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":43},"end":{"row":30,"column":44},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":44},"end":{"row":30,"column":45},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":44},"end":{"row":30,"column":45},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":43},"end":{"row":30,"column":44},"action":"remove","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":43},"end":{"row":30,"column":44},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":44},"end":{"row":30,"column":45},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":45},"end":{"row":30,"column":46},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":7},"end":{"row":49,"column":103},"action":"remove","lines":[" redirect_to will_executor_first_executor_path(@will, @executor) unless @executor.notary_express"]},{"start":{"row":49,"column":7},"end":{"row":54,"column":11},"action":"insert","lines":[" unless @executor.notary_express","          redirect_to will_executor_first_executor_path(@will, @executor)","        else","          redirect_to will_executor_second_executor_path(@will, @executor)","             @executor.update_attributes(first: false)","        end"]}]}]]},"ace":{"folds":[],"scrolltop":540,"scrollleft":0,"selection":{"start":{"row":54,"column":11},"end":{"row":54,"column":11},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":35,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1420458963113,"hash":"a8cd0e5fab56bea8c1780bfc07e82690e5390cd0"}
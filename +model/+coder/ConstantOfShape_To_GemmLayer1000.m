classdef ConstantOfShape_To_GemmLayer1000 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.
    %#codegen

    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    properties (Learnable)
        x_Constant_2_output_
        cls_token
        blocks_0_norm1_weigh
        blocks_0_norm1_bias
        onnx__MatMul_1095
        x_blocks_blocks_0__4
        onnx__MatMul_1106
        blocks_0_norm2_weigh
        blocks_0_norm2_bias
        onnx__MatMul_1107
        onnx__MatMul_1108
        blocks_1_norm1_weigh
        blocks_1_norm1_bias
        onnx__MatMul_1109
        x_blocks_blocks_1__4
        onnx__MatMul_1120
        blocks_1_norm2_weigh
        blocks_1_norm2_bias
        onnx__MatMul_1121
        onnx__MatMul_1122
        blocks_2_norm1_weigh
        blocks_2_norm1_bias
        onnx__MatMul_1123
        x_blocks_blocks_2__4
        onnx__MatMul_1134
        blocks_2_norm2_weigh
        blocks_2_norm2_bias
        onnx__MatMul_1135
        onnx__MatMul_1136
        blocks_3_norm1_weigh
        blocks_3_norm1_bias
        onnx__MatMul_1137
        x_blocks_blocks_3__4
        onnx__MatMul_1148
        blocks_3_norm2_weigh
        blocks_3_norm2_bias
        onnx__MatMul_1149
        onnx__MatMul_1150
        blocks_4_norm1_weigh
        blocks_4_norm1_bias
        onnx__MatMul_1151
        x_blocks_blocks_4__4
        onnx__MatMul_1162
        blocks_4_norm2_weigh
        blocks_4_norm2_bias
        onnx__MatMul_1163
        onnx__MatMul_1164
        blocks_5_norm1_weigh
        blocks_5_norm1_bias
        onnx__MatMul_1165
        x_blocks_blocks_5__4
        onnx__MatMul_1176
        blocks_5_norm2_weigh
        blocks_5_norm2_bias
        onnx__MatMul_1177
        onnx__MatMul_1178
        blocks_6_norm1_weigh
        blocks_6_norm1_bias
        onnx__MatMul_1179
        x_blocks_blocks_6__4
        onnx__MatMul_1190
        blocks_6_norm2_weigh
        blocks_6_norm2_bias
        onnx__MatMul_1191
        onnx__MatMul_1192
        blocks_7_norm1_weigh
        blocks_7_norm1_bias
        onnx__MatMul_1193
        x_blocks_blocks_7__4
        onnx__MatMul_1204
        blocks_7_norm2_weigh
        blocks_7_norm2_bias
        onnx__MatMul_1205
        onnx__MatMul_1206
        blocks_8_norm1_weigh
        blocks_8_norm1_bias
        onnx__MatMul_1207
        x_blocks_blocks_8__4
        onnx__MatMul_1218
        blocks_8_norm2_weigh
        blocks_8_norm2_bias
        onnx__MatMul_1219
        onnx__MatMul_1220
        blocks_9_norm1_weigh
        blocks_9_norm1_bias
        onnx__MatMul_1221
        x_blocks_blocks_9__4
        onnx__MatMul_1232
        blocks_9_norm2_weigh
        blocks_9_norm2_bias
        onnx__MatMul_1233
        onnx__MatMul_1234
        blocks_10_norm1_weig
        blocks_10_norm1_bias
        onnx__MatMul_1235
        x_blocks_blocks_10_4
        onnx__MatMul_1246
        blocks_10_norm2_weig
        blocks_10_norm2_bias
        onnx__MatMul_1247
        onnx__MatMul_1248
        blocks_11_norm1_weig
        blocks_11_norm1_bias
        onnx__MatMul_1249
        x_blocks_blocks_11_4
        onnx__MatMul_1260
        blocks_11_norm2_weig
        blocks_11_norm2_bias
        onnx__MatMul_1261
        onnx__MatMul_1262
        norm_weight
        norm_bias
        head_weight
        head_bias
    end

    properties (State)
    end

    properties
        Vars
        NumDims
    end

    methods(Static, Hidden)
        % Specify the properties of the class that will not be modified
        % after the first assignment.
        function p = matlabCodegenNontunableProperties(~)
            p = {
                % Constants, i.e., Vars, NumDims and all learnables and states
                'Vars'
                'NumDims'
                'x_Constant_2_output_'
                'cls_token'
                'blocks_0_norm1_weigh'
                'blocks_0_norm1_bias'
                'onnx__MatMul_1095'
                'x_blocks_blocks_0__4'
                'onnx__MatMul_1106'
                'blocks_0_norm2_weigh'
                'blocks_0_norm2_bias'
                'onnx__MatMul_1107'
                'onnx__MatMul_1108'
                'blocks_1_norm1_weigh'
                'blocks_1_norm1_bias'
                'onnx__MatMul_1109'
                'x_blocks_blocks_1__4'
                'onnx__MatMul_1120'
                'blocks_1_norm2_weigh'
                'blocks_1_norm2_bias'
                'onnx__MatMul_1121'
                'onnx__MatMul_1122'
                'blocks_2_norm1_weigh'
                'blocks_2_norm1_bias'
                'onnx__MatMul_1123'
                'x_blocks_blocks_2__4'
                'onnx__MatMul_1134'
                'blocks_2_norm2_weigh'
                'blocks_2_norm2_bias'
                'onnx__MatMul_1135'
                'onnx__MatMul_1136'
                'blocks_3_norm1_weigh'
                'blocks_3_norm1_bias'
                'onnx__MatMul_1137'
                'x_blocks_blocks_3__4'
                'onnx__MatMul_1148'
                'blocks_3_norm2_weigh'
                'blocks_3_norm2_bias'
                'onnx__MatMul_1149'
                'onnx__MatMul_1150'
                'blocks_4_norm1_weigh'
                'blocks_4_norm1_bias'
                'onnx__MatMul_1151'
                'x_blocks_blocks_4__4'
                'onnx__MatMul_1162'
                'blocks_4_norm2_weigh'
                'blocks_4_norm2_bias'
                'onnx__MatMul_1163'
                'onnx__MatMul_1164'
                'blocks_5_norm1_weigh'
                'blocks_5_norm1_bias'
                'onnx__MatMul_1165'
                'x_blocks_blocks_5__4'
                'onnx__MatMul_1176'
                'blocks_5_norm2_weigh'
                'blocks_5_norm2_bias'
                'onnx__MatMul_1177'
                'onnx__MatMul_1178'
                'blocks_6_norm1_weigh'
                'blocks_6_norm1_bias'
                'onnx__MatMul_1179'
                'x_blocks_blocks_6__4'
                'onnx__MatMul_1190'
                'blocks_6_norm2_weigh'
                'blocks_6_norm2_bias'
                'onnx__MatMul_1191'
                'onnx__MatMul_1192'
                'blocks_7_norm1_weigh'
                'blocks_7_norm1_bias'
                'onnx__MatMul_1193'
                'x_blocks_blocks_7__4'
                'onnx__MatMul_1204'
                'blocks_7_norm2_weigh'
                'blocks_7_norm2_bias'
                'onnx__MatMul_1205'
                'onnx__MatMul_1206'
                'blocks_8_norm1_weigh'
                'blocks_8_norm1_bias'
                'onnx__MatMul_1207'
                'x_blocks_blocks_8__4'
                'onnx__MatMul_1218'
                'blocks_8_norm2_weigh'
                'blocks_8_norm2_bias'
                'onnx__MatMul_1219'
                'onnx__MatMul_1220'
                'blocks_9_norm1_weigh'
                'blocks_9_norm1_bias'
                'onnx__MatMul_1221'
                'x_blocks_blocks_9__4'
                'onnx__MatMul_1232'
                'blocks_9_norm2_weigh'
                'blocks_9_norm2_bias'
                'onnx__MatMul_1233'
                'onnx__MatMul_1234'
                'blocks_10_norm1_weig'
                'blocks_10_norm1_bias'
                'onnx__MatMul_1235'
                'x_blocks_blocks_10_4'
                'onnx__MatMul_1246'
                'blocks_10_norm2_weig'
                'blocks_10_norm2_bias'
                'onnx__MatMul_1247'
                'onnx__MatMul_1248'
                'blocks_11_norm1_weig'
                'blocks_11_norm1_bias'
                'onnx__MatMul_1249'
                'x_blocks_blocks_11_4'
                'onnx__MatMul_1260'
                'blocks_11_norm2_weig'
                'blocks_11_norm2_bias'
                'onnx__MatMul_1261'
                'onnx__MatMul_1262'
                'norm_weight'
                'norm_bias'
                'head_weight'
                'head_bias'
                };
        end
    end


    methods(Static, Hidden)
        % Instantiate a codegenable layer instance from a MATLAB layer instance
        function this_cg = matlabCodegenToRedirected(mlInstance)
            this_cg = model.coder.ConstantOfShape_To_GemmLayer1000(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = model.ConstantOfShape_To_GemmLayer1000(cgInstance.Name);
            if isstruct(cgInstance.Vars)
                names = fieldnames(cgInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this_ml.Vars.(fieldname) = dlarray(cgInstance.Vars.(fieldname));
                end
            else
                this_ml.Vars = [];
            end
            this_ml.NumDims = cgInstance.NumDims;
            this_ml.x_Constant_2_output_ = cgInstance.x_Constant_2_output_;
            this_ml.cls_token = cgInstance.cls_token;
            this_ml.blocks_0_norm1_weigh = cgInstance.blocks_0_norm1_weigh;
            this_ml.blocks_0_norm1_bias = cgInstance.blocks_0_norm1_bias;
            this_ml.onnx__MatMul_1095 = cgInstance.onnx__MatMul_1095;
            this_ml.x_blocks_blocks_0__4 = cgInstance.x_blocks_blocks_0__4;
            this_ml.onnx__MatMul_1106 = cgInstance.onnx__MatMul_1106;
            this_ml.blocks_0_norm2_weigh = cgInstance.blocks_0_norm2_weigh;
            this_ml.blocks_0_norm2_bias = cgInstance.blocks_0_norm2_bias;
            this_ml.onnx__MatMul_1107 = cgInstance.onnx__MatMul_1107;
            this_ml.onnx__MatMul_1108 = cgInstance.onnx__MatMul_1108;
            this_ml.blocks_1_norm1_weigh = cgInstance.blocks_1_norm1_weigh;
            this_ml.blocks_1_norm1_bias = cgInstance.blocks_1_norm1_bias;
            this_ml.onnx__MatMul_1109 = cgInstance.onnx__MatMul_1109;
            this_ml.x_blocks_blocks_1__4 = cgInstance.x_blocks_blocks_1__4;
            this_ml.onnx__MatMul_1120 = cgInstance.onnx__MatMul_1120;
            this_ml.blocks_1_norm2_weigh = cgInstance.blocks_1_norm2_weigh;
            this_ml.blocks_1_norm2_bias = cgInstance.blocks_1_norm2_bias;
            this_ml.onnx__MatMul_1121 = cgInstance.onnx__MatMul_1121;
            this_ml.onnx__MatMul_1122 = cgInstance.onnx__MatMul_1122;
            this_ml.blocks_2_norm1_weigh = cgInstance.blocks_2_norm1_weigh;
            this_ml.blocks_2_norm1_bias = cgInstance.blocks_2_norm1_bias;
            this_ml.onnx__MatMul_1123 = cgInstance.onnx__MatMul_1123;
            this_ml.x_blocks_blocks_2__4 = cgInstance.x_blocks_blocks_2__4;
            this_ml.onnx__MatMul_1134 = cgInstance.onnx__MatMul_1134;
            this_ml.blocks_2_norm2_weigh = cgInstance.blocks_2_norm2_weigh;
            this_ml.blocks_2_norm2_bias = cgInstance.blocks_2_norm2_bias;
            this_ml.onnx__MatMul_1135 = cgInstance.onnx__MatMul_1135;
            this_ml.onnx__MatMul_1136 = cgInstance.onnx__MatMul_1136;
            this_ml.blocks_3_norm1_weigh = cgInstance.blocks_3_norm1_weigh;
            this_ml.blocks_3_norm1_bias = cgInstance.blocks_3_norm1_bias;
            this_ml.onnx__MatMul_1137 = cgInstance.onnx__MatMul_1137;
            this_ml.x_blocks_blocks_3__4 = cgInstance.x_blocks_blocks_3__4;
            this_ml.onnx__MatMul_1148 = cgInstance.onnx__MatMul_1148;
            this_ml.blocks_3_norm2_weigh = cgInstance.blocks_3_norm2_weigh;
            this_ml.blocks_3_norm2_bias = cgInstance.blocks_3_norm2_bias;
            this_ml.onnx__MatMul_1149 = cgInstance.onnx__MatMul_1149;
            this_ml.onnx__MatMul_1150 = cgInstance.onnx__MatMul_1150;
            this_ml.blocks_4_norm1_weigh = cgInstance.blocks_4_norm1_weigh;
            this_ml.blocks_4_norm1_bias = cgInstance.blocks_4_norm1_bias;
            this_ml.onnx__MatMul_1151 = cgInstance.onnx__MatMul_1151;
            this_ml.x_blocks_blocks_4__4 = cgInstance.x_blocks_blocks_4__4;
            this_ml.onnx__MatMul_1162 = cgInstance.onnx__MatMul_1162;
            this_ml.blocks_4_norm2_weigh = cgInstance.blocks_4_norm2_weigh;
            this_ml.blocks_4_norm2_bias = cgInstance.blocks_4_norm2_bias;
            this_ml.onnx__MatMul_1163 = cgInstance.onnx__MatMul_1163;
            this_ml.onnx__MatMul_1164 = cgInstance.onnx__MatMul_1164;
            this_ml.blocks_5_norm1_weigh = cgInstance.blocks_5_norm1_weigh;
            this_ml.blocks_5_norm1_bias = cgInstance.blocks_5_norm1_bias;
            this_ml.onnx__MatMul_1165 = cgInstance.onnx__MatMul_1165;
            this_ml.x_blocks_blocks_5__4 = cgInstance.x_blocks_blocks_5__4;
            this_ml.onnx__MatMul_1176 = cgInstance.onnx__MatMul_1176;
            this_ml.blocks_5_norm2_weigh = cgInstance.blocks_5_norm2_weigh;
            this_ml.blocks_5_norm2_bias = cgInstance.blocks_5_norm2_bias;
            this_ml.onnx__MatMul_1177 = cgInstance.onnx__MatMul_1177;
            this_ml.onnx__MatMul_1178 = cgInstance.onnx__MatMul_1178;
            this_ml.blocks_6_norm1_weigh = cgInstance.blocks_6_norm1_weigh;
            this_ml.blocks_6_norm1_bias = cgInstance.blocks_6_norm1_bias;
            this_ml.onnx__MatMul_1179 = cgInstance.onnx__MatMul_1179;
            this_ml.x_blocks_blocks_6__4 = cgInstance.x_blocks_blocks_6__4;
            this_ml.onnx__MatMul_1190 = cgInstance.onnx__MatMul_1190;
            this_ml.blocks_6_norm2_weigh = cgInstance.blocks_6_norm2_weigh;
            this_ml.blocks_6_norm2_bias = cgInstance.blocks_6_norm2_bias;
            this_ml.onnx__MatMul_1191 = cgInstance.onnx__MatMul_1191;
            this_ml.onnx__MatMul_1192 = cgInstance.onnx__MatMul_1192;
            this_ml.blocks_7_norm1_weigh = cgInstance.blocks_7_norm1_weigh;
            this_ml.blocks_7_norm1_bias = cgInstance.blocks_7_norm1_bias;
            this_ml.onnx__MatMul_1193 = cgInstance.onnx__MatMul_1193;
            this_ml.x_blocks_blocks_7__4 = cgInstance.x_blocks_blocks_7__4;
            this_ml.onnx__MatMul_1204 = cgInstance.onnx__MatMul_1204;
            this_ml.blocks_7_norm2_weigh = cgInstance.blocks_7_norm2_weigh;
            this_ml.blocks_7_norm2_bias = cgInstance.blocks_7_norm2_bias;
            this_ml.onnx__MatMul_1205 = cgInstance.onnx__MatMul_1205;
            this_ml.onnx__MatMul_1206 = cgInstance.onnx__MatMul_1206;
            this_ml.blocks_8_norm1_weigh = cgInstance.blocks_8_norm1_weigh;
            this_ml.blocks_8_norm1_bias = cgInstance.blocks_8_norm1_bias;
            this_ml.onnx__MatMul_1207 = cgInstance.onnx__MatMul_1207;
            this_ml.x_blocks_blocks_8__4 = cgInstance.x_blocks_blocks_8__4;
            this_ml.onnx__MatMul_1218 = cgInstance.onnx__MatMul_1218;
            this_ml.blocks_8_norm2_weigh = cgInstance.blocks_8_norm2_weigh;
            this_ml.blocks_8_norm2_bias = cgInstance.blocks_8_norm2_bias;
            this_ml.onnx__MatMul_1219 = cgInstance.onnx__MatMul_1219;
            this_ml.onnx__MatMul_1220 = cgInstance.onnx__MatMul_1220;
            this_ml.blocks_9_norm1_weigh = cgInstance.blocks_9_norm1_weigh;
            this_ml.blocks_9_norm1_bias = cgInstance.blocks_9_norm1_bias;
            this_ml.onnx__MatMul_1221 = cgInstance.onnx__MatMul_1221;
            this_ml.x_blocks_blocks_9__4 = cgInstance.x_blocks_blocks_9__4;
            this_ml.onnx__MatMul_1232 = cgInstance.onnx__MatMul_1232;
            this_ml.blocks_9_norm2_weigh = cgInstance.blocks_9_norm2_weigh;
            this_ml.blocks_9_norm2_bias = cgInstance.blocks_9_norm2_bias;
            this_ml.onnx__MatMul_1233 = cgInstance.onnx__MatMul_1233;
            this_ml.onnx__MatMul_1234 = cgInstance.onnx__MatMul_1234;
            this_ml.blocks_10_norm1_weig = cgInstance.blocks_10_norm1_weig;
            this_ml.blocks_10_norm1_bias = cgInstance.blocks_10_norm1_bias;
            this_ml.onnx__MatMul_1235 = cgInstance.onnx__MatMul_1235;
            this_ml.x_blocks_blocks_10_4 = cgInstance.x_blocks_blocks_10_4;
            this_ml.onnx__MatMul_1246 = cgInstance.onnx__MatMul_1246;
            this_ml.blocks_10_norm2_weig = cgInstance.blocks_10_norm2_weig;
            this_ml.blocks_10_norm2_bias = cgInstance.blocks_10_norm2_bias;
            this_ml.onnx__MatMul_1247 = cgInstance.onnx__MatMul_1247;
            this_ml.onnx__MatMul_1248 = cgInstance.onnx__MatMul_1248;
            this_ml.blocks_11_norm1_weig = cgInstance.blocks_11_norm1_weig;
            this_ml.blocks_11_norm1_bias = cgInstance.blocks_11_norm1_bias;
            this_ml.onnx__MatMul_1249 = cgInstance.onnx__MatMul_1249;
            this_ml.x_blocks_blocks_11_4 = cgInstance.x_blocks_blocks_11_4;
            this_ml.onnx__MatMul_1260 = cgInstance.onnx__MatMul_1260;
            this_ml.blocks_11_norm2_weig = cgInstance.blocks_11_norm2_weig;
            this_ml.blocks_11_norm2_bias = cgInstance.blocks_11_norm2_bias;
            this_ml.onnx__MatMul_1261 = cgInstance.onnx__MatMul_1261;
            this_ml.onnx__MatMul_1262 = cgInstance.onnx__MatMul_1262;
            this_ml.norm_weight = cgInstance.norm_weight;
            this_ml.norm_bias = cgInstance.norm_bias;
            this_ml.head_weight = cgInstance.head_weight;
            this_ml.head_bias = cgInstance.head_bias;
        end
    end

    methods
        function this = ConstantOfShape_To_GemmLayer1000(mlInstance)
            this.Name = mlInstance.Name;
            this.OutputNames = {'x1088'};
            if isstruct(mlInstance.Vars)
                names = fieldnames(mlInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this.Vars.(fieldname) = model.coder.ops.extractIfDlarray(mlInstance.Vars.(fieldname));
                end
            else
                this.Vars = [];
            end

            this.NumDims = mlInstance.NumDims;
            this.x_Constant_2_output_ = mlInstance.x_Constant_2_output_;
            this.cls_token = mlInstance.cls_token;
            this.blocks_0_norm1_weigh = mlInstance.blocks_0_norm1_weigh;
            this.blocks_0_norm1_bias = mlInstance.blocks_0_norm1_bias;
            this.onnx__MatMul_1095 = mlInstance.onnx__MatMul_1095;
            this.x_blocks_blocks_0__4 = mlInstance.x_blocks_blocks_0__4;
            this.onnx__MatMul_1106 = mlInstance.onnx__MatMul_1106;
            this.blocks_0_norm2_weigh = mlInstance.blocks_0_norm2_weigh;
            this.blocks_0_norm2_bias = mlInstance.blocks_0_norm2_bias;
            this.onnx__MatMul_1107 = mlInstance.onnx__MatMul_1107;
            this.onnx__MatMul_1108 = mlInstance.onnx__MatMul_1108;
            this.blocks_1_norm1_weigh = mlInstance.blocks_1_norm1_weigh;
            this.blocks_1_norm1_bias = mlInstance.blocks_1_norm1_bias;
            this.onnx__MatMul_1109 = mlInstance.onnx__MatMul_1109;
            this.x_blocks_blocks_1__4 = mlInstance.x_blocks_blocks_1__4;
            this.onnx__MatMul_1120 = mlInstance.onnx__MatMul_1120;
            this.blocks_1_norm2_weigh = mlInstance.blocks_1_norm2_weigh;
            this.blocks_1_norm2_bias = mlInstance.blocks_1_norm2_bias;
            this.onnx__MatMul_1121 = mlInstance.onnx__MatMul_1121;
            this.onnx__MatMul_1122 = mlInstance.onnx__MatMul_1122;
            this.blocks_2_norm1_weigh = mlInstance.blocks_2_norm1_weigh;
            this.blocks_2_norm1_bias = mlInstance.blocks_2_norm1_bias;
            this.onnx__MatMul_1123 = mlInstance.onnx__MatMul_1123;
            this.x_blocks_blocks_2__4 = mlInstance.x_blocks_blocks_2__4;
            this.onnx__MatMul_1134 = mlInstance.onnx__MatMul_1134;
            this.blocks_2_norm2_weigh = mlInstance.blocks_2_norm2_weigh;
            this.blocks_2_norm2_bias = mlInstance.blocks_2_norm2_bias;
            this.onnx__MatMul_1135 = mlInstance.onnx__MatMul_1135;
            this.onnx__MatMul_1136 = mlInstance.onnx__MatMul_1136;
            this.blocks_3_norm1_weigh = mlInstance.blocks_3_norm1_weigh;
            this.blocks_3_norm1_bias = mlInstance.blocks_3_norm1_bias;
            this.onnx__MatMul_1137 = mlInstance.onnx__MatMul_1137;
            this.x_blocks_blocks_3__4 = mlInstance.x_blocks_blocks_3__4;
            this.onnx__MatMul_1148 = mlInstance.onnx__MatMul_1148;
            this.blocks_3_norm2_weigh = mlInstance.blocks_3_norm2_weigh;
            this.blocks_3_norm2_bias = mlInstance.blocks_3_norm2_bias;
            this.onnx__MatMul_1149 = mlInstance.onnx__MatMul_1149;
            this.onnx__MatMul_1150 = mlInstance.onnx__MatMul_1150;
            this.blocks_4_norm1_weigh = mlInstance.blocks_4_norm1_weigh;
            this.blocks_4_norm1_bias = mlInstance.blocks_4_norm1_bias;
            this.onnx__MatMul_1151 = mlInstance.onnx__MatMul_1151;
            this.x_blocks_blocks_4__4 = mlInstance.x_blocks_blocks_4__4;
            this.onnx__MatMul_1162 = mlInstance.onnx__MatMul_1162;
            this.blocks_4_norm2_weigh = mlInstance.blocks_4_norm2_weigh;
            this.blocks_4_norm2_bias = mlInstance.blocks_4_norm2_bias;
            this.onnx__MatMul_1163 = mlInstance.onnx__MatMul_1163;
            this.onnx__MatMul_1164 = mlInstance.onnx__MatMul_1164;
            this.blocks_5_norm1_weigh = mlInstance.blocks_5_norm1_weigh;
            this.blocks_5_norm1_bias = mlInstance.blocks_5_norm1_bias;
            this.onnx__MatMul_1165 = mlInstance.onnx__MatMul_1165;
            this.x_blocks_blocks_5__4 = mlInstance.x_blocks_blocks_5__4;
            this.onnx__MatMul_1176 = mlInstance.onnx__MatMul_1176;
            this.blocks_5_norm2_weigh = mlInstance.blocks_5_norm2_weigh;
            this.blocks_5_norm2_bias = mlInstance.blocks_5_norm2_bias;
            this.onnx__MatMul_1177 = mlInstance.onnx__MatMul_1177;
            this.onnx__MatMul_1178 = mlInstance.onnx__MatMul_1178;
            this.blocks_6_norm1_weigh = mlInstance.blocks_6_norm1_weigh;
            this.blocks_6_norm1_bias = mlInstance.blocks_6_norm1_bias;
            this.onnx__MatMul_1179 = mlInstance.onnx__MatMul_1179;
            this.x_blocks_blocks_6__4 = mlInstance.x_blocks_blocks_6__4;
            this.onnx__MatMul_1190 = mlInstance.onnx__MatMul_1190;
            this.blocks_6_norm2_weigh = mlInstance.blocks_6_norm2_weigh;
            this.blocks_6_norm2_bias = mlInstance.blocks_6_norm2_bias;
            this.onnx__MatMul_1191 = mlInstance.onnx__MatMul_1191;
            this.onnx__MatMul_1192 = mlInstance.onnx__MatMul_1192;
            this.blocks_7_norm1_weigh = mlInstance.blocks_7_norm1_weigh;
            this.blocks_7_norm1_bias = mlInstance.blocks_7_norm1_bias;
            this.onnx__MatMul_1193 = mlInstance.onnx__MatMul_1193;
            this.x_blocks_blocks_7__4 = mlInstance.x_blocks_blocks_7__4;
            this.onnx__MatMul_1204 = mlInstance.onnx__MatMul_1204;
            this.blocks_7_norm2_weigh = mlInstance.blocks_7_norm2_weigh;
            this.blocks_7_norm2_bias = mlInstance.blocks_7_norm2_bias;
            this.onnx__MatMul_1205 = mlInstance.onnx__MatMul_1205;
            this.onnx__MatMul_1206 = mlInstance.onnx__MatMul_1206;
            this.blocks_8_norm1_weigh = mlInstance.blocks_8_norm1_weigh;
            this.blocks_8_norm1_bias = mlInstance.blocks_8_norm1_bias;
            this.onnx__MatMul_1207 = mlInstance.onnx__MatMul_1207;
            this.x_blocks_blocks_8__4 = mlInstance.x_blocks_blocks_8__4;
            this.onnx__MatMul_1218 = mlInstance.onnx__MatMul_1218;
            this.blocks_8_norm2_weigh = mlInstance.blocks_8_norm2_weigh;
            this.blocks_8_norm2_bias = mlInstance.blocks_8_norm2_bias;
            this.onnx__MatMul_1219 = mlInstance.onnx__MatMul_1219;
            this.onnx__MatMul_1220 = mlInstance.onnx__MatMul_1220;
            this.blocks_9_norm1_weigh = mlInstance.blocks_9_norm1_weigh;
            this.blocks_9_norm1_bias = mlInstance.blocks_9_norm1_bias;
            this.onnx__MatMul_1221 = mlInstance.onnx__MatMul_1221;
            this.x_blocks_blocks_9__4 = mlInstance.x_blocks_blocks_9__4;
            this.onnx__MatMul_1232 = mlInstance.onnx__MatMul_1232;
            this.blocks_9_norm2_weigh = mlInstance.blocks_9_norm2_weigh;
            this.blocks_9_norm2_bias = mlInstance.blocks_9_norm2_bias;
            this.onnx__MatMul_1233 = mlInstance.onnx__MatMul_1233;
            this.onnx__MatMul_1234 = mlInstance.onnx__MatMul_1234;
            this.blocks_10_norm1_weig = mlInstance.blocks_10_norm1_weig;
            this.blocks_10_norm1_bias = mlInstance.blocks_10_norm1_bias;
            this.onnx__MatMul_1235 = mlInstance.onnx__MatMul_1235;
            this.x_blocks_blocks_10_4 = mlInstance.x_blocks_blocks_10_4;
            this.onnx__MatMul_1246 = mlInstance.onnx__MatMul_1246;
            this.blocks_10_norm2_weig = mlInstance.blocks_10_norm2_weig;
            this.blocks_10_norm2_bias = mlInstance.blocks_10_norm2_bias;
            this.onnx__MatMul_1247 = mlInstance.onnx__MatMul_1247;
            this.onnx__MatMul_1248 = mlInstance.onnx__MatMul_1248;
            this.blocks_11_norm1_weig = mlInstance.blocks_11_norm1_weig;
            this.blocks_11_norm1_bias = mlInstance.blocks_11_norm1_bias;
            this.onnx__MatMul_1249 = mlInstance.onnx__MatMul_1249;
            this.x_blocks_blocks_11_4 = mlInstance.x_blocks_blocks_11_4;
            this.onnx__MatMul_1260 = mlInstance.onnx__MatMul_1260;
            this.blocks_11_norm2_weig = mlInstance.blocks_11_norm2_weig;
            this.blocks_11_norm2_bias = mlInstance.blocks_11_norm2_bias;
            this.onnx__MatMul_1261 = mlInstance.onnx__MatMul_1261;
            this.onnx__MatMul_1262 = mlInstance.onnx__MatMul_1262;
            this.norm_weight = mlInstance.norm_weight;
            this.norm_bias = mlInstance.norm_bias;
            this.head_weight = mlInstance.head_weight;
            this.head_bias = mlInstance.head_bias;
        end

        function [x1088] = predict(this, x_patch_embed_proj_C__)
            if isdlarray(x_patch_embed_proj_C__)
                x_patch_embed_proj_C_ = stripdims(x_patch_embed_proj_C__);
            else
                x_patch_embed_proj_C_ = x_patch_embed_proj_C__;
            end
            x_patch_embed_proj_CNumDims = 4;
            x_patch_embed_proj_C = model.coder.ops.permuteInputVar(x_patch_embed_proj_C_, [4 3 1 2], 4);

            [x1088__, x1088NumDims__] = ConstantOfShape_To_GGraph1000(this, x_patch_embed_proj_C, x_patch_embed_proj_CNumDims, false);
            x1088_ = model.coder.ops.permuteOutputVar(x1088__, ['as-is'], 2);

            x1088 = dlarray(single(x1088_), repmat('U', 1, max(2, coder.const(x1088NumDims__))));
        end

        function [x1088, x1088NumDims1041] = ConstantOfShape_To_GGraph1000(this, x_patch_embed_proj_C, x_patch_embed_proj_CNumDims, Training)

            % Execute the operators:
            % Shape:
            [x_patch_embed_Shape_, x_patch_embed_Shape_NumDims] = model.coder.ops.onnxShape(x_patch_embed_proj_C, coder.const(x_patch_embed_proj_CNumDims), 0, coder.const(x_patch_embed_proj_CNumDims)+1);

            % Slice:
            [indices1000, x_patch_embed_Slice_NumDims] = model.coder.ops.prepareSliceArgs(x_patch_embed_Shape_, this.Vars.x_patch_embed_Consta, this.Vars.x_patch_embed_Cons_1, this.Vars.x_patch_embed_Cons_3, '', coder.const(x_patch_embed_Shape_NumDims));
            x_patch_embed_Slice_ = x_patch_embed_Shape_(indices1000{:});

            % Concat:
            [x_patch_embed_Concat, x_patch_embed_ConcatNumDims] = model.coder.ops.onnxConcat(0, {x_patch_embed_Slice_, this.Vars.x_patch_embed_Cons_2}, [coder.const(x_patch_embed_Slice_NumDims), this.NumDims.x_patch_embed_Cons_2]);

            % Reshape:
            [shape1001, x_patch_embed_ReshapNumDims] = model.coder.ops.prepareReshapeArgs(x_patch_embed_proj_C, x_patch_embed_Concat, coder.const(x_patch_embed_proj_CNumDims), 0);
            x_patch_embed_Reshap = reshape(x_patch_embed_proj_C, shape1001{:});

            % Transpose:
            [perm1002, x_patch_embed_TranspNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1001, coder.const(x_patch_embed_ReshapNumDims));
            if isempty(perm1002)
                x_patch_embed_Transp = x_patch_embed_Reshap;
            else
                x_patch_embed_Transp = permute(model.coder.ops.extractIfDlarray(x_patch_embed_Reshap), perm1002);
            end

            % ConstantOfShape:
            [x_ConstantOfShape_ou, x_ConstantOfShape_ouNumDims] = model.coder.ops.onnxConstantOfShape(this.Vars.ConstantOfShapeValue1002, this.x_Constant_2_output_);

            % Mul:
            x_Mul_output_0 = x_ConstantOfShape_ou .* this.Vars.x_Constant_3_output_;
            x_Mul_output_0NumDims = max(coder.const(x_ConstantOfShape_ouNumDims), this.NumDims.x_Constant_3_output_);

            % Equal:
            x_Equal_output_0 = this.Vars.x_Constant_1_output_ == x_Mul_output_0;
            x_Equal_output_0NumDims = max(this.NumDims.x_Constant_1_output_, coder.const(x_Mul_output_0NumDims));

            % Where:
            [x_Where_output_0, x_Where_output_0NumDims] = model.coder.ops.onnxWhere(x_Equal_output_0, x_ConstantOfShape_ou, this.Vars.x_Constant_1_output_, coder.const(x_Equal_output_0NumDims), coder.const(x_ConstantOfShape_ouNumDims), this.NumDims.x_Constant_1_output_);

            % Expand:
            [shape1003, x_Expand_output_0NumDims] = model.coder.ops.prepareExpandArgs(this.NumDims.cls_token, x_Where_output_0);
            x_Expand_output_0 = this.cls_token + zeros(shape1003);

            % Concat:
            [x_Concat_output_0, x_Concat_output_0NumDims] = model.coder.ops.onnxConcat(1, {x_Expand_output_0, x_patch_embed_Transp}, [coder.const(x_Expand_output_0NumDims), coder.const(x_patch_embed_TranspNumDims)]);

            % Add:
            x_Add_output_0 = x_Concat_output_0 + this.Vars.pos_embed;
            x_Add_output_0NumDims = max(coder.const(x_Concat_output_0NumDims), this.NumDims.pos_embed);

            % LayerNormalization:
            [x_blocks_blocks_0_no, x_blocks_blocks_0_noNumDims] = model.coder.ops.onnxLayerNormalization(x_Add_output_0, this.blocks_0_norm1_weigh, this.blocks_0_norm1_bias, -1, 1.000000e-06, coder.const(x_Add_output_0NumDims));

            % MatMul:
            [x_blocks_blocks_0_38, x_blocks_blocks_0_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_0_no, this.onnx__MatMul_1095, coder.const(x_blocks_blocks_0_noNumDims), this.NumDims.onnx__MatMul_1095);

            % Add:
            x_blocks_blocks_0_37 = this.Vars.blocks_0_attn_qkv_bi + x_blocks_blocks_0_38;
            x_blocks_blocks_0_37NumDims = max(this.NumDims.blocks_0_attn_qkv_bi, coder.const(x_blocks_blocks_0_38NumDims));

            % Reshape:
            [shape1004, x_blocks_blocks_0_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_0_37, this.Vars.x_blocks_blocks_0_12, coder.const(x_blocks_blocks_0_37NumDims), 0);
            x_blocks_blocks_0_19 = reshape(x_blocks_blocks_0_37, shape1004{:});

            % Transpose:
            [perm1005, x_blocks_blocks_0_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1003, coder.const(x_blocks_blocks_0_19NumDims));
            if isempty(perm1005)
                x_blocks_blocks_0_34 = x_blocks_blocks_0_19;
            else
                x_blocks_blocks_0_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_0_19), perm1005);
            end

            % Split:
            [x_blocks_blocks_0_23, x_blocks_blocks_0_24, x_blocks_blocks_0_25, x_blocks_blocks_0_23NumDims, x_blocks_blocks_0_24NumDims, x_blocks_blocks_0_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_0_34, 0, this.x_blocks_blocks_0__4, 3, coder.const(x_blocks_blocks_0_34NumDims));

            % Squeeze:
            [x_blocks_blocks_0_31, x_blocks_blocks_0_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_0_23, this.Vars.x_blocks_blocks_0__5, coder.const(x_blocks_blocks_0_23NumDims));

            % Squeeze:
            [x_blocks_blocks_0_29, x_blocks_blocks_0_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_0_24, this.Vars.x_blocks_blocks_0__6, coder.const(x_blocks_blocks_0_24NumDims));

            % Squeeze:
            [x_blocks_blocks_0_30, x_blocks_blocks_0_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_0_25, this.Vars.x_blocks_blocks_0__7, coder.const(x_blocks_blocks_0_25NumDims));

            % Shape:
            [x_blocks_blocks_0_20, x_blocks_blocks_0_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_0_31, coder.const(x_blocks_blocks_0_31NumDims), 0, coder.const(x_blocks_blocks_0_31NumDims)+1);

            % Slice:
            [indices1006, x_blocks_blocks_0_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_0_20, this.Vars.x_blocks_blocks_0__8, this.Vars.x_blocks_blocks_0__9, '', '', coder.const(x_blocks_blocks_0_20NumDims));
            x_blocks_blocks_0_21 = x_blocks_blocks_0_20(indices1006{:});

            % Cast:
            x_blocks_blocks_0_at = single(x_blocks_blocks_0_21);
            x_blocks_blocks_0_atNumDims = coder.const(x_blocks_blocks_0_21NumDims);

            % Sqrt:
            x_blocks_blocks_0_28 = sqrt(x_blocks_blocks_0_at);
            x_blocks_blocks_0_28NumDims = coder.const(x_blocks_blocks_0_atNumDims);

            % Div:
            x_blocks_blocks_0_13 = this.Vars.x_blocks_blocks_0_10 ./ x_blocks_blocks_0_28;
            x_blocks_blocks_0_13NumDims = max(this.NumDims.x_blocks_blocks_0_10, coder.const(x_blocks_blocks_0_28NumDims));

            % Transpose:
            [perm1007, x_blocks_blocks_0_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1004, coder.const(x_blocks_blocks_0_29NumDims));
            if isempty(perm1007)
                x_blocks_blocks_0_32 = x_blocks_blocks_0_29;
            else
                x_blocks_blocks_0_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_0_29), perm1007);
            end

            % Sqrt:
            x_blocks_blocks_0_26 = sqrt(x_blocks_blocks_0_13);
            x_blocks_blocks_0_26NumDims = coder.const(x_blocks_blocks_0_13NumDims);

            % Mul:
            x_blocks_blocks_0_17 = x_blocks_blocks_0_31 .* x_blocks_blocks_0_26;
            x_blocks_blocks_0_17NumDims = max(coder.const(x_blocks_blocks_0_31NumDims), coder.const(x_blocks_blocks_0_26NumDims));

            % Sqrt:
            x_blocks_blocks_0_27 = sqrt(x_blocks_blocks_0_13);
            x_blocks_blocks_0_27NumDims = coder.const(x_blocks_blocks_0_13NumDims);

            % Mul:
            x_blocks_blocks_0_16 = x_blocks_blocks_0_32 .* x_blocks_blocks_0_27;
            x_blocks_blocks_0_16NumDims = max(coder.const(x_blocks_blocks_0_32NumDims), coder.const(x_blocks_blocks_0_27NumDims));

            % MatMul:
            [x_blocks_blocks_0_15, x_blocks_blocks_0_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_0_17, x_blocks_blocks_0_16, coder.const(x_blocks_blocks_0_17NumDims), coder.const(x_blocks_blocks_0_16NumDims));

            % Softmax:
            [x_blocks_blocks_0_22, x_blocks_blocks_0_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_0_15, -1, coder.const(x_blocks_blocks_0_15NumDims));

            % MatMul:
            [x_blocks_blocks_0_14, x_blocks_blocks_0_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_0_22, x_blocks_blocks_0_30, coder.const(x_blocks_blocks_0_22NumDims), coder.const(x_blocks_blocks_0_30NumDims));

            % Transpose:
            [perm1008, x_blocks_blocks_0_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1005, coder.const(x_blocks_blocks_0_14NumDims));
            if isempty(perm1008)
                x_blocks_blocks_0_33 = x_blocks_blocks_0_14;
            else
                x_blocks_blocks_0_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_0_14), perm1008);
            end

            % Reshape:
            [shape1009, x_blocks_blocks_0_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_0_33, this.Vars.x_blocks_blocks_0_11, coder.const(x_blocks_blocks_0_33NumDims), 0);
            x_blocks_blocks_0_18 = reshape(x_blocks_blocks_0_33, shape1009{:});

            % MatMul:
            [x_blocks_blocks_0_36, x_blocks_blocks_0_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_0_18, this.onnx__MatMul_1106, coder.const(x_blocks_blocks_0_18NumDims), this.NumDims.onnx__MatMul_1106);

            % Add:
            x_blocks_blocks_0_35 = this.Vars.blocks_0_attn_proj_b + x_blocks_blocks_0_36;
            x_blocks_blocks_0_35NumDims = max(this.NumDims.blocks_0_attn_proj_b, coder.const(x_blocks_blocks_0_36NumDims));

            % Add:
            x_blocks_blocks_0__1 = x_Add_output_0 + x_blocks_blocks_0_35;
            x_blocks_blocks_0__1NumDims = max(coder.const(x_Add_output_0NumDims), coder.const(x_blocks_blocks_0_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_0_96, x_blocks_blocks_0_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_0__1, this.blocks_0_norm2_weigh, this.blocks_0_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_0__1NumDims));

            % MatMul:
            [x_blocks_blocks_0_81, x_blocks_blocks_0_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_0_96, this.onnx__MatMul_1107, coder.const(x_blocks_blocks_0_96NumDims), this.NumDims.onnx__MatMul_1107);

            % Add:
            x_blocks_blocks_0_80 = this.Vars.blocks_0_mlp_fc1_bia + x_blocks_blocks_0_81;
            x_blocks_blocks_0_80NumDims = max(this.NumDims.blocks_0_mlp_fc1_bia, coder.const(x_blocks_blocks_0_81NumDims));

            % Div:
            x_blocks_blocks_0_76 = x_blocks_blocks_0_80 ./ this.Vars.x_blocks_blocks_0_75;
            x_blocks_blocks_0_76NumDims = max(coder.const(x_blocks_blocks_0_80NumDims), this.NumDims.x_blocks_blocks_0_75);

            % Erf:
            x_blocks_blocks_0_77 = erf(x_blocks_blocks_0_76);
            x_blocks_blocks_0_77NumDims = coder.const(x_blocks_blocks_0_76NumDims);

            % Add:
            x_blocks_blocks_0_ml = x_blocks_blocks_0_77 + this.Vars.x_blocks_blocks_0_73;
            x_blocks_blocks_0_mlNumDims = max(coder.const(x_blocks_blocks_0_77NumDims), this.NumDims.x_blocks_blocks_0_73);

            % Mul:
            x_blocks_blocks_0_79 = x_blocks_blocks_0_80 .* x_blocks_blocks_0_ml;
            x_blocks_blocks_0_79NumDims = max(coder.const(x_blocks_blocks_0_80NumDims), coder.const(x_blocks_blocks_0_mlNumDims));

            % Mul:
            x_blocks_blocks_0_78 = x_blocks_blocks_0_79 .* this.Vars.x_blocks_blocks_0_74;
            x_blocks_blocks_0_78NumDims = max(coder.const(x_blocks_blocks_0_79NumDims), this.NumDims.x_blocks_blocks_0_74);

            % MatMul:
            [x_blocks_blocks_0_83, x_blocks_blocks_0_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_0_78, this.onnx__MatMul_1108, coder.const(x_blocks_blocks_0_78NumDims), this.NumDims.onnx__MatMul_1108);

            % Add:
            x_blocks_blocks_0_82 = this.Vars.blocks_0_mlp_fc2_bia + x_blocks_blocks_0_83;
            x_blocks_blocks_0_82NumDims = max(this.NumDims.blocks_0_mlp_fc2_bia, coder.const(x_blocks_blocks_0_83NumDims));

            % Add:
            x_blocks_blocks_0_Ad = x_blocks_blocks_0__1 + x_blocks_blocks_0_82;
            x_blocks_blocks_0_AdNumDims = max(coder.const(x_blocks_blocks_0__1NumDims), coder.const(x_blocks_blocks_0_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_1_no, x_blocks_blocks_1_noNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_0_Ad, this.blocks_1_norm1_weigh, this.blocks_1_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_0_AdNumDims));

            % MatMul:
            [x_blocks_blocks__216, x_blocks_blocks__216NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_1_no, this.onnx__MatMul_1109, coder.const(x_blocks_blocks_1_noNumDims), this.NumDims.onnx__MatMul_1109);

            % Add:
            x_blocks_blocks__215 = this.Vars.blocks_1_attn_qkv_bi + x_blocks_blocks__216;
            x_blocks_blocks__215NumDims = max(this.NumDims.blocks_1_attn_qkv_bi, coder.const(x_blocks_blocks__216NumDims));

            % Reshape:
            [shape1010, x_blocks_blocks__197NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks__215, this.Vars.x_blocks_blocks__190, coder.const(x_blocks_blocks__215NumDims), 0);
            x_blocks_blocks__197 = reshape(x_blocks_blocks__215, shape1010{:});

            % Transpose:
            [perm1011, x_blocks_blocks__212NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1006, coder.const(x_blocks_blocks__197NumDims));
            if isempty(perm1011)
                x_blocks_blocks__212 = x_blocks_blocks__197;
            else
                x_blocks_blocks__212 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks__197), perm1011);
            end

            % Split:
            [x_blocks_blocks__201, x_blocks_blocks__202, x_blocks_blocks__203, x_blocks_blocks__201NumDims, x_blocks_blocks__202NumDims, x_blocks_blocks__203NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks__212, 0, this.x_blocks_blocks_1__4, 3, coder.const(x_blocks_blocks__212NumDims));

            % Squeeze:
            [x_blocks_blocks__209, x_blocks_blocks__209NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks__201, this.Vars.x_blocks_blocks_1__5, coder.const(x_blocks_blocks__201NumDims));

            % Squeeze:
            [x_blocks_blocks__207, x_blocks_blocks__207NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks__202, this.Vars.x_blocks_blocks_1__6, coder.const(x_blocks_blocks__202NumDims));

            % Squeeze:
            [x_blocks_blocks__208, x_blocks_blocks__208NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks__203, this.Vars.x_blocks_blocks_1__7, coder.const(x_blocks_blocks__203NumDims));

            % Shape:
            [x_blocks_blocks__198, x_blocks_blocks__198NumDims] = model.coder.ops.onnxShape(x_blocks_blocks__209, coder.const(x_blocks_blocks__209NumDims), 0, coder.const(x_blocks_blocks__209NumDims)+1);

            % Slice:
            [indices1012, x_blocks_blocks__199NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks__198, this.Vars.x_blocks_blocks_1__8, this.Vars.x_blocks_blocks_1__9, '', '', coder.const(x_blocks_blocks__198NumDims));
            x_blocks_blocks__199 = x_blocks_blocks__198(indices1012{:});

            % Cast:
            x_blocks_blocks_1_at = single(x_blocks_blocks__199);
            x_blocks_blocks_1_atNumDims = coder.const(x_blocks_blocks__199NumDims);

            % Sqrt:
            x_blocks_blocks__206 = sqrt(x_blocks_blocks_1_at);
            x_blocks_blocks__206NumDims = coder.const(x_blocks_blocks_1_atNumDims);

            % Div:
            x_blocks_blocks__191 = this.Vars.x_blocks_blocks__188 ./ x_blocks_blocks__206;
            x_blocks_blocks__191NumDims = max(this.NumDims.x_blocks_blocks__188, coder.const(x_blocks_blocks__206NumDims));

            % Transpose:
            [perm1013, x_blocks_blocks__210NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1007, coder.const(x_blocks_blocks__207NumDims));
            if isempty(perm1013)
                x_blocks_blocks__210 = x_blocks_blocks__207;
            else
                x_blocks_blocks__210 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks__207), perm1013);
            end

            % Sqrt:
            x_blocks_blocks__204 = sqrt(x_blocks_blocks__191);
            x_blocks_blocks__204NumDims = coder.const(x_blocks_blocks__191NumDims);

            % Mul:
            x_blocks_blocks__195 = x_blocks_blocks__209 .* x_blocks_blocks__204;
            x_blocks_blocks__195NumDims = max(coder.const(x_blocks_blocks__209NumDims), coder.const(x_blocks_blocks__204NumDims));

            % Sqrt:
            x_blocks_blocks__205 = sqrt(x_blocks_blocks__191);
            x_blocks_blocks__205NumDims = coder.const(x_blocks_blocks__191NumDims);

            % Mul:
            x_blocks_blocks__194 = x_blocks_blocks__210 .* x_blocks_blocks__205;
            x_blocks_blocks__194NumDims = max(coder.const(x_blocks_blocks__210NumDims), coder.const(x_blocks_blocks__205NumDims));

            % MatMul:
            [x_blocks_blocks__193, x_blocks_blocks__193NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__195, x_blocks_blocks__194, coder.const(x_blocks_blocks__195NumDims), coder.const(x_blocks_blocks__194NumDims));

            % Softmax:
            [x_blocks_blocks__200, x_blocks_blocks__200NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks__193, -1, coder.const(x_blocks_blocks__193NumDims));

            % MatMul:
            [x_blocks_blocks__192, x_blocks_blocks__192NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__200, x_blocks_blocks__208, coder.const(x_blocks_blocks__200NumDims), coder.const(x_blocks_blocks__208NumDims));

            % Transpose:
            [perm1014, x_blocks_blocks__211NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1008, coder.const(x_blocks_blocks__192NumDims));
            if isempty(perm1014)
                x_blocks_blocks__211 = x_blocks_blocks__192;
            else
                x_blocks_blocks__211 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks__192), perm1014);
            end

            % Reshape:
            [shape1015, x_blocks_blocks__196NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks__211, this.Vars.x_blocks_blocks__189, coder.const(x_blocks_blocks__211NumDims), 0);
            x_blocks_blocks__196 = reshape(x_blocks_blocks__211, shape1015{:});

            % MatMul:
            [x_blocks_blocks__214, x_blocks_blocks__214NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__196, this.onnx__MatMul_1120, coder.const(x_blocks_blocks__196NumDims), this.NumDims.onnx__MatMul_1120);

            % Add:
            x_blocks_blocks__213 = this.Vars.blocks_1_attn_proj_b + x_blocks_blocks__214;
            x_blocks_blocks__213NumDims = max(this.NumDims.blocks_1_attn_proj_b, coder.const(x_blocks_blocks__214NumDims));

            % Add:
            x_blocks_blocks_1__1 = x_blocks_blocks_0_Ad + x_blocks_blocks__213;
            x_blocks_blocks_1__1NumDims = max(coder.const(x_blocks_blocks_0_AdNumDims), coder.const(x_blocks_blocks__213NumDims));

            % LayerNormalization:
            [x_blocks_blocks__274, x_blocks_blocks__274NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_1__1, this.blocks_1_norm2_weigh, this.blocks_1_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_1__1NumDims));

            % MatMul:
            [x_blocks_blocks__259, x_blocks_blocks__259NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__274, this.onnx__MatMul_1121, coder.const(x_blocks_blocks__274NumDims), this.NumDims.onnx__MatMul_1121);

            % Add:
            x_blocks_blocks__258 = this.Vars.blocks_1_mlp_fc1_bia + x_blocks_blocks__259;
            x_blocks_blocks__258NumDims = max(this.NumDims.blocks_1_mlp_fc1_bia, coder.const(x_blocks_blocks__259NumDims));

            % Div:
            x_blocks_blocks__254 = x_blocks_blocks__258 ./ this.Vars.x_blocks_blocks__253;
            x_blocks_blocks__254NumDims = max(coder.const(x_blocks_blocks__258NumDims), this.NumDims.x_blocks_blocks__253);

            % Erf:
            x_blocks_blocks__255 = erf(x_blocks_blocks__254);
            x_blocks_blocks__255NumDims = coder.const(x_blocks_blocks__254NumDims);

            % Add:
            x_blocks_blocks_1_ml = x_blocks_blocks__255 + this.Vars.x_blocks_blocks__251;
            x_blocks_blocks_1_mlNumDims = max(coder.const(x_blocks_blocks__255NumDims), this.NumDims.x_blocks_blocks__251);

            % Mul:
            x_blocks_blocks__257 = x_blocks_blocks__258 .* x_blocks_blocks_1_ml;
            x_blocks_blocks__257NumDims = max(coder.const(x_blocks_blocks__258NumDims), coder.const(x_blocks_blocks_1_mlNumDims));

            % Mul:
            x_blocks_blocks__256 = x_blocks_blocks__257 .* this.Vars.x_blocks_blocks__252;
            x_blocks_blocks__256NumDims = max(coder.const(x_blocks_blocks__257NumDims), this.NumDims.x_blocks_blocks__252);

            % MatMul:
            [x_blocks_blocks__261, x_blocks_blocks__261NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__256, this.onnx__MatMul_1122, coder.const(x_blocks_blocks__256NumDims), this.NumDims.onnx__MatMul_1122);

            % Add:
            x_blocks_blocks__260 = this.Vars.blocks_1_mlp_fc2_bia + x_blocks_blocks__261;
            x_blocks_blocks__260NumDims = max(this.NumDims.blocks_1_mlp_fc2_bia, coder.const(x_blocks_blocks__261NumDims));

            % Add:
            x_blocks_blocks_1_Ad = x_blocks_blocks_1__1 + x_blocks_blocks__260;
            x_blocks_blocks_1_AdNumDims = max(coder.const(x_blocks_blocks_1__1NumDims), coder.const(x_blocks_blocks__260NumDims));

            % LayerNormalization:
            [x_blocks_blocks_2_no, x_blocks_blocks_2_noNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_1_Ad, this.blocks_2_norm1_weigh, this.blocks_2_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_1_AdNumDims));

            % MatMul:
            [x_blocks_blocks_2_38, x_blocks_blocks_2_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_2_no, this.onnx__MatMul_1123, coder.const(x_blocks_blocks_2_noNumDims), this.NumDims.onnx__MatMul_1123);

            % Add:
            x_blocks_blocks_2_37 = this.Vars.blocks_2_attn_qkv_bi + x_blocks_blocks_2_38;
            x_blocks_blocks_2_37NumDims = max(this.NumDims.blocks_2_attn_qkv_bi, coder.const(x_blocks_blocks_2_38NumDims));

            % Reshape:
            [shape1016, x_blocks_blocks_2_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_2_37, this.Vars.x_blocks_blocks_2_12, coder.const(x_blocks_blocks_2_37NumDims), 0);
            x_blocks_blocks_2_19 = reshape(x_blocks_blocks_2_37, shape1016{:});

            % Transpose:
            [perm1017, x_blocks_blocks_2_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1009, coder.const(x_blocks_blocks_2_19NumDims));
            if isempty(perm1017)
                x_blocks_blocks_2_34 = x_blocks_blocks_2_19;
            else
                x_blocks_blocks_2_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_2_19), perm1017);
            end

            % Split:
            [x_blocks_blocks_2_23, x_blocks_blocks_2_24, x_blocks_blocks_2_25, x_blocks_blocks_2_23NumDims, x_blocks_blocks_2_24NumDims, x_blocks_blocks_2_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_2_34, 0, this.x_blocks_blocks_2__4, 3, coder.const(x_blocks_blocks_2_34NumDims));

            % Squeeze:
            [x_blocks_blocks_2_31, x_blocks_blocks_2_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_2_23, this.Vars.x_blocks_blocks_2__5, coder.const(x_blocks_blocks_2_23NumDims));

            % Squeeze:
            [x_blocks_blocks_2_29, x_blocks_blocks_2_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_2_24, this.Vars.x_blocks_blocks_2__6, coder.const(x_blocks_blocks_2_24NumDims));

            % Squeeze:
            [x_blocks_blocks_2_30, x_blocks_blocks_2_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_2_25, this.Vars.x_blocks_blocks_2__7, coder.const(x_blocks_blocks_2_25NumDims));

            % Shape:
            [x_blocks_blocks_2_20, x_blocks_blocks_2_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_2_31, coder.const(x_blocks_blocks_2_31NumDims), 0, coder.const(x_blocks_blocks_2_31NumDims)+1);

            % Slice:
            [indices1018, x_blocks_blocks_2_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_2_20, this.Vars.x_blocks_blocks_2__8, this.Vars.x_blocks_blocks_2__9, '', '', coder.const(x_blocks_blocks_2_20NumDims));
            x_blocks_blocks_2_21 = x_blocks_blocks_2_20(indices1018{:});

            % Cast:
            x_blocks_blocks_2_at = single(x_blocks_blocks_2_21);
            x_blocks_blocks_2_atNumDims = coder.const(x_blocks_blocks_2_21NumDims);

            % Sqrt:
            x_blocks_blocks_2_28 = sqrt(x_blocks_blocks_2_at);
            x_blocks_blocks_2_28NumDims = coder.const(x_blocks_blocks_2_atNumDims);

            % Div:
            x_blocks_blocks_2_13 = this.Vars.x_blocks_blocks_2_10 ./ x_blocks_blocks_2_28;
            x_blocks_blocks_2_13NumDims = max(this.NumDims.x_blocks_blocks_2_10, coder.const(x_blocks_blocks_2_28NumDims));

            % Transpose:
            [perm1019, x_blocks_blocks_2_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1010, coder.const(x_blocks_blocks_2_29NumDims));
            if isempty(perm1019)
                x_blocks_blocks_2_32 = x_blocks_blocks_2_29;
            else
                x_blocks_blocks_2_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_2_29), perm1019);
            end

            % Sqrt:
            x_blocks_blocks_2_26 = sqrt(x_blocks_blocks_2_13);
            x_blocks_blocks_2_26NumDims = coder.const(x_blocks_blocks_2_13NumDims);

            % Mul:
            x_blocks_blocks_2_17 = x_blocks_blocks_2_31 .* x_blocks_blocks_2_26;
            x_blocks_blocks_2_17NumDims = max(coder.const(x_blocks_blocks_2_31NumDims), coder.const(x_blocks_blocks_2_26NumDims));

            % Sqrt:
            x_blocks_blocks_2_27 = sqrt(x_blocks_blocks_2_13);
            x_blocks_blocks_2_27NumDims = coder.const(x_blocks_blocks_2_13NumDims);

            % Mul:
            x_blocks_blocks_2_16 = x_blocks_blocks_2_32 .* x_blocks_blocks_2_27;
            x_blocks_blocks_2_16NumDims = max(coder.const(x_blocks_blocks_2_32NumDims), coder.const(x_blocks_blocks_2_27NumDims));

            % MatMul:
            [x_blocks_blocks_2_15, x_blocks_blocks_2_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_2_17, x_blocks_blocks_2_16, coder.const(x_blocks_blocks_2_17NumDims), coder.const(x_blocks_blocks_2_16NumDims));

            % Softmax:
            [x_blocks_blocks_2_22, x_blocks_blocks_2_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_2_15, -1, coder.const(x_blocks_blocks_2_15NumDims));

            % MatMul:
            [x_blocks_blocks_2_14, x_blocks_blocks_2_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_2_22, x_blocks_blocks_2_30, coder.const(x_blocks_blocks_2_22NumDims), coder.const(x_blocks_blocks_2_30NumDims));

            % Transpose:
            [perm1020, x_blocks_blocks_2_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1011, coder.const(x_blocks_blocks_2_14NumDims));
            if isempty(perm1020)
                x_blocks_blocks_2_33 = x_blocks_blocks_2_14;
            else
                x_blocks_blocks_2_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_2_14), perm1020);
            end

            % Reshape:
            [shape1021, x_blocks_blocks_2_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_2_33, this.Vars.x_blocks_blocks_2_11, coder.const(x_blocks_blocks_2_33NumDims), 0);
            x_blocks_blocks_2_18 = reshape(x_blocks_blocks_2_33, shape1021{:});

            % MatMul:
            [x_blocks_blocks_2_36, x_blocks_blocks_2_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_2_18, this.onnx__MatMul_1134, coder.const(x_blocks_blocks_2_18NumDims), this.NumDims.onnx__MatMul_1134);

            % Add:
            x_blocks_blocks_2_35 = this.Vars.blocks_2_attn_proj_b + x_blocks_blocks_2_36;
            x_blocks_blocks_2_35NumDims = max(this.NumDims.blocks_2_attn_proj_b, coder.const(x_blocks_blocks_2_36NumDims));

            % Add:
            x_blocks_blocks_2__1 = x_blocks_blocks_1_Ad + x_blocks_blocks_2_35;
            x_blocks_blocks_2__1NumDims = max(coder.const(x_blocks_blocks_1_AdNumDims), coder.const(x_blocks_blocks_2_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_2_96, x_blocks_blocks_2_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_2__1, this.blocks_2_norm2_weigh, this.blocks_2_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_2__1NumDims));

            % MatMul:
            [x_blocks_blocks_2_81, x_blocks_blocks_2_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_2_96, this.onnx__MatMul_1135, coder.const(x_blocks_blocks_2_96NumDims), this.NumDims.onnx__MatMul_1135);

            % Add:
            x_blocks_blocks_2_80 = this.Vars.blocks_2_mlp_fc1_bia + x_blocks_blocks_2_81;
            x_blocks_blocks_2_80NumDims = max(this.NumDims.blocks_2_mlp_fc1_bia, coder.const(x_blocks_blocks_2_81NumDims));

            % Div:
            x_blocks_blocks_2_76 = x_blocks_blocks_2_80 ./ this.Vars.x_blocks_blocks_2_75;
            x_blocks_blocks_2_76NumDims = max(coder.const(x_blocks_blocks_2_80NumDims), this.NumDims.x_blocks_blocks_2_75);

            % Erf:
            x_blocks_blocks_2_77 = erf(x_blocks_blocks_2_76);
            x_blocks_blocks_2_77NumDims = coder.const(x_blocks_blocks_2_76NumDims);

            % Add:
            x_blocks_blocks_2_ml = x_blocks_blocks_2_77 + this.Vars.x_blocks_blocks_2_73;
            x_blocks_blocks_2_mlNumDims = max(coder.const(x_blocks_blocks_2_77NumDims), this.NumDims.x_blocks_blocks_2_73);

            % Mul:
            x_blocks_blocks_2_79 = x_blocks_blocks_2_80 .* x_blocks_blocks_2_ml;
            x_blocks_blocks_2_79NumDims = max(coder.const(x_blocks_blocks_2_80NumDims), coder.const(x_blocks_blocks_2_mlNumDims));

            % Mul:
            x_blocks_blocks_2_78 = x_blocks_blocks_2_79 .* this.Vars.x_blocks_blocks_2_74;
            x_blocks_blocks_2_78NumDims = max(coder.const(x_blocks_blocks_2_79NumDims), this.NumDims.x_blocks_blocks_2_74);

            % MatMul:
            [x_blocks_blocks_2_83, x_blocks_blocks_2_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_2_78, this.onnx__MatMul_1136, coder.const(x_blocks_blocks_2_78NumDims), this.NumDims.onnx__MatMul_1136);

            % Add:
            x_blocks_blocks_2_82 = this.Vars.blocks_2_mlp_fc2_bia + x_blocks_blocks_2_83;
            x_blocks_blocks_2_82NumDims = max(this.NumDims.blocks_2_mlp_fc2_bia, coder.const(x_blocks_blocks_2_83NumDims));

            % Add:
            x_blocks_blocks_2_Ad = x_blocks_blocks_2__1 + x_blocks_blocks_2_82;
            x_blocks_blocks_2_AdNumDims = max(coder.const(x_blocks_blocks_2__1NumDims), coder.const(x_blocks_blocks_2_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_3_no, x_blocks_blocks_3_noNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_2_Ad, this.blocks_3_norm1_weigh, this.blocks_3_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_2_AdNumDims));

            % MatMul:
            [x_blocks_blocks_3_38, x_blocks_blocks_3_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_3_no, this.onnx__MatMul_1137, coder.const(x_blocks_blocks_3_noNumDims), this.NumDims.onnx__MatMul_1137);

            % Add:
            x_blocks_blocks_3_37 = this.Vars.blocks_3_attn_qkv_bi + x_blocks_blocks_3_38;
            x_blocks_blocks_3_37NumDims = max(this.NumDims.blocks_3_attn_qkv_bi, coder.const(x_blocks_blocks_3_38NumDims));

            % Reshape:
            [shape1022, x_blocks_blocks_3_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_3_37, this.Vars.x_blocks_blocks_3_12, coder.const(x_blocks_blocks_3_37NumDims), 0);
            x_blocks_blocks_3_19 = reshape(x_blocks_blocks_3_37, shape1022{:});

            % Transpose:
            [perm1023, x_blocks_blocks_3_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1012, coder.const(x_blocks_blocks_3_19NumDims));
            if isempty(perm1023)
                x_blocks_blocks_3_34 = x_blocks_blocks_3_19;
            else
                x_blocks_blocks_3_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_3_19), perm1023);
            end

            % Split:
            [x_blocks_blocks_3_23, x_blocks_blocks_3_24, x_blocks_blocks_3_25, x_blocks_blocks_3_23NumDims, x_blocks_blocks_3_24NumDims, x_blocks_blocks_3_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_3_34, 0, this.x_blocks_blocks_3__4, 3, coder.const(x_blocks_blocks_3_34NumDims));

            % Squeeze:
            [x_blocks_blocks_3_31, x_blocks_blocks_3_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_3_23, this.Vars.x_blocks_blocks_3__5, coder.const(x_blocks_blocks_3_23NumDims));

            % Squeeze:
            [x_blocks_blocks_3_29, x_blocks_blocks_3_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_3_24, this.Vars.x_blocks_blocks_3__6, coder.const(x_blocks_blocks_3_24NumDims));

            % Squeeze:
            [x_blocks_blocks_3_30, x_blocks_blocks_3_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_3_25, this.Vars.x_blocks_blocks_3__7, coder.const(x_blocks_blocks_3_25NumDims));

            % Shape:
            [x_blocks_blocks_3_20, x_blocks_blocks_3_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_3_31, coder.const(x_blocks_blocks_3_31NumDims), 0, coder.const(x_blocks_blocks_3_31NumDims)+1);

            % Slice:
            [indices1024, x_blocks_blocks_3_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_3_20, this.Vars.x_blocks_blocks_3__8, this.Vars.x_blocks_blocks_3__9, '', '', coder.const(x_blocks_blocks_3_20NumDims));
            x_blocks_blocks_3_21 = x_blocks_blocks_3_20(indices1024{:});

            % Cast:
            x_blocks_blocks_3_at = single(x_blocks_blocks_3_21);
            x_blocks_blocks_3_atNumDims = coder.const(x_blocks_blocks_3_21NumDims);

            % Sqrt:
            x_blocks_blocks_3_28 = sqrt(x_blocks_blocks_3_at);
            x_blocks_blocks_3_28NumDims = coder.const(x_blocks_blocks_3_atNumDims);

            % Div:
            x_blocks_blocks_3_13 = this.Vars.x_blocks_blocks_3_10 ./ x_blocks_blocks_3_28;
            x_blocks_blocks_3_13NumDims = max(this.NumDims.x_blocks_blocks_3_10, coder.const(x_blocks_blocks_3_28NumDims));

            % Transpose:
            [perm1025, x_blocks_blocks_3_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1013, coder.const(x_blocks_blocks_3_29NumDims));
            if isempty(perm1025)
                x_blocks_blocks_3_32 = x_blocks_blocks_3_29;
            else
                x_blocks_blocks_3_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_3_29), perm1025);
            end

            % Sqrt:
            x_blocks_blocks_3_26 = sqrt(x_blocks_blocks_3_13);
            x_blocks_blocks_3_26NumDims = coder.const(x_blocks_blocks_3_13NumDims);

            % Mul:
            x_blocks_blocks_3_17 = x_blocks_blocks_3_31 .* x_blocks_blocks_3_26;
            x_blocks_blocks_3_17NumDims = max(coder.const(x_blocks_blocks_3_31NumDims), coder.const(x_blocks_blocks_3_26NumDims));

            % Sqrt:
            x_blocks_blocks_3_27 = sqrt(x_blocks_blocks_3_13);
            x_blocks_blocks_3_27NumDims = coder.const(x_blocks_blocks_3_13NumDims);

            % Mul:
            x_blocks_blocks_3_16 = x_blocks_blocks_3_32 .* x_blocks_blocks_3_27;
            x_blocks_blocks_3_16NumDims = max(coder.const(x_blocks_blocks_3_32NumDims), coder.const(x_blocks_blocks_3_27NumDims));

            % MatMul:
            [x_blocks_blocks_3_15, x_blocks_blocks_3_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_3_17, x_blocks_blocks_3_16, coder.const(x_blocks_blocks_3_17NumDims), coder.const(x_blocks_blocks_3_16NumDims));

            % Softmax:
            [x_blocks_blocks_3_22, x_blocks_blocks_3_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_3_15, -1, coder.const(x_blocks_blocks_3_15NumDims));

            % MatMul:
            [x_blocks_blocks_3_14, x_blocks_blocks_3_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_3_22, x_blocks_blocks_3_30, coder.const(x_blocks_blocks_3_22NumDims), coder.const(x_blocks_blocks_3_30NumDims));

            % Transpose:
            [perm1026, x_blocks_blocks_3_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1014, coder.const(x_blocks_blocks_3_14NumDims));
            if isempty(perm1026)
                x_blocks_blocks_3_33 = x_blocks_blocks_3_14;
            else
                x_blocks_blocks_3_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_3_14), perm1026);
            end

            % Reshape:
            [shape1027, x_blocks_blocks_3_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_3_33, this.Vars.x_blocks_blocks_3_11, coder.const(x_blocks_blocks_3_33NumDims), 0);
            x_blocks_blocks_3_18 = reshape(x_blocks_blocks_3_33, shape1027{:});

            % MatMul:
            [x_blocks_blocks_3_36, x_blocks_blocks_3_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_3_18, this.onnx__MatMul_1148, coder.const(x_blocks_blocks_3_18NumDims), this.NumDims.onnx__MatMul_1148);

            % Add:
            x_blocks_blocks_3_35 = this.Vars.blocks_3_attn_proj_b + x_blocks_blocks_3_36;
            x_blocks_blocks_3_35NumDims = max(this.NumDims.blocks_3_attn_proj_b, coder.const(x_blocks_blocks_3_36NumDims));

            % Add:
            x_blocks_blocks_3__1 = x_blocks_blocks_2_Ad + x_blocks_blocks_3_35;
            x_blocks_blocks_3__1NumDims = max(coder.const(x_blocks_blocks_2_AdNumDims), coder.const(x_blocks_blocks_3_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_3_96, x_blocks_blocks_3_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_3__1, this.blocks_3_norm2_weigh, this.blocks_3_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_3__1NumDims));

            % MatMul:
            [x_blocks_blocks_3_81, x_blocks_blocks_3_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_3_96, this.onnx__MatMul_1149, coder.const(x_blocks_blocks_3_96NumDims), this.NumDims.onnx__MatMul_1149);

            % Add:
            x_blocks_blocks_3_80 = this.Vars.blocks_3_mlp_fc1_bia + x_blocks_blocks_3_81;
            x_blocks_blocks_3_80NumDims = max(this.NumDims.blocks_3_mlp_fc1_bia, coder.const(x_blocks_blocks_3_81NumDims));

            % Div:
            x_blocks_blocks_3_76 = x_blocks_blocks_3_80 ./ this.Vars.x_blocks_blocks_3_75;
            x_blocks_blocks_3_76NumDims = max(coder.const(x_blocks_blocks_3_80NumDims), this.NumDims.x_blocks_blocks_3_75);

            % Erf:
            x_blocks_blocks_3_77 = erf(x_blocks_blocks_3_76);
            x_blocks_blocks_3_77NumDims = coder.const(x_blocks_blocks_3_76NumDims);

            % Add:
            x_blocks_blocks_3_ml = x_blocks_blocks_3_77 + this.Vars.x_blocks_blocks_3_73;
            x_blocks_blocks_3_mlNumDims = max(coder.const(x_blocks_blocks_3_77NumDims), this.NumDims.x_blocks_blocks_3_73);

            % Mul:
            x_blocks_blocks_3_79 = x_blocks_blocks_3_80 .* x_blocks_blocks_3_ml;
            x_blocks_blocks_3_79NumDims = max(coder.const(x_blocks_blocks_3_80NumDims), coder.const(x_blocks_blocks_3_mlNumDims));

            % Mul:
            x_blocks_blocks_3_78 = x_blocks_blocks_3_79 .* this.Vars.x_blocks_blocks_3_74;
            x_blocks_blocks_3_78NumDims = max(coder.const(x_blocks_blocks_3_79NumDims), this.NumDims.x_blocks_blocks_3_74);

            % MatMul:
            [x_blocks_blocks_3_83, x_blocks_blocks_3_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_3_78, this.onnx__MatMul_1150, coder.const(x_blocks_blocks_3_78NumDims), this.NumDims.onnx__MatMul_1150);

            % Add:
            x_blocks_blocks_3_82 = this.Vars.blocks_3_mlp_fc2_bia + x_blocks_blocks_3_83;
            x_blocks_blocks_3_82NumDims = max(this.NumDims.blocks_3_mlp_fc2_bia, coder.const(x_blocks_blocks_3_83NumDims));

            % Add:
            x_blocks_blocks_3_Ad = x_blocks_blocks_3__1 + x_blocks_blocks_3_82;
            x_blocks_blocks_3_AdNumDims = max(coder.const(x_blocks_blocks_3__1NumDims), coder.const(x_blocks_blocks_3_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_4_no, x_blocks_blocks_4_noNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_3_Ad, this.blocks_4_norm1_weigh, this.blocks_4_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_3_AdNumDims));

            % MatMul:
            [x_blocks_blocks_4_38, x_blocks_blocks_4_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_4_no, this.onnx__MatMul_1151, coder.const(x_blocks_blocks_4_noNumDims), this.NumDims.onnx__MatMul_1151);

            % Add:
            x_blocks_blocks_4_37 = this.Vars.blocks_4_attn_qkv_bi + x_blocks_blocks_4_38;
            x_blocks_blocks_4_37NumDims = max(this.NumDims.blocks_4_attn_qkv_bi, coder.const(x_blocks_blocks_4_38NumDims));

            % Reshape:
            [shape1028, x_blocks_blocks_4_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_4_37, this.Vars.x_blocks_blocks_4_12, coder.const(x_blocks_blocks_4_37NumDims), 0);
            x_blocks_blocks_4_19 = reshape(x_blocks_blocks_4_37, shape1028{:});

            % Transpose:
            [perm1029, x_blocks_blocks_4_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1015, coder.const(x_blocks_blocks_4_19NumDims));
            if isempty(perm1029)
                x_blocks_blocks_4_34 = x_blocks_blocks_4_19;
            else
                x_blocks_blocks_4_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_4_19), perm1029);
            end

            % Split:
            [x_blocks_blocks_4_23, x_blocks_blocks_4_24, x_blocks_blocks_4_25, x_blocks_blocks_4_23NumDims, x_blocks_blocks_4_24NumDims, x_blocks_blocks_4_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_4_34, 0, this.x_blocks_blocks_4__4, 3, coder.const(x_blocks_blocks_4_34NumDims));

            % Squeeze:
            [x_blocks_blocks_4_31, x_blocks_blocks_4_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_4_23, this.Vars.x_blocks_blocks_4__5, coder.const(x_blocks_blocks_4_23NumDims));

            % Squeeze:
            [x_blocks_blocks_4_29, x_blocks_blocks_4_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_4_24, this.Vars.x_blocks_blocks_4__6, coder.const(x_blocks_blocks_4_24NumDims));

            % Squeeze:
            [x_blocks_blocks_4_30, x_blocks_blocks_4_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_4_25, this.Vars.x_blocks_blocks_4__7, coder.const(x_blocks_blocks_4_25NumDims));

            % Shape:
            [x_blocks_blocks_4_20, x_blocks_blocks_4_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_4_31, coder.const(x_blocks_blocks_4_31NumDims), 0, coder.const(x_blocks_blocks_4_31NumDims)+1);

            % Slice:
            [indices1030, x_blocks_blocks_4_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_4_20, this.Vars.x_blocks_blocks_4__8, this.Vars.x_blocks_blocks_4__9, '', '', coder.const(x_blocks_blocks_4_20NumDims));
            x_blocks_blocks_4_21 = x_blocks_blocks_4_20(indices1030{:});

            % Cast:
            x_blocks_blocks_4_at = single(x_blocks_blocks_4_21);
            x_blocks_blocks_4_atNumDims = coder.const(x_blocks_blocks_4_21NumDims);

            % Sqrt:
            x_blocks_blocks_4_28 = sqrt(x_blocks_blocks_4_at);
            x_blocks_blocks_4_28NumDims = coder.const(x_blocks_blocks_4_atNumDims);

            % Div:
            x_blocks_blocks_4_13 = this.Vars.x_blocks_blocks_4_10 ./ x_blocks_blocks_4_28;
            x_blocks_blocks_4_13NumDims = max(this.NumDims.x_blocks_blocks_4_10, coder.const(x_blocks_blocks_4_28NumDims));

            % Transpose:
            [perm1031, x_blocks_blocks_4_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1016, coder.const(x_blocks_blocks_4_29NumDims));
            if isempty(perm1031)
                x_blocks_blocks_4_32 = x_blocks_blocks_4_29;
            else
                x_blocks_blocks_4_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_4_29), perm1031);
            end

            % Sqrt:
            x_blocks_blocks_4_26 = sqrt(x_blocks_blocks_4_13);
            x_blocks_blocks_4_26NumDims = coder.const(x_blocks_blocks_4_13NumDims);

            % Mul:
            x_blocks_blocks_4_17 = x_blocks_blocks_4_31 .* x_blocks_blocks_4_26;
            x_blocks_blocks_4_17NumDims = max(coder.const(x_blocks_blocks_4_31NumDims), coder.const(x_blocks_blocks_4_26NumDims));

            % Sqrt:
            x_blocks_blocks_4_27 = sqrt(x_blocks_blocks_4_13);
            x_blocks_blocks_4_27NumDims = coder.const(x_blocks_blocks_4_13NumDims);

            % Mul:
            x_blocks_blocks_4_16 = x_blocks_blocks_4_32 .* x_blocks_blocks_4_27;
            x_blocks_blocks_4_16NumDims = max(coder.const(x_blocks_blocks_4_32NumDims), coder.const(x_blocks_blocks_4_27NumDims));

            % MatMul:
            [x_blocks_blocks_4_15, x_blocks_blocks_4_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_4_17, x_blocks_blocks_4_16, coder.const(x_blocks_blocks_4_17NumDims), coder.const(x_blocks_blocks_4_16NumDims));

            % Softmax:
            [x_blocks_blocks_4_22, x_blocks_blocks_4_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_4_15, -1, coder.const(x_blocks_blocks_4_15NumDims));

            % MatMul:
            [x_blocks_blocks_4_14, x_blocks_blocks_4_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_4_22, x_blocks_blocks_4_30, coder.const(x_blocks_blocks_4_22NumDims), coder.const(x_blocks_blocks_4_30NumDims));

            % Transpose:
            [perm1032, x_blocks_blocks_4_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1017, coder.const(x_blocks_blocks_4_14NumDims));
            if isempty(perm1032)
                x_blocks_blocks_4_33 = x_blocks_blocks_4_14;
            else
                x_blocks_blocks_4_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_4_14), perm1032);
            end

            % Reshape:
            [shape1033, x_blocks_blocks_4_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_4_33, this.Vars.x_blocks_blocks_4_11, coder.const(x_blocks_blocks_4_33NumDims), 0);
            x_blocks_blocks_4_18 = reshape(x_blocks_blocks_4_33, shape1033{:});

            % MatMul:
            [x_blocks_blocks_4_36, x_blocks_blocks_4_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_4_18, this.onnx__MatMul_1162, coder.const(x_blocks_blocks_4_18NumDims), this.NumDims.onnx__MatMul_1162);

            % Add:
            x_blocks_blocks_4_35 = this.Vars.blocks_4_attn_proj_b + x_blocks_blocks_4_36;
            x_blocks_blocks_4_35NumDims = max(this.NumDims.blocks_4_attn_proj_b, coder.const(x_blocks_blocks_4_36NumDims));

            % Add:
            x_blocks_blocks_4__1 = x_blocks_blocks_3_Ad + x_blocks_blocks_4_35;
            x_blocks_blocks_4__1NumDims = max(coder.const(x_blocks_blocks_3_AdNumDims), coder.const(x_blocks_blocks_4_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_4_96, x_blocks_blocks_4_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_4__1, this.blocks_4_norm2_weigh, this.blocks_4_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_4__1NumDims));

            % MatMul:
            [x_blocks_blocks_4_81, x_blocks_blocks_4_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_4_96, this.onnx__MatMul_1163, coder.const(x_blocks_blocks_4_96NumDims), this.NumDims.onnx__MatMul_1163);

            % Add:
            x_blocks_blocks_4_80 = this.Vars.blocks_4_mlp_fc1_bia + x_blocks_blocks_4_81;
            x_blocks_blocks_4_80NumDims = max(this.NumDims.blocks_4_mlp_fc1_bia, coder.const(x_blocks_blocks_4_81NumDims));

            % Div:
            x_blocks_blocks_4_76 = x_blocks_blocks_4_80 ./ this.Vars.x_blocks_blocks_4_75;
            x_blocks_blocks_4_76NumDims = max(coder.const(x_blocks_blocks_4_80NumDims), this.NumDims.x_blocks_blocks_4_75);

            % Erf:
            x_blocks_blocks_4_77 = erf(x_blocks_blocks_4_76);
            x_blocks_blocks_4_77NumDims = coder.const(x_blocks_blocks_4_76NumDims);

            % Add:
            x_blocks_blocks_4_ml = x_blocks_blocks_4_77 + this.Vars.x_blocks_blocks_4_73;
            x_blocks_blocks_4_mlNumDims = max(coder.const(x_blocks_blocks_4_77NumDims), this.NumDims.x_blocks_blocks_4_73);

            % Mul:
            x_blocks_blocks_4_79 = x_blocks_blocks_4_80 .* x_blocks_blocks_4_ml;
            x_blocks_blocks_4_79NumDims = max(coder.const(x_blocks_blocks_4_80NumDims), coder.const(x_blocks_blocks_4_mlNumDims));

            % Mul:
            x_blocks_blocks_4_78 = x_blocks_blocks_4_79 .* this.Vars.x_blocks_blocks_4_74;
            x_blocks_blocks_4_78NumDims = max(coder.const(x_blocks_blocks_4_79NumDims), this.NumDims.x_blocks_blocks_4_74);

            % MatMul:
            [x_blocks_blocks_4_83, x_blocks_blocks_4_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_4_78, this.onnx__MatMul_1164, coder.const(x_blocks_blocks_4_78NumDims), this.NumDims.onnx__MatMul_1164);

            % Add:
            x_blocks_blocks_4_82 = this.Vars.blocks_4_mlp_fc2_bia + x_blocks_blocks_4_83;
            x_blocks_blocks_4_82NumDims = max(this.NumDims.blocks_4_mlp_fc2_bia, coder.const(x_blocks_blocks_4_83NumDims));

            % Add:
            x_blocks_blocks_4_Ad = x_blocks_blocks_4__1 + x_blocks_blocks_4_82;
            x_blocks_blocks_4_AdNumDims = max(coder.const(x_blocks_blocks_4__1NumDims), coder.const(x_blocks_blocks_4_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_5_no, x_blocks_blocks_5_noNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_4_Ad, this.blocks_5_norm1_weigh, this.blocks_5_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_4_AdNumDims));

            % MatMul:
            [x_blocks_blocks_5_38, x_blocks_blocks_5_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_5_no, this.onnx__MatMul_1165, coder.const(x_blocks_blocks_5_noNumDims), this.NumDims.onnx__MatMul_1165);

            % Add:
            x_blocks_blocks_5_37 = this.Vars.blocks_5_attn_qkv_bi + x_blocks_blocks_5_38;
            x_blocks_blocks_5_37NumDims = max(this.NumDims.blocks_5_attn_qkv_bi, coder.const(x_blocks_blocks_5_38NumDims));

            % Reshape:
            [shape1034, x_blocks_blocks_5_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_5_37, this.Vars.x_blocks_blocks_5_12, coder.const(x_blocks_blocks_5_37NumDims), 0);
            x_blocks_blocks_5_19 = reshape(x_blocks_blocks_5_37, shape1034{:});

            % Transpose:
            [perm1035, x_blocks_blocks_5_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1018, coder.const(x_blocks_blocks_5_19NumDims));
            if isempty(perm1035)
                x_blocks_blocks_5_34 = x_blocks_blocks_5_19;
            else
                x_blocks_blocks_5_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_5_19), perm1035);
            end

            % Split:
            [x_blocks_blocks_5_23, x_blocks_blocks_5_24, x_blocks_blocks_5_25, x_blocks_blocks_5_23NumDims, x_blocks_blocks_5_24NumDims, x_blocks_blocks_5_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_5_34, 0, this.x_blocks_blocks_5__4, 3, coder.const(x_blocks_blocks_5_34NumDims));

            % Squeeze:
            [x_blocks_blocks_5_31, x_blocks_blocks_5_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_5_23, this.Vars.x_blocks_blocks_5__5, coder.const(x_blocks_blocks_5_23NumDims));

            % Squeeze:
            [x_blocks_blocks_5_29, x_blocks_blocks_5_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_5_24, this.Vars.x_blocks_blocks_5__6, coder.const(x_blocks_blocks_5_24NumDims));

            % Squeeze:
            [x_blocks_blocks_5_30, x_blocks_blocks_5_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_5_25, this.Vars.x_blocks_blocks_5__7, coder.const(x_blocks_blocks_5_25NumDims));

            % Shape:
            [x_blocks_blocks_5_20, x_blocks_blocks_5_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_5_31, coder.const(x_blocks_blocks_5_31NumDims), 0, coder.const(x_blocks_blocks_5_31NumDims)+1);

            % Slice:
            [indices1036, x_blocks_blocks_5_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_5_20, this.Vars.x_blocks_blocks_5__8, this.Vars.x_blocks_blocks_5__9, '', '', coder.const(x_blocks_blocks_5_20NumDims));
            x_blocks_blocks_5_21 = x_blocks_blocks_5_20(indices1036{:});

            % Cast:
            x_blocks_blocks_5_at = single(x_blocks_blocks_5_21);
            x_blocks_blocks_5_atNumDims = coder.const(x_blocks_blocks_5_21NumDims);

            % Sqrt:
            x_blocks_blocks_5_28 = sqrt(x_blocks_blocks_5_at);
            x_blocks_blocks_5_28NumDims = coder.const(x_blocks_blocks_5_atNumDims);

            % Div:
            x_blocks_blocks_5_13 = this.Vars.x_blocks_blocks_5_10 ./ x_blocks_blocks_5_28;
            x_blocks_blocks_5_13NumDims = max(this.NumDims.x_blocks_blocks_5_10, coder.const(x_blocks_blocks_5_28NumDims));

            % Transpose:
            [perm1037, x_blocks_blocks_5_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1019, coder.const(x_blocks_blocks_5_29NumDims));
            if isempty(perm1037)
                x_blocks_blocks_5_32 = x_blocks_blocks_5_29;
            else
                x_blocks_blocks_5_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_5_29), perm1037);
            end

            % Sqrt:
            x_blocks_blocks_5_26 = sqrt(x_blocks_blocks_5_13);
            x_blocks_blocks_5_26NumDims = coder.const(x_blocks_blocks_5_13NumDims);

            % Mul:
            x_blocks_blocks_5_17 = x_blocks_blocks_5_31 .* x_blocks_blocks_5_26;
            x_blocks_blocks_5_17NumDims = max(coder.const(x_blocks_blocks_5_31NumDims), coder.const(x_blocks_blocks_5_26NumDims));

            % Sqrt:
            x_blocks_blocks_5_27 = sqrt(x_blocks_blocks_5_13);
            x_blocks_blocks_5_27NumDims = coder.const(x_blocks_blocks_5_13NumDims);

            % Mul:
            x_blocks_blocks_5_16 = x_blocks_blocks_5_32 .* x_blocks_blocks_5_27;
            x_blocks_blocks_5_16NumDims = max(coder.const(x_blocks_blocks_5_32NumDims), coder.const(x_blocks_blocks_5_27NumDims));

            % MatMul:
            [x_blocks_blocks_5_15, x_blocks_blocks_5_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_5_17, x_blocks_blocks_5_16, coder.const(x_blocks_blocks_5_17NumDims), coder.const(x_blocks_blocks_5_16NumDims));

            % Softmax:
            [x_blocks_blocks_5_22, x_blocks_blocks_5_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_5_15, -1, coder.const(x_blocks_blocks_5_15NumDims));

            % MatMul:
            [x_blocks_blocks_5_14, x_blocks_blocks_5_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_5_22, x_blocks_blocks_5_30, coder.const(x_blocks_blocks_5_22NumDims), coder.const(x_blocks_blocks_5_30NumDims));

            % Transpose:
            [perm1038, x_blocks_blocks_5_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1020, coder.const(x_blocks_blocks_5_14NumDims));
            if isempty(perm1038)
                x_blocks_blocks_5_33 = x_blocks_blocks_5_14;
            else
                x_blocks_blocks_5_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_5_14), perm1038);
            end

            % Reshape:
            [shape1039, x_blocks_blocks_5_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_5_33, this.Vars.x_blocks_blocks_5_11, coder.const(x_blocks_blocks_5_33NumDims), 0);
            x_blocks_blocks_5_18 = reshape(x_blocks_blocks_5_33, shape1039{:});

            % MatMul:
            [x_blocks_blocks_5_36, x_blocks_blocks_5_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_5_18, this.onnx__MatMul_1176, coder.const(x_blocks_blocks_5_18NumDims), this.NumDims.onnx__MatMul_1176);

            % Add:
            x_blocks_blocks_5_35 = this.Vars.blocks_5_attn_proj_b + x_blocks_blocks_5_36;
            x_blocks_blocks_5_35NumDims = max(this.NumDims.blocks_5_attn_proj_b, coder.const(x_blocks_blocks_5_36NumDims));

            % Add:
            x_blocks_blocks_5__1 = x_blocks_blocks_4_Ad + x_blocks_blocks_5_35;
            x_blocks_blocks_5__1NumDims = max(coder.const(x_blocks_blocks_4_AdNumDims), coder.const(x_blocks_blocks_5_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_5_96, x_blocks_blocks_5_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_5__1, this.blocks_5_norm2_weigh, this.blocks_5_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_5__1NumDims));

            % MatMul:
            [x_blocks_blocks_5_81, x_blocks_blocks_5_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_5_96, this.onnx__MatMul_1177, coder.const(x_blocks_blocks_5_96NumDims), this.NumDims.onnx__MatMul_1177);

            % Add:
            x_blocks_blocks_5_80 = this.Vars.blocks_5_mlp_fc1_bia + x_blocks_blocks_5_81;
            x_blocks_blocks_5_80NumDims = max(this.NumDims.blocks_5_mlp_fc1_bia, coder.const(x_blocks_blocks_5_81NumDims));

            % Div:
            x_blocks_blocks_5_76 = x_blocks_blocks_5_80 ./ this.Vars.x_blocks_blocks_5_75;
            x_blocks_blocks_5_76NumDims = max(coder.const(x_blocks_blocks_5_80NumDims), this.NumDims.x_blocks_blocks_5_75);

            % Erf:
            x_blocks_blocks_5_77 = erf(x_blocks_blocks_5_76);
            x_blocks_blocks_5_77NumDims = coder.const(x_blocks_blocks_5_76NumDims);

            % Add:
            x_blocks_blocks_5_ml = x_blocks_blocks_5_77 + this.Vars.x_blocks_blocks_5_73;
            x_blocks_blocks_5_mlNumDims = max(coder.const(x_blocks_blocks_5_77NumDims), this.NumDims.x_blocks_blocks_5_73);

            % Mul:
            x_blocks_blocks_5_79 = x_blocks_blocks_5_80 .* x_blocks_blocks_5_ml;
            x_blocks_blocks_5_79NumDims = max(coder.const(x_blocks_blocks_5_80NumDims), coder.const(x_blocks_blocks_5_mlNumDims));

            % Mul:
            x_blocks_blocks_5_78 = x_blocks_blocks_5_79 .* this.Vars.x_blocks_blocks_5_74;
            x_blocks_blocks_5_78NumDims = max(coder.const(x_blocks_blocks_5_79NumDims), this.NumDims.x_blocks_blocks_5_74);

            % MatMul:
            [x_blocks_blocks_5_83, x_blocks_blocks_5_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_5_78, this.onnx__MatMul_1178, coder.const(x_blocks_blocks_5_78NumDims), this.NumDims.onnx__MatMul_1178);

            % Add:
            x_blocks_blocks_5_82 = this.Vars.blocks_5_mlp_fc2_bia + x_blocks_blocks_5_83;
            x_blocks_blocks_5_82NumDims = max(this.NumDims.blocks_5_mlp_fc2_bia, coder.const(x_blocks_blocks_5_83NumDims));

            % Add:
            x_blocks_blocks_5_Ad = x_blocks_blocks_5__1 + x_blocks_blocks_5_82;
            x_blocks_blocks_5_AdNumDims = max(coder.const(x_blocks_blocks_5__1NumDims), coder.const(x_blocks_blocks_5_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_6_no, x_blocks_blocks_6_noNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_5_Ad, this.blocks_6_norm1_weigh, this.blocks_6_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_5_AdNumDims));

            % MatMul:
            [x_blocks_blocks_6_38, x_blocks_blocks_6_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_6_no, this.onnx__MatMul_1179, coder.const(x_blocks_blocks_6_noNumDims), this.NumDims.onnx__MatMul_1179);

            % Add:
            x_blocks_blocks_6_37 = this.Vars.blocks_6_attn_qkv_bi + x_blocks_blocks_6_38;
            x_blocks_blocks_6_37NumDims = max(this.NumDims.blocks_6_attn_qkv_bi, coder.const(x_blocks_blocks_6_38NumDims));

            % Reshape:
            [shape1040, x_blocks_blocks_6_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_6_37, this.Vars.x_blocks_blocks_6_12, coder.const(x_blocks_blocks_6_37NumDims), 0);
            x_blocks_blocks_6_19 = reshape(x_blocks_blocks_6_37, shape1040{:});

            % Transpose:
            [perm1041, x_blocks_blocks_6_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1021, coder.const(x_blocks_blocks_6_19NumDims));
            if isempty(perm1041)
                x_blocks_blocks_6_34 = x_blocks_blocks_6_19;
            else
                x_blocks_blocks_6_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_6_19), perm1041);
            end

            % Split:
            [x_blocks_blocks_6_23, x_blocks_blocks_6_24, x_blocks_blocks_6_25, x_blocks_blocks_6_23NumDims, x_blocks_blocks_6_24NumDims, x_blocks_blocks_6_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_6_34, 0, this.x_blocks_blocks_6__4, 3, coder.const(x_blocks_blocks_6_34NumDims));

            % Squeeze:
            [x_blocks_blocks_6_31, x_blocks_blocks_6_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_6_23, this.Vars.x_blocks_blocks_6__5, coder.const(x_blocks_blocks_6_23NumDims));

            % Squeeze:
            [x_blocks_blocks_6_29, x_blocks_blocks_6_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_6_24, this.Vars.x_blocks_blocks_6__6, coder.const(x_blocks_blocks_6_24NumDims));

            % Squeeze:
            [x_blocks_blocks_6_30, x_blocks_blocks_6_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_6_25, this.Vars.x_blocks_blocks_6__7, coder.const(x_blocks_blocks_6_25NumDims));

            % Shape:
            [x_blocks_blocks_6_20, x_blocks_blocks_6_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_6_31, coder.const(x_blocks_blocks_6_31NumDims), 0, coder.const(x_blocks_blocks_6_31NumDims)+1);

            % Slice:
            [indices1042, x_blocks_blocks_6_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_6_20, this.Vars.x_blocks_blocks_6__8, this.Vars.x_blocks_blocks_6__9, '', '', coder.const(x_blocks_blocks_6_20NumDims));
            x_blocks_blocks_6_21 = x_blocks_blocks_6_20(indices1042{:});

            % Cast:
            x_blocks_blocks_6_at = single(x_blocks_blocks_6_21);
            x_blocks_blocks_6_atNumDims = coder.const(x_blocks_blocks_6_21NumDims);

            % Sqrt:
            x_blocks_blocks_6_28 = sqrt(x_blocks_blocks_6_at);
            x_blocks_blocks_6_28NumDims = coder.const(x_blocks_blocks_6_atNumDims);

            % Div:
            x_blocks_blocks_6_13 = this.Vars.x_blocks_blocks_6_10 ./ x_blocks_blocks_6_28;
            x_blocks_blocks_6_13NumDims = max(this.NumDims.x_blocks_blocks_6_10, coder.const(x_blocks_blocks_6_28NumDims));

            % Transpose:
            [perm1043, x_blocks_blocks_6_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1022, coder.const(x_blocks_blocks_6_29NumDims));
            if isempty(perm1043)
                x_blocks_blocks_6_32 = x_blocks_blocks_6_29;
            else
                x_blocks_blocks_6_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_6_29), perm1043);
            end

            % Sqrt:
            x_blocks_blocks_6_26 = sqrt(x_blocks_blocks_6_13);
            x_blocks_blocks_6_26NumDims = coder.const(x_blocks_blocks_6_13NumDims);

            % Mul:
            x_blocks_blocks_6_17 = x_blocks_blocks_6_31 .* x_blocks_blocks_6_26;
            x_blocks_blocks_6_17NumDims = max(coder.const(x_blocks_blocks_6_31NumDims), coder.const(x_blocks_blocks_6_26NumDims));

            % Sqrt:
            x_blocks_blocks_6_27 = sqrt(x_blocks_blocks_6_13);
            x_blocks_blocks_6_27NumDims = coder.const(x_blocks_blocks_6_13NumDims);

            % Mul:
            x_blocks_blocks_6_16 = x_blocks_blocks_6_32 .* x_blocks_blocks_6_27;
            x_blocks_blocks_6_16NumDims = max(coder.const(x_blocks_blocks_6_32NumDims), coder.const(x_blocks_blocks_6_27NumDims));

            % MatMul:
            [x_blocks_blocks_6_15, x_blocks_blocks_6_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_6_17, x_blocks_blocks_6_16, coder.const(x_blocks_blocks_6_17NumDims), coder.const(x_blocks_blocks_6_16NumDims));

            % Softmax:
            [x_blocks_blocks_6_22, x_blocks_blocks_6_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_6_15, -1, coder.const(x_blocks_blocks_6_15NumDims));

            % MatMul:
            [x_blocks_blocks_6_14, x_blocks_blocks_6_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_6_22, x_blocks_blocks_6_30, coder.const(x_blocks_blocks_6_22NumDims), coder.const(x_blocks_blocks_6_30NumDims));

            % Transpose:
            [perm1044, x_blocks_blocks_6_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1023, coder.const(x_blocks_blocks_6_14NumDims));
            if isempty(perm1044)
                x_blocks_blocks_6_33 = x_blocks_blocks_6_14;
            else
                x_blocks_blocks_6_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_6_14), perm1044);
            end

            % Reshape:
            [shape1045, x_blocks_blocks_6_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_6_33, this.Vars.x_blocks_blocks_6_11, coder.const(x_blocks_blocks_6_33NumDims), 0);
            x_blocks_blocks_6_18 = reshape(x_blocks_blocks_6_33, shape1045{:});

            % MatMul:
            [x_blocks_blocks_6_36, x_blocks_blocks_6_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_6_18, this.onnx__MatMul_1190, coder.const(x_blocks_blocks_6_18NumDims), this.NumDims.onnx__MatMul_1190);

            % Add:
            x_blocks_blocks_6_35 = this.Vars.blocks_6_attn_proj_b + x_blocks_blocks_6_36;
            x_blocks_blocks_6_35NumDims = max(this.NumDims.blocks_6_attn_proj_b, coder.const(x_blocks_blocks_6_36NumDims));

            % Add:
            x_blocks_blocks_6__1 = x_blocks_blocks_5_Ad + x_blocks_blocks_6_35;
            x_blocks_blocks_6__1NumDims = max(coder.const(x_blocks_blocks_5_AdNumDims), coder.const(x_blocks_blocks_6_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_6_96, x_blocks_blocks_6_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_6__1, this.blocks_6_norm2_weigh, this.blocks_6_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_6__1NumDims));

            % MatMul:
            [x_blocks_blocks_6_81, x_blocks_blocks_6_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_6_96, this.onnx__MatMul_1191, coder.const(x_blocks_blocks_6_96NumDims), this.NumDims.onnx__MatMul_1191);

            % Add:
            x_blocks_blocks_6_80 = this.Vars.blocks_6_mlp_fc1_bia + x_blocks_blocks_6_81;
            x_blocks_blocks_6_80NumDims = max(this.NumDims.blocks_6_mlp_fc1_bia, coder.const(x_blocks_blocks_6_81NumDims));

            % Div:
            x_blocks_blocks_6_76 = x_blocks_blocks_6_80 ./ this.Vars.x_blocks_blocks_6_75;
            x_blocks_blocks_6_76NumDims = max(coder.const(x_blocks_blocks_6_80NumDims), this.NumDims.x_blocks_blocks_6_75);

            % Erf:
            x_blocks_blocks_6_77 = erf(x_blocks_blocks_6_76);
            x_blocks_blocks_6_77NumDims = coder.const(x_blocks_blocks_6_76NumDims);

            % Add:
            x_blocks_blocks_6_ml = x_blocks_blocks_6_77 + this.Vars.x_blocks_blocks_6_73;
            x_blocks_blocks_6_mlNumDims = max(coder.const(x_blocks_blocks_6_77NumDims), this.NumDims.x_blocks_blocks_6_73);

            % Mul:
            x_blocks_blocks_6_79 = x_blocks_blocks_6_80 .* x_blocks_blocks_6_ml;
            x_blocks_blocks_6_79NumDims = max(coder.const(x_blocks_blocks_6_80NumDims), coder.const(x_blocks_blocks_6_mlNumDims));

            % Mul:
            x_blocks_blocks_6_78 = x_blocks_blocks_6_79 .* this.Vars.x_blocks_blocks_6_74;
            x_blocks_blocks_6_78NumDims = max(coder.const(x_blocks_blocks_6_79NumDims), this.NumDims.x_blocks_blocks_6_74);

            % MatMul:
            [x_blocks_blocks_6_83, x_blocks_blocks_6_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_6_78, this.onnx__MatMul_1192, coder.const(x_blocks_blocks_6_78NumDims), this.NumDims.onnx__MatMul_1192);

            % Add:
            x_blocks_blocks_6_82 = this.Vars.blocks_6_mlp_fc2_bia + x_blocks_blocks_6_83;
            x_blocks_blocks_6_82NumDims = max(this.NumDims.blocks_6_mlp_fc2_bia, coder.const(x_blocks_blocks_6_83NumDims));

            % Add:
            x_blocks_blocks_6_Ad = x_blocks_blocks_6__1 + x_blocks_blocks_6_82;
            x_blocks_blocks_6_AdNumDims = max(coder.const(x_blocks_blocks_6__1NumDims), coder.const(x_blocks_blocks_6_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_7_no, x_blocks_blocks_7_noNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_6_Ad, this.blocks_7_norm1_weigh, this.blocks_7_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_6_AdNumDims));

            % MatMul:
            [x_blocks_blocks_7_38, x_blocks_blocks_7_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_7_no, this.onnx__MatMul_1193, coder.const(x_blocks_blocks_7_noNumDims), this.NumDims.onnx__MatMul_1193);

            % Add:
            x_blocks_blocks_7_37 = this.Vars.blocks_7_attn_qkv_bi + x_blocks_blocks_7_38;
            x_blocks_blocks_7_37NumDims = max(this.NumDims.blocks_7_attn_qkv_bi, coder.const(x_blocks_blocks_7_38NumDims));

            % Reshape:
            [shape1046, x_blocks_blocks_7_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_7_37, this.Vars.x_blocks_blocks_7_12, coder.const(x_blocks_blocks_7_37NumDims), 0);
            x_blocks_blocks_7_19 = reshape(x_blocks_blocks_7_37, shape1046{:});

            % Transpose:
            [perm1047, x_blocks_blocks_7_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1024, coder.const(x_blocks_blocks_7_19NumDims));
            if isempty(perm1047)
                x_blocks_blocks_7_34 = x_blocks_blocks_7_19;
            else
                x_blocks_blocks_7_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_7_19), perm1047);
            end

            % Split:
            [x_blocks_blocks_7_23, x_blocks_blocks_7_24, x_blocks_blocks_7_25, x_blocks_blocks_7_23NumDims, x_blocks_blocks_7_24NumDims, x_blocks_blocks_7_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_7_34, 0, this.x_blocks_blocks_7__4, 3, coder.const(x_blocks_blocks_7_34NumDims));

            % Squeeze:
            [x_blocks_blocks_7_31, x_blocks_blocks_7_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_7_23, this.Vars.x_blocks_blocks_7__5, coder.const(x_blocks_blocks_7_23NumDims));

            % Squeeze:
            [x_blocks_blocks_7_29, x_blocks_blocks_7_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_7_24, this.Vars.x_blocks_blocks_7__6, coder.const(x_blocks_blocks_7_24NumDims));

            % Squeeze:
            [x_blocks_blocks_7_30, x_blocks_blocks_7_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_7_25, this.Vars.x_blocks_blocks_7__7, coder.const(x_blocks_blocks_7_25NumDims));

            % Shape:
            [x_blocks_blocks_7_20, x_blocks_blocks_7_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_7_31, coder.const(x_blocks_blocks_7_31NumDims), 0, coder.const(x_blocks_blocks_7_31NumDims)+1);

            % Slice:
            [indices1048, x_blocks_blocks_7_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_7_20, this.Vars.x_blocks_blocks_7__8, this.Vars.x_blocks_blocks_7__9, '', '', coder.const(x_blocks_blocks_7_20NumDims));
            x_blocks_blocks_7_21 = x_blocks_blocks_7_20(indices1048{:});

            % Cast:
            x_blocks_blocks_7_at = single(x_blocks_blocks_7_21);
            x_blocks_blocks_7_atNumDims = coder.const(x_blocks_blocks_7_21NumDims);

            % Sqrt:
            x_blocks_blocks_7_28 = sqrt(x_blocks_blocks_7_at);
            x_blocks_blocks_7_28NumDims = coder.const(x_blocks_blocks_7_atNumDims);

            % Div:
            x_blocks_blocks_7_13 = this.Vars.x_blocks_blocks_7_10 ./ x_blocks_blocks_7_28;
            x_blocks_blocks_7_13NumDims = max(this.NumDims.x_blocks_blocks_7_10, coder.const(x_blocks_blocks_7_28NumDims));

            % Transpose:
            [perm1049, x_blocks_blocks_7_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1025, coder.const(x_blocks_blocks_7_29NumDims));
            if isempty(perm1049)
                x_blocks_blocks_7_32 = x_blocks_blocks_7_29;
            else
                x_blocks_blocks_7_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_7_29), perm1049);
            end

            % Sqrt:
            x_blocks_blocks_7_26 = sqrt(x_blocks_blocks_7_13);
            x_blocks_blocks_7_26NumDims = coder.const(x_blocks_blocks_7_13NumDims);

            % Mul:
            x_blocks_blocks_7_17 = x_blocks_blocks_7_31 .* x_blocks_blocks_7_26;
            x_blocks_blocks_7_17NumDims = max(coder.const(x_blocks_blocks_7_31NumDims), coder.const(x_blocks_blocks_7_26NumDims));

            % Sqrt:
            x_blocks_blocks_7_27 = sqrt(x_blocks_blocks_7_13);
            x_blocks_blocks_7_27NumDims = coder.const(x_blocks_blocks_7_13NumDims);

            % Mul:
            x_blocks_blocks_7_16 = x_blocks_blocks_7_32 .* x_blocks_blocks_7_27;
            x_blocks_blocks_7_16NumDims = max(coder.const(x_blocks_blocks_7_32NumDims), coder.const(x_blocks_blocks_7_27NumDims));

            % MatMul:
            [x_blocks_blocks_7_15, x_blocks_blocks_7_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_7_17, x_blocks_blocks_7_16, coder.const(x_blocks_blocks_7_17NumDims), coder.const(x_blocks_blocks_7_16NumDims));

            % Softmax:
            [x_blocks_blocks_7_22, x_blocks_blocks_7_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_7_15, -1, coder.const(x_blocks_blocks_7_15NumDims));

            % MatMul:
            [x_blocks_blocks_7_14, x_blocks_blocks_7_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_7_22, x_blocks_blocks_7_30, coder.const(x_blocks_blocks_7_22NumDims), coder.const(x_blocks_blocks_7_30NumDims));

            % Transpose:
            [perm1050, x_blocks_blocks_7_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1026, coder.const(x_blocks_blocks_7_14NumDims));
            if isempty(perm1050)
                x_blocks_blocks_7_33 = x_blocks_blocks_7_14;
            else
                x_blocks_blocks_7_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_7_14), perm1050);
            end

            % Reshape:
            [shape1051, x_blocks_blocks_7_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_7_33, this.Vars.x_blocks_blocks_7_11, coder.const(x_blocks_blocks_7_33NumDims), 0);
            x_blocks_blocks_7_18 = reshape(x_blocks_blocks_7_33, shape1051{:});

            % MatMul:
            [x_blocks_blocks_7_36, x_blocks_blocks_7_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_7_18, this.onnx__MatMul_1204, coder.const(x_blocks_blocks_7_18NumDims), this.NumDims.onnx__MatMul_1204);

            % Add:
            x_blocks_blocks_7_35 = this.Vars.blocks_7_attn_proj_b + x_blocks_blocks_7_36;
            x_blocks_blocks_7_35NumDims = max(this.NumDims.blocks_7_attn_proj_b, coder.const(x_blocks_blocks_7_36NumDims));

            % Add:
            x_blocks_blocks_7__1 = x_blocks_blocks_6_Ad + x_blocks_blocks_7_35;
            x_blocks_blocks_7__1NumDims = max(coder.const(x_blocks_blocks_6_AdNumDims), coder.const(x_blocks_blocks_7_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_7_96, x_blocks_blocks_7_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_7__1, this.blocks_7_norm2_weigh, this.blocks_7_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_7__1NumDims));

            % MatMul:
            [x_blocks_blocks_7_81, x_blocks_blocks_7_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_7_96, this.onnx__MatMul_1205, coder.const(x_blocks_blocks_7_96NumDims), this.NumDims.onnx__MatMul_1205);

            % Add:
            x_blocks_blocks_7_80 = this.Vars.blocks_7_mlp_fc1_bia + x_blocks_blocks_7_81;
            x_blocks_blocks_7_80NumDims = max(this.NumDims.blocks_7_mlp_fc1_bia, coder.const(x_blocks_blocks_7_81NumDims));

            % Div:
            x_blocks_blocks_7_76 = x_blocks_blocks_7_80 ./ this.Vars.x_blocks_blocks_7_75;
            x_blocks_blocks_7_76NumDims = max(coder.const(x_blocks_blocks_7_80NumDims), this.NumDims.x_blocks_blocks_7_75);

            % Erf:
            x_blocks_blocks_7_77 = erf(x_blocks_blocks_7_76);
            x_blocks_blocks_7_77NumDims = coder.const(x_blocks_blocks_7_76NumDims);

            % Add:
            x_blocks_blocks_7_ml = x_blocks_blocks_7_77 + this.Vars.x_blocks_blocks_7_73;
            x_blocks_blocks_7_mlNumDims = max(coder.const(x_blocks_blocks_7_77NumDims), this.NumDims.x_blocks_blocks_7_73);

            % Mul:
            x_blocks_blocks_7_79 = x_blocks_blocks_7_80 .* x_blocks_blocks_7_ml;
            x_blocks_blocks_7_79NumDims = max(coder.const(x_blocks_blocks_7_80NumDims), coder.const(x_blocks_blocks_7_mlNumDims));

            % Mul:
            x_blocks_blocks_7_78 = x_blocks_blocks_7_79 .* this.Vars.x_blocks_blocks_7_74;
            x_blocks_blocks_7_78NumDims = max(coder.const(x_blocks_blocks_7_79NumDims), this.NumDims.x_blocks_blocks_7_74);

            % MatMul:
            [x_blocks_blocks_7_83, x_blocks_blocks_7_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_7_78, this.onnx__MatMul_1206, coder.const(x_blocks_blocks_7_78NumDims), this.NumDims.onnx__MatMul_1206);

            % Add:
            x_blocks_blocks_7_82 = this.Vars.blocks_7_mlp_fc2_bia + x_blocks_blocks_7_83;
            x_blocks_blocks_7_82NumDims = max(this.NumDims.blocks_7_mlp_fc2_bia, coder.const(x_blocks_blocks_7_83NumDims));

            % Add:
            x_blocks_blocks_7_Ad = x_blocks_blocks_7__1 + x_blocks_blocks_7_82;
            x_blocks_blocks_7_AdNumDims = max(coder.const(x_blocks_blocks_7__1NumDims), coder.const(x_blocks_blocks_7_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_8_no, x_blocks_blocks_8_noNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_7_Ad, this.blocks_8_norm1_weigh, this.blocks_8_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_7_AdNumDims));

            % MatMul:
            [x_blocks_blocks_8_38, x_blocks_blocks_8_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_8_no, this.onnx__MatMul_1207, coder.const(x_blocks_blocks_8_noNumDims), this.NumDims.onnx__MatMul_1207);

            % Add:
            x_blocks_blocks_8_37 = this.Vars.blocks_8_attn_qkv_bi + x_blocks_blocks_8_38;
            x_blocks_blocks_8_37NumDims = max(this.NumDims.blocks_8_attn_qkv_bi, coder.const(x_blocks_blocks_8_38NumDims));

            % Reshape:
            [shape1052, x_blocks_blocks_8_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_8_37, this.Vars.x_blocks_blocks_8_12, coder.const(x_blocks_blocks_8_37NumDims), 0);
            x_blocks_blocks_8_19 = reshape(x_blocks_blocks_8_37, shape1052{:});

            % Transpose:
            [perm1053, x_blocks_blocks_8_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1027, coder.const(x_blocks_blocks_8_19NumDims));
            if isempty(perm1053)
                x_blocks_blocks_8_34 = x_blocks_blocks_8_19;
            else
                x_blocks_blocks_8_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_8_19), perm1053);
            end

            % Split:
            [x_blocks_blocks_8_23, x_blocks_blocks_8_24, x_blocks_blocks_8_25, x_blocks_blocks_8_23NumDims, x_blocks_blocks_8_24NumDims, x_blocks_blocks_8_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_8_34, 0, this.x_blocks_blocks_8__4, 3, coder.const(x_blocks_blocks_8_34NumDims));

            % Squeeze:
            [x_blocks_blocks_8_31, x_blocks_blocks_8_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_8_23, this.Vars.x_blocks_blocks_8__5, coder.const(x_blocks_blocks_8_23NumDims));

            % Squeeze:
            [x_blocks_blocks_8_29, x_blocks_blocks_8_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_8_24, this.Vars.x_blocks_blocks_8__6, coder.const(x_blocks_blocks_8_24NumDims));

            % Squeeze:
            [x_blocks_blocks_8_30, x_blocks_blocks_8_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_8_25, this.Vars.x_blocks_blocks_8__7, coder.const(x_blocks_blocks_8_25NumDims));

            % Shape:
            [x_blocks_blocks_8_20, x_blocks_blocks_8_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_8_31, coder.const(x_blocks_blocks_8_31NumDims), 0, coder.const(x_blocks_blocks_8_31NumDims)+1);

            % Slice:
            [indices1054, x_blocks_blocks_8_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_8_20, this.Vars.x_blocks_blocks_8__8, this.Vars.x_blocks_blocks_8__9, '', '', coder.const(x_blocks_blocks_8_20NumDims));
            x_blocks_blocks_8_21 = x_blocks_blocks_8_20(indices1054{:});

            % Cast:
            x_blocks_blocks_8_at = single(x_blocks_blocks_8_21);
            x_blocks_blocks_8_atNumDims = coder.const(x_blocks_blocks_8_21NumDims);

            % Sqrt:
            x_blocks_blocks_8_28 = sqrt(x_blocks_blocks_8_at);
            x_blocks_blocks_8_28NumDims = coder.const(x_blocks_blocks_8_atNumDims);

            % Div:
            x_blocks_blocks_8_13 = this.Vars.x_blocks_blocks_8_10 ./ x_blocks_blocks_8_28;
            x_blocks_blocks_8_13NumDims = max(this.NumDims.x_blocks_blocks_8_10, coder.const(x_blocks_blocks_8_28NumDims));

            % Transpose:
            [perm1055, x_blocks_blocks_8_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1028, coder.const(x_blocks_blocks_8_29NumDims));
            if isempty(perm1055)
                x_blocks_blocks_8_32 = x_blocks_blocks_8_29;
            else
                x_blocks_blocks_8_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_8_29), perm1055);
            end

            % Sqrt:
            x_blocks_blocks_8_26 = sqrt(x_blocks_blocks_8_13);
            x_blocks_blocks_8_26NumDims = coder.const(x_blocks_blocks_8_13NumDims);

            % Mul:
            x_blocks_blocks_8_17 = x_blocks_blocks_8_31 .* x_blocks_blocks_8_26;
            x_blocks_blocks_8_17NumDims = max(coder.const(x_blocks_blocks_8_31NumDims), coder.const(x_blocks_blocks_8_26NumDims));

            % Sqrt:
            x_blocks_blocks_8_27 = sqrt(x_blocks_blocks_8_13);
            x_blocks_blocks_8_27NumDims = coder.const(x_blocks_blocks_8_13NumDims);

            % Mul:
            x_blocks_blocks_8_16 = x_blocks_blocks_8_32 .* x_blocks_blocks_8_27;
            x_blocks_blocks_8_16NumDims = max(coder.const(x_blocks_blocks_8_32NumDims), coder.const(x_blocks_blocks_8_27NumDims));

            % MatMul:
            [x_blocks_blocks_8_15, x_blocks_blocks_8_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_8_17, x_blocks_blocks_8_16, coder.const(x_blocks_blocks_8_17NumDims), coder.const(x_blocks_blocks_8_16NumDims));

            % Softmax:
            [x_blocks_blocks_8_22, x_blocks_blocks_8_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_8_15, -1, coder.const(x_blocks_blocks_8_15NumDims));

            % MatMul:
            [x_blocks_blocks_8_14, x_blocks_blocks_8_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_8_22, x_blocks_blocks_8_30, coder.const(x_blocks_blocks_8_22NumDims), coder.const(x_blocks_blocks_8_30NumDims));

            % Transpose:
            [perm1056, x_blocks_blocks_8_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1029, coder.const(x_blocks_blocks_8_14NumDims));
            if isempty(perm1056)
                x_blocks_blocks_8_33 = x_blocks_blocks_8_14;
            else
                x_blocks_blocks_8_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_8_14), perm1056);
            end

            % Reshape:
            [shape1057, x_blocks_blocks_8_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_8_33, this.Vars.x_blocks_blocks_8_11, coder.const(x_blocks_blocks_8_33NumDims), 0);
            x_blocks_blocks_8_18 = reshape(x_blocks_blocks_8_33, shape1057{:});

            % MatMul:
            [x_blocks_blocks_8_36, x_blocks_blocks_8_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_8_18, this.onnx__MatMul_1218, coder.const(x_blocks_blocks_8_18NumDims), this.NumDims.onnx__MatMul_1218);

            % Add:
            x_blocks_blocks_8_35 = this.Vars.blocks_8_attn_proj_b + x_blocks_blocks_8_36;
            x_blocks_blocks_8_35NumDims = max(this.NumDims.blocks_8_attn_proj_b, coder.const(x_blocks_blocks_8_36NumDims));

            % Add:
            x_blocks_blocks_8__1 = x_blocks_blocks_7_Ad + x_blocks_blocks_8_35;
            x_blocks_blocks_8__1NumDims = max(coder.const(x_blocks_blocks_7_AdNumDims), coder.const(x_blocks_blocks_8_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_8_96, x_blocks_blocks_8_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_8__1, this.blocks_8_norm2_weigh, this.blocks_8_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_8__1NumDims));

            % MatMul:
            [x_blocks_blocks_8_81, x_blocks_blocks_8_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_8_96, this.onnx__MatMul_1219, coder.const(x_blocks_blocks_8_96NumDims), this.NumDims.onnx__MatMul_1219);

            % Add:
            x_blocks_blocks_8_80 = this.Vars.blocks_8_mlp_fc1_bia + x_blocks_blocks_8_81;
            x_blocks_blocks_8_80NumDims = max(this.NumDims.blocks_8_mlp_fc1_bia, coder.const(x_blocks_blocks_8_81NumDims));

            % Div:
            x_blocks_blocks_8_76 = x_blocks_blocks_8_80 ./ this.Vars.x_blocks_blocks_8_75;
            x_blocks_blocks_8_76NumDims = max(coder.const(x_blocks_blocks_8_80NumDims), this.NumDims.x_blocks_blocks_8_75);

            % Erf:
            x_blocks_blocks_8_77 = erf(x_blocks_blocks_8_76);
            x_blocks_blocks_8_77NumDims = coder.const(x_blocks_blocks_8_76NumDims);

            % Add:
            x_blocks_blocks_8_ml = x_blocks_blocks_8_77 + this.Vars.x_blocks_blocks_8_73;
            x_blocks_blocks_8_mlNumDims = max(coder.const(x_blocks_blocks_8_77NumDims), this.NumDims.x_blocks_blocks_8_73);

            % Mul:
            x_blocks_blocks_8_79 = x_blocks_blocks_8_80 .* x_blocks_blocks_8_ml;
            x_blocks_blocks_8_79NumDims = max(coder.const(x_blocks_blocks_8_80NumDims), coder.const(x_blocks_blocks_8_mlNumDims));

            % Mul:
            x_blocks_blocks_8_78 = x_blocks_blocks_8_79 .* this.Vars.x_blocks_blocks_8_74;
            x_blocks_blocks_8_78NumDims = max(coder.const(x_blocks_blocks_8_79NumDims), this.NumDims.x_blocks_blocks_8_74);

            % MatMul:
            [x_blocks_blocks_8_83, x_blocks_blocks_8_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_8_78, this.onnx__MatMul_1220, coder.const(x_blocks_blocks_8_78NumDims), this.NumDims.onnx__MatMul_1220);

            % Add:
            x_blocks_blocks_8_82 = this.Vars.blocks_8_mlp_fc2_bia + x_blocks_blocks_8_83;
            x_blocks_blocks_8_82NumDims = max(this.NumDims.blocks_8_mlp_fc2_bia, coder.const(x_blocks_blocks_8_83NumDims));

            % Add:
            x_blocks_blocks_8_Ad = x_blocks_blocks_8__1 + x_blocks_blocks_8_82;
            x_blocks_blocks_8_AdNumDims = max(coder.const(x_blocks_blocks_8__1NumDims), coder.const(x_blocks_blocks_8_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_9_no, x_blocks_blocks_9_noNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_8_Ad, this.blocks_9_norm1_weigh, this.blocks_9_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_8_AdNumDims));

            % MatMul:
            [x_blocks_blocks_9_38, x_blocks_blocks_9_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_9_no, this.onnx__MatMul_1221, coder.const(x_blocks_blocks_9_noNumDims), this.NumDims.onnx__MatMul_1221);

            % Add:
            x_blocks_blocks_9_37 = this.Vars.blocks_9_attn_qkv_bi + x_blocks_blocks_9_38;
            x_blocks_blocks_9_37NumDims = max(this.NumDims.blocks_9_attn_qkv_bi, coder.const(x_blocks_blocks_9_38NumDims));

            % Reshape:
            [shape1058, x_blocks_blocks_9_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_9_37, this.Vars.x_blocks_blocks_9_12, coder.const(x_blocks_blocks_9_37NumDims), 0);
            x_blocks_blocks_9_19 = reshape(x_blocks_blocks_9_37, shape1058{:});

            % Transpose:
            [perm1059, x_blocks_blocks_9_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1030, coder.const(x_blocks_blocks_9_19NumDims));
            if isempty(perm1059)
                x_blocks_blocks_9_34 = x_blocks_blocks_9_19;
            else
                x_blocks_blocks_9_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_9_19), perm1059);
            end

            % Split:
            [x_blocks_blocks_9_23, x_blocks_blocks_9_24, x_blocks_blocks_9_25, x_blocks_blocks_9_23NumDims, x_blocks_blocks_9_24NumDims, x_blocks_blocks_9_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_9_34, 0, this.x_blocks_blocks_9__4, 3, coder.const(x_blocks_blocks_9_34NumDims));

            % Squeeze:
            [x_blocks_blocks_9_31, x_blocks_blocks_9_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_9_23, this.Vars.x_blocks_blocks_9__5, coder.const(x_blocks_blocks_9_23NumDims));

            % Squeeze:
            [x_blocks_blocks_9_29, x_blocks_blocks_9_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_9_24, this.Vars.x_blocks_blocks_9__6, coder.const(x_blocks_blocks_9_24NumDims));

            % Squeeze:
            [x_blocks_blocks_9_30, x_blocks_blocks_9_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_9_25, this.Vars.x_blocks_blocks_9__7, coder.const(x_blocks_blocks_9_25NumDims));

            % Shape:
            [x_blocks_blocks_9_20, x_blocks_blocks_9_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_9_31, coder.const(x_blocks_blocks_9_31NumDims), 0, coder.const(x_blocks_blocks_9_31NumDims)+1);

            % Slice:
            [indices1060, x_blocks_blocks_9_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_9_20, this.Vars.x_blocks_blocks_9__8, this.Vars.x_blocks_blocks_9__9, '', '', coder.const(x_blocks_blocks_9_20NumDims));
            x_blocks_blocks_9_21 = x_blocks_blocks_9_20(indices1060{:});

            % Cast:
            x_blocks_blocks_9_at = single(x_blocks_blocks_9_21);
            x_blocks_blocks_9_atNumDims = coder.const(x_blocks_blocks_9_21NumDims);

            % Sqrt:
            x_blocks_blocks_9_28 = sqrt(x_blocks_blocks_9_at);
            x_blocks_blocks_9_28NumDims = coder.const(x_blocks_blocks_9_atNumDims);

            % Div:
            x_blocks_blocks_9_13 = this.Vars.x_blocks_blocks_9_10 ./ x_blocks_blocks_9_28;
            x_blocks_blocks_9_13NumDims = max(this.NumDims.x_blocks_blocks_9_10, coder.const(x_blocks_blocks_9_28NumDims));

            % Transpose:
            [perm1061, x_blocks_blocks_9_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1031, coder.const(x_blocks_blocks_9_29NumDims));
            if isempty(perm1061)
                x_blocks_blocks_9_32 = x_blocks_blocks_9_29;
            else
                x_blocks_blocks_9_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_9_29), perm1061);
            end

            % Sqrt:
            x_blocks_blocks_9_26 = sqrt(x_blocks_blocks_9_13);
            x_blocks_blocks_9_26NumDims = coder.const(x_blocks_blocks_9_13NumDims);

            % Mul:
            x_blocks_blocks_9_17 = x_blocks_blocks_9_31 .* x_blocks_blocks_9_26;
            x_blocks_blocks_9_17NumDims = max(coder.const(x_blocks_blocks_9_31NumDims), coder.const(x_blocks_blocks_9_26NumDims));

            % Sqrt:
            x_blocks_blocks_9_27 = sqrt(x_blocks_blocks_9_13);
            x_blocks_blocks_9_27NumDims = coder.const(x_blocks_blocks_9_13NumDims);

            % Mul:
            x_blocks_blocks_9_16 = x_blocks_blocks_9_32 .* x_blocks_blocks_9_27;
            x_blocks_blocks_9_16NumDims = max(coder.const(x_blocks_blocks_9_32NumDims), coder.const(x_blocks_blocks_9_27NumDims));

            % MatMul:
            [x_blocks_blocks_9_15, x_blocks_blocks_9_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_9_17, x_blocks_blocks_9_16, coder.const(x_blocks_blocks_9_17NumDims), coder.const(x_blocks_blocks_9_16NumDims));

            % Softmax:
            [x_blocks_blocks_9_22, x_blocks_blocks_9_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_9_15, -1, coder.const(x_blocks_blocks_9_15NumDims));

            % MatMul:
            [x_blocks_blocks_9_14, x_blocks_blocks_9_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_9_22, x_blocks_blocks_9_30, coder.const(x_blocks_blocks_9_22NumDims), coder.const(x_blocks_blocks_9_30NumDims));

            % Transpose:
            [perm1062, x_blocks_blocks_9_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1032, coder.const(x_blocks_blocks_9_14NumDims));
            if isempty(perm1062)
                x_blocks_blocks_9_33 = x_blocks_blocks_9_14;
            else
                x_blocks_blocks_9_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_9_14), perm1062);
            end

            % Reshape:
            [shape1063, x_blocks_blocks_9_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_9_33, this.Vars.x_blocks_blocks_9_11, coder.const(x_blocks_blocks_9_33NumDims), 0);
            x_blocks_blocks_9_18 = reshape(x_blocks_blocks_9_33, shape1063{:});

            % MatMul:
            [x_blocks_blocks_9_36, x_blocks_blocks_9_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_9_18, this.onnx__MatMul_1232, coder.const(x_blocks_blocks_9_18NumDims), this.NumDims.onnx__MatMul_1232);

            % Add:
            x_blocks_blocks_9_35 = this.Vars.blocks_9_attn_proj_b + x_blocks_blocks_9_36;
            x_blocks_blocks_9_35NumDims = max(this.NumDims.blocks_9_attn_proj_b, coder.const(x_blocks_blocks_9_36NumDims));

            % Add:
            x_blocks_blocks_9__1 = x_blocks_blocks_8_Ad + x_blocks_blocks_9_35;
            x_blocks_blocks_9__1NumDims = max(coder.const(x_blocks_blocks_8_AdNumDims), coder.const(x_blocks_blocks_9_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_9_96, x_blocks_blocks_9_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_9__1, this.blocks_9_norm2_weigh, this.blocks_9_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_9__1NumDims));

            % MatMul:
            [x_blocks_blocks_9_81, x_blocks_blocks_9_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_9_96, this.onnx__MatMul_1233, coder.const(x_blocks_blocks_9_96NumDims), this.NumDims.onnx__MatMul_1233);

            % Add:
            x_blocks_blocks_9_80 = this.Vars.blocks_9_mlp_fc1_bia + x_blocks_blocks_9_81;
            x_blocks_blocks_9_80NumDims = max(this.NumDims.blocks_9_mlp_fc1_bia, coder.const(x_blocks_blocks_9_81NumDims));

            % Div:
            x_blocks_blocks_9_76 = x_blocks_blocks_9_80 ./ this.Vars.x_blocks_blocks_9_75;
            x_blocks_blocks_9_76NumDims = max(coder.const(x_blocks_blocks_9_80NumDims), this.NumDims.x_blocks_blocks_9_75);

            % Erf:
            x_blocks_blocks_9_77 = erf(x_blocks_blocks_9_76);
            x_blocks_blocks_9_77NumDims = coder.const(x_blocks_blocks_9_76NumDims);

            % Add:
            x_blocks_blocks_9_ml = x_blocks_blocks_9_77 + this.Vars.x_blocks_blocks_9_73;
            x_blocks_blocks_9_mlNumDims = max(coder.const(x_blocks_blocks_9_77NumDims), this.NumDims.x_blocks_blocks_9_73);

            % Mul:
            x_blocks_blocks_9_79 = x_blocks_blocks_9_80 .* x_blocks_blocks_9_ml;
            x_blocks_blocks_9_79NumDims = max(coder.const(x_blocks_blocks_9_80NumDims), coder.const(x_blocks_blocks_9_mlNumDims));

            % Mul:
            x_blocks_blocks_9_78 = x_blocks_blocks_9_79 .* this.Vars.x_blocks_blocks_9_74;
            x_blocks_blocks_9_78NumDims = max(coder.const(x_blocks_blocks_9_79NumDims), this.NumDims.x_blocks_blocks_9_74);

            % MatMul:
            [x_blocks_blocks_9_83, x_blocks_blocks_9_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_9_78, this.onnx__MatMul_1234, coder.const(x_blocks_blocks_9_78NumDims), this.NumDims.onnx__MatMul_1234);

            % Add:
            x_blocks_blocks_9_82 = this.Vars.blocks_9_mlp_fc2_bia + x_blocks_blocks_9_83;
            x_blocks_blocks_9_82NumDims = max(this.NumDims.blocks_9_mlp_fc2_bia, coder.const(x_blocks_blocks_9_83NumDims));

            % Add:
            x_blocks_blocks_9_Ad = x_blocks_blocks_9__1 + x_blocks_blocks_9_82;
            x_blocks_blocks_9_AdNumDims = max(coder.const(x_blocks_blocks_9__1NumDims), coder.const(x_blocks_blocks_9_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_10_n, x_blocks_blocks_10_nNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_9_Ad, this.blocks_10_norm1_weig, this.blocks_10_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_9_AdNumDims));

            % MatMul:
            [x_blocks_blocks_1_38, x_blocks_blocks_1_38NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_10_n, this.onnx__MatMul_1235, coder.const(x_blocks_blocks_10_nNumDims), this.NumDims.onnx__MatMul_1235);

            % Add:
            x_blocks_blocks_1_37 = this.Vars.blocks_10_attn_qkv_b + x_blocks_blocks_1_38;
            x_blocks_blocks_1_37NumDims = max(this.NumDims.blocks_10_attn_qkv_b, coder.const(x_blocks_blocks_1_38NumDims));

            % Reshape:
            [shape1064, x_blocks_blocks_1_19NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_1_37, this.Vars.x_blocks_blocks_1_12, coder.const(x_blocks_blocks_1_37NumDims), 0);
            x_blocks_blocks_1_19 = reshape(x_blocks_blocks_1_37, shape1064{:});

            % Transpose:
            [perm1065, x_blocks_blocks_1_34NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1033, coder.const(x_blocks_blocks_1_19NumDims));
            if isempty(perm1065)
                x_blocks_blocks_1_34 = x_blocks_blocks_1_19;
            else
                x_blocks_blocks_1_34 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_1_19), perm1065);
            end

            % Split:
            [x_blocks_blocks_1_23, x_blocks_blocks_1_24, x_blocks_blocks_1_25, x_blocks_blocks_1_23NumDims, x_blocks_blocks_1_24NumDims, x_blocks_blocks_1_25NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks_1_34, 0, this.x_blocks_blocks_10_4, 3, coder.const(x_blocks_blocks_1_34NumDims));

            % Squeeze:
            [x_blocks_blocks_1_31, x_blocks_blocks_1_31NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_1_23, this.Vars.x_blocks_blocks_10_5, coder.const(x_blocks_blocks_1_23NumDims));

            % Squeeze:
            [x_blocks_blocks_1_29, x_blocks_blocks_1_29NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_1_24, this.Vars.x_blocks_blocks_10_6, coder.const(x_blocks_blocks_1_24NumDims));

            % Squeeze:
            [x_blocks_blocks_1_30, x_blocks_blocks_1_30NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks_1_25, this.Vars.x_blocks_blocks_10_7, coder.const(x_blocks_blocks_1_25NumDims));

            % Shape:
            [x_blocks_blocks_1_20, x_blocks_blocks_1_20NumDims] = model.coder.ops.onnxShape(x_blocks_blocks_1_31, coder.const(x_blocks_blocks_1_31NumDims), 0, coder.const(x_blocks_blocks_1_31NumDims)+1);

            % Slice:
            [indices1066, x_blocks_blocks_1_21NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks_1_20, this.Vars.x_blocks_blocks_10_8, this.Vars.x_blocks_blocks_10_9, '', '', coder.const(x_blocks_blocks_1_20NumDims));
            x_blocks_blocks_1_21 = x_blocks_blocks_1_20(indices1066{:});

            % Cast:
            x_blocks_blocks_10_a = single(x_blocks_blocks_1_21);
            x_blocks_blocks_10_aNumDims = coder.const(x_blocks_blocks_1_21NumDims);

            % Sqrt:
            x_blocks_blocks_1_28 = sqrt(x_blocks_blocks_10_a);
            x_blocks_blocks_1_28NumDims = coder.const(x_blocks_blocks_10_aNumDims);

            % Div:
            x_blocks_blocks_1_13 = this.Vars.x_blocks_blocks_1_10 ./ x_blocks_blocks_1_28;
            x_blocks_blocks_1_13NumDims = max(this.NumDims.x_blocks_blocks_1_10, coder.const(x_blocks_blocks_1_28NumDims));

            % Transpose:
            [perm1067, x_blocks_blocks_1_32NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1034, coder.const(x_blocks_blocks_1_29NumDims));
            if isempty(perm1067)
                x_blocks_blocks_1_32 = x_blocks_blocks_1_29;
            else
                x_blocks_blocks_1_32 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_1_29), perm1067);
            end

            % Sqrt:
            x_blocks_blocks_1_26 = sqrt(x_blocks_blocks_1_13);
            x_blocks_blocks_1_26NumDims = coder.const(x_blocks_blocks_1_13NumDims);

            % Mul:
            x_blocks_blocks_1_17 = x_blocks_blocks_1_31 .* x_blocks_blocks_1_26;
            x_blocks_blocks_1_17NumDims = max(coder.const(x_blocks_blocks_1_31NumDims), coder.const(x_blocks_blocks_1_26NumDims));

            % Sqrt:
            x_blocks_blocks_1_27 = sqrt(x_blocks_blocks_1_13);
            x_blocks_blocks_1_27NumDims = coder.const(x_blocks_blocks_1_13NumDims);

            % Mul:
            x_blocks_blocks_1_16 = x_blocks_blocks_1_32 .* x_blocks_blocks_1_27;
            x_blocks_blocks_1_16NumDims = max(coder.const(x_blocks_blocks_1_32NumDims), coder.const(x_blocks_blocks_1_27NumDims));

            % MatMul:
            [x_blocks_blocks_1_15, x_blocks_blocks_1_15NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_1_17, x_blocks_blocks_1_16, coder.const(x_blocks_blocks_1_17NumDims), coder.const(x_blocks_blocks_1_16NumDims));

            % Softmax:
            [x_blocks_blocks_1_22, x_blocks_blocks_1_22NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks_1_15, -1, coder.const(x_blocks_blocks_1_15NumDims));

            % MatMul:
            [x_blocks_blocks_1_14, x_blocks_blocks_1_14NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_1_22, x_blocks_blocks_1_30, coder.const(x_blocks_blocks_1_22NumDims), coder.const(x_blocks_blocks_1_30NumDims));

            % Transpose:
            [perm1068, x_blocks_blocks_1_33NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1035, coder.const(x_blocks_blocks_1_14NumDims));
            if isempty(perm1068)
                x_blocks_blocks_1_33 = x_blocks_blocks_1_14;
            else
                x_blocks_blocks_1_33 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks_1_14), perm1068);
            end

            % Reshape:
            [shape1069, x_blocks_blocks_1_18NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks_1_33, this.Vars.x_blocks_blocks_1_11, coder.const(x_blocks_blocks_1_33NumDims), 0);
            x_blocks_blocks_1_18 = reshape(x_blocks_blocks_1_33, shape1069{:});

            % MatMul:
            [x_blocks_blocks_1_36, x_blocks_blocks_1_36NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_1_18, this.onnx__MatMul_1246, coder.const(x_blocks_blocks_1_18NumDims), this.NumDims.onnx__MatMul_1246);

            % Add:
            x_blocks_blocks_1_35 = this.Vars.blocks_10_attn_proj_ + x_blocks_blocks_1_36;
            x_blocks_blocks_1_35NumDims = max(this.NumDims.blocks_10_attn_proj_, coder.const(x_blocks_blocks_1_36NumDims));

            % Add:
            x_blocks_blocks_10_1 = x_blocks_blocks_9_Ad + x_blocks_blocks_1_35;
            x_blocks_blocks_10_1NumDims = max(coder.const(x_blocks_blocks_9_AdNumDims), coder.const(x_blocks_blocks_1_35NumDims));

            % LayerNormalization:
            [x_blocks_blocks_1_96, x_blocks_blocks_1_96NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_10_1, this.blocks_10_norm2_weig, this.blocks_10_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_10_1NumDims));

            % MatMul:
            [x_blocks_blocks_1_81, x_blocks_blocks_1_81NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_1_96, this.onnx__MatMul_1247, coder.const(x_blocks_blocks_1_96NumDims), this.NumDims.onnx__MatMul_1247);

            % Add:
            x_blocks_blocks_1_80 = this.Vars.blocks_10_mlp_fc1_bi + x_blocks_blocks_1_81;
            x_blocks_blocks_1_80NumDims = max(this.NumDims.blocks_10_mlp_fc1_bi, coder.const(x_blocks_blocks_1_81NumDims));

            % Div:
            x_blocks_blocks_1_76 = x_blocks_blocks_1_80 ./ this.Vars.x_blocks_blocks_1_75;
            x_blocks_blocks_1_76NumDims = max(coder.const(x_blocks_blocks_1_80NumDims), this.NumDims.x_blocks_blocks_1_75);

            % Erf:
            x_blocks_blocks_1_77 = erf(x_blocks_blocks_1_76);
            x_blocks_blocks_1_77NumDims = coder.const(x_blocks_blocks_1_76NumDims);

            % Add:
            x_blocks_blocks_10_m = x_blocks_blocks_1_77 + this.Vars.x_blocks_blocks_1_73;
            x_blocks_blocks_10_mNumDims = max(coder.const(x_blocks_blocks_1_77NumDims), this.NumDims.x_blocks_blocks_1_73);

            % Mul:
            x_blocks_blocks_1_79 = x_blocks_blocks_1_80 .* x_blocks_blocks_10_m;
            x_blocks_blocks_1_79NumDims = max(coder.const(x_blocks_blocks_1_80NumDims), coder.const(x_blocks_blocks_10_mNumDims));

            % Mul:
            x_blocks_blocks_1_78 = x_blocks_blocks_1_79 .* this.Vars.x_blocks_blocks_1_74;
            x_blocks_blocks_1_78NumDims = max(coder.const(x_blocks_blocks_1_79NumDims), this.NumDims.x_blocks_blocks_1_74);

            % MatMul:
            [x_blocks_blocks_1_83, x_blocks_blocks_1_83NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_1_78, this.onnx__MatMul_1248, coder.const(x_blocks_blocks_1_78NumDims), this.NumDims.onnx__MatMul_1248);

            % Add:
            x_blocks_blocks_1_82 = this.Vars.blocks_10_mlp_fc2_bi + x_blocks_blocks_1_83;
            x_blocks_blocks_1_82NumDims = max(this.NumDims.blocks_10_mlp_fc2_bi, coder.const(x_blocks_blocks_1_83NumDims));

            % Add:
            x_blocks_blocks_10_A = x_blocks_blocks_10_1 + x_blocks_blocks_1_82;
            x_blocks_blocks_10_ANumDims = max(coder.const(x_blocks_blocks_10_1NumDims), coder.const(x_blocks_blocks_1_82NumDims));

            % LayerNormalization:
            [x_blocks_blocks_11_n, x_blocks_blocks_11_nNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_10_A, this.blocks_11_norm1_weig, this.blocks_11_norm1_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_10_ANumDims));

            % MatMul:
            [x_blocks_blocks__127, x_blocks_blocks__127NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks_11_n, this.onnx__MatMul_1249, coder.const(x_blocks_blocks_11_nNumDims), this.NumDims.onnx__MatMul_1249);

            % Add:
            x_blocks_blocks__126 = this.Vars.blocks_11_attn_qkv_b + x_blocks_blocks__127;
            x_blocks_blocks__126NumDims = max(this.NumDims.blocks_11_attn_qkv_b, coder.const(x_blocks_blocks__127NumDims));

            % Reshape:
            [shape1070, x_blocks_blocks__108NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks__126, this.Vars.x_blocks_blocks__101, coder.const(x_blocks_blocks__126NumDims), 0);
            x_blocks_blocks__108 = reshape(x_blocks_blocks__126, shape1070{:});

            % Transpose:
            [perm1071, x_blocks_blocks__123NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1036, coder.const(x_blocks_blocks__108NumDims));
            if isempty(perm1071)
                x_blocks_blocks__123 = x_blocks_blocks__108;
            else
                x_blocks_blocks__123 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks__108), perm1071);
            end

            % Split:
            [x_blocks_blocks__112, x_blocks_blocks__113, x_blocks_blocks__114, x_blocks_blocks__112NumDims, x_blocks_blocks__113NumDims, x_blocks_blocks__114NumDims] = model.coder.ops.onnxSplit13(x_blocks_blocks__123, 0, this.x_blocks_blocks_11_4, 3, coder.const(x_blocks_blocks__123NumDims));

            % Squeeze:
            [x_blocks_blocks__120, x_blocks_blocks__120NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks__112, this.Vars.x_blocks_blocks_11_5, coder.const(x_blocks_blocks__112NumDims));

            % Squeeze:
            [x_blocks_blocks__118, x_blocks_blocks__118NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks__113, this.Vars.x_blocks_blocks_11_6, coder.const(x_blocks_blocks__113NumDims));

            % Squeeze:
            [x_blocks_blocks__119, x_blocks_blocks__119NumDims] = model.coder.ops.onnxSqueeze(x_blocks_blocks__114, this.Vars.x_blocks_blocks_11_7, coder.const(x_blocks_blocks__114NumDims));

            % Shape:
            [x_blocks_blocks__109, x_blocks_blocks__109NumDims] = model.coder.ops.onnxShape(x_blocks_blocks__120, coder.const(x_blocks_blocks__120NumDims), 0, coder.const(x_blocks_blocks__120NumDims)+1);

            % Slice:
            [indices1072, x_blocks_blocks__110NumDims] = model.coder.ops.prepareSliceArgs(x_blocks_blocks__109, this.Vars.x_blocks_blocks_11_8, this.Vars.x_blocks_blocks_11_9, '', '', coder.const(x_blocks_blocks__109NumDims));
            x_blocks_blocks__110 = x_blocks_blocks__109(indices1072{:});

            % Cast:
            x_blocks_blocks_11_a = single(x_blocks_blocks__110);
            x_blocks_blocks_11_aNumDims = coder.const(x_blocks_blocks__110NumDims);

            % Sqrt:
            x_blocks_blocks__117 = sqrt(x_blocks_blocks_11_a);
            x_blocks_blocks__117NumDims = coder.const(x_blocks_blocks_11_aNumDims);

            % Div:
            x_blocks_blocks__102 = this.Vars.x_blocks_blocks_1_99 ./ x_blocks_blocks__117;
            x_blocks_blocks__102NumDims = max(this.NumDims.x_blocks_blocks_1_99, coder.const(x_blocks_blocks__117NumDims));

            % Transpose:
            [perm1073, x_blocks_blocks__121NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1037, coder.const(x_blocks_blocks__118NumDims));
            if isempty(perm1073)
                x_blocks_blocks__121 = x_blocks_blocks__118;
            else
                x_blocks_blocks__121 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks__118), perm1073);
            end

            % Sqrt:
            x_blocks_blocks__115 = sqrt(x_blocks_blocks__102);
            x_blocks_blocks__115NumDims = coder.const(x_blocks_blocks__102NumDims);

            % Mul:
            x_blocks_blocks__106 = x_blocks_blocks__120 .* x_blocks_blocks__115;
            x_blocks_blocks__106NumDims = max(coder.const(x_blocks_blocks__120NumDims), coder.const(x_blocks_blocks__115NumDims));

            % Sqrt:
            x_blocks_blocks__116 = sqrt(x_blocks_blocks__102);
            x_blocks_blocks__116NumDims = coder.const(x_blocks_blocks__102NumDims);

            % Mul:
            x_blocks_blocks__105 = x_blocks_blocks__121 .* x_blocks_blocks__116;
            x_blocks_blocks__105NumDims = max(coder.const(x_blocks_blocks__121NumDims), coder.const(x_blocks_blocks__116NumDims));

            % MatMul:
            [x_blocks_blocks__104, x_blocks_blocks__104NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__106, x_blocks_blocks__105, coder.const(x_blocks_blocks__106NumDims), coder.const(x_blocks_blocks__105NumDims));

            % Softmax:
            [x_blocks_blocks__111, x_blocks_blocks__111NumDims] = model.coder.ops.onnxSoftmax13(x_blocks_blocks__104, -1, coder.const(x_blocks_blocks__104NumDims));

            % MatMul:
            [x_blocks_blocks__103, x_blocks_blocks__103NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__111, x_blocks_blocks__119, coder.const(x_blocks_blocks__111NumDims), coder.const(x_blocks_blocks__119NumDims));

            % Transpose:
            [perm1074, x_blocks_blocks__122NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1038, coder.const(x_blocks_blocks__103NumDims));
            if isempty(perm1074)
                x_blocks_blocks__122 = x_blocks_blocks__103;
            else
                x_blocks_blocks__122 = permute(model.coder.ops.extractIfDlarray(x_blocks_blocks__103), perm1074);
            end

            % Reshape:
            [shape1075, x_blocks_blocks__107NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_blocks__122, this.Vars.x_blocks_blocks__100, coder.const(x_blocks_blocks__122NumDims), 0);
            x_blocks_blocks__107 = reshape(x_blocks_blocks__122, shape1075{:});

            % MatMul:
            [x_blocks_blocks__125, x_blocks_blocks__125NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__107, this.onnx__MatMul_1260, coder.const(x_blocks_blocks__107NumDims), this.NumDims.onnx__MatMul_1260);

            % Add:
            x_blocks_blocks__124 = this.Vars.blocks_11_attn_proj_ + x_blocks_blocks__125;
            x_blocks_blocks__124NumDims = max(this.NumDims.blocks_11_attn_proj_, coder.const(x_blocks_blocks__125NumDims));

            % Add:
            x_blocks_blocks_11_1 = x_blocks_blocks_10_A + x_blocks_blocks__124;
            x_blocks_blocks_11_1NumDims = max(coder.const(x_blocks_blocks_10_ANumDims), coder.const(x_blocks_blocks__124NumDims));

            % LayerNormalization:
            [x_blocks_blocks__185, x_blocks_blocks__185NumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_11_1, this.blocks_11_norm2_weig, this.blocks_11_norm2_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_11_1NumDims));

            % MatMul:
            [x_blocks_blocks__170, x_blocks_blocks__170NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__185, this.onnx__MatMul_1261, coder.const(x_blocks_blocks__185NumDims), this.NumDims.onnx__MatMul_1261);

            % Add:
            x_blocks_blocks__169 = this.Vars.blocks_11_mlp_fc1_bi + x_blocks_blocks__170;
            x_blocks_blocks__169NumDims = max(this.NumDims.blocks_11_mlp_fc1_bi, coder.const(x_blocks_blocks__170NumDims));

            % Div:
            x_blocks_blocks__165 = x_blocks_blocks__169 ./ this.Vars.x_blocks_blocks__164;
            x_blocks_blocks__165NumDims = max(coder.const(x_blocks_blocks__169NumDims), this.NumDims.x_blocks_blocks__164);

            % Erf:
            x_blocks_blocks__166 = erf(x_blocks_blocks__165);
            x_blocks_blocks__166NumDims = coder.const(x_blocks_blocks__165NumDims);

            % Add:
            x_blocks_blocks_11_m = x_blocks_blocks__166 + this.Vars.x_blocks_blocks__162;
            x_blocks_blocks_11_mNumDims = max(coder.const(x_blocks_blocks__166NumDims), this.NumDims.x_blocks_blocks__162);

            % Mul:
            x_blocks_blocks__168 = x_blocks_blocks__169 .* x_blocks_blocks_11_m;
            x_blocks_blocks__168NumDims = max(coder.const(x_blocks_blocks__169NumDims), coder.const(x_blocks_blocks_11_mNumDims));

            % Mul:
            x_blocks_blocks__167 = x_blocks_blocks__168 .* this.Vars.x_blocks_blocks__163;
            x_blocks_blocks__167NumDims = max(coder.const(x_blocks_blocks__168NumDims), this.NumDims.x_blocks_blocks__163);

            % MatMul:
            [x_blocks_blocks__172, x_blocks_blocks__172NumDims] = model.coder.ops.onnxMatMul(x_blocks_blocks__167, this.onnx__MatMul_1262, coder.const(x_blocks_blocks__167NumDims), this.NumDims.onnx__MatMul_1262);

            % Add:
            x_blocks_blocks__171 = this.Vars.blocks_11_mlp_fc2_bi + x_blocks_blocks__172;
            x_blocks_blocks__171NumDims = max(this.NumDims.blocks_11_mlp_fc2_bi, coder.const(x_blocks_blocks__172NumDims));

            % Add:
            x_blocks_blocks_11_A = x_blocks_blocks_11_1 + x_blocks_blocks__171;
            x_blocks_blocks_11_ANumDims = max(coder.const(x_blocks_blocks_11_1NumDims), coder.const(x_blocks_blocks__171NumDims));

            % LayerNormalization:
            [x_norm_LayerNormaliz, x_norm_LayerNormalizNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_blocks_11_A, this.norm_weight, this.norm_bias, -1, 1.000000e-06, coder.const(x_blocks_blocks_11_ANumDims));

            % Gather:
            [x_Gather_output_0, x_Gather_output_0NumDims] = model.coder.ops.onnxGather(x_norm_LayerNormaliz, this.Vars.x_Constant_output_0, 1, coder.const(x_norm_LayerNormalizNumDims), this.NumDims.x_Constant_output_0);

            % Gemm:
            [A1076, B1077, C1078, alpha1079, beta1080, x1088NumDims] = model.coder.ops.prepareGemmArgs(x_Gather_output_0, this.head_weight, this.head_bias, this.Vars.Gemmalpha1039, this.Vars.Gemmbeta1040, 0, 1, this.NumDims.head_bias);
            x1088 = alpha1079*B1077*A1076 + beta1080*C1078;

            % Set graph output arguments
            x1088NumDims1041 = coder.const(x1088NumDims);

        end

    end

end
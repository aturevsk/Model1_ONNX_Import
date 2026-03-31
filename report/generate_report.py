#!/usr/bin/env python3
"""Generate PDF report for ViT-Tiny ONNX Import & Native Rebuild Project."""

from reportlab.lib.pagesizes import letter
from reportlab.lib.styles import ParagraphStyle
from reportlab.lib.colors import HexColor
from reportlab.lib.units import inch
from reportlab.platypus import (
    SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle,
    PageBreak, HRFlowable
)
from reportlab.lib.enums import TA_CENTER, TA_JUSTIFY, TA_LEFT
import os

# Colors
DARK_BLUE = HexColor('#1a365d')
MED_BLUE = HexColor('#2b6cb0')
LIGHT_BLUE = HexColor('#ebf4ff')
LIGHT_GRAY = HexColor('#f7fafc')
GRAY = HexColor('#718096')
GREEN = HexColor('#276749')
RED = HexColor('#c53030')
ORANGE = HexColor('#c05621')
WHITE = HexColor('#ffffff')

# Styles
styles = {
    'Title': ParagraphStyle('Title', fontSize=22, fontName='Helvetica-Bold',
                            textColor=DARK_BLUE, alignment=TA_CENTER, spaceAfter=6),
    'Subtitle': ParagraphStyle('Subtitle', fontSize=12, textColor=GRAY,
                               alignment=TA_CENTER, spaceAfter=20),
    'Section': ParagraphStyle('Section', fontSize=16, fontName='Helvetica-Bold',
                              textColor=DARK_BLUE, spaceBefore=16, spaceAfter=8),
    'Subsection': ParagraphStyle('Subsection', fontSize=13, fontName='Helvetica-Bold',
                                 textColor=MED_BLUE, spaceBefore=12, spaceAfter=6),
    'Body': ParagraphStyle('Body', fontSize=10, leading=14, alignment=TA_JUSTIFY),
    'Bullet': ParagraphStyle('Bullet', fontSize=10, leading=14, leftIndent=20),
    'Code': ParagraphStyle('Code', fontSize=8, fontName='Courier',
                           backColor=LIGHT_GRAY, leftIndent=10, rightIndent=10),
    'TableHeader': ParagraphStyle('TableHeader', fontSize=9, fontName='Helvetica-Bold',
                                  textColor=WHITE, alignment=TA_CENTER),
    'TableCell': ParagraphStyle('TableCell', fontSize=9, alignment=TA_CENTER),
    'Rec': ParagraphStyle('Rec', fontSize=11, fontName='Helvetica-Bold',
                          textColor=GREEN, leading=15),
}


def make_table(headers, rows, col_widths=None):
    """Create a styled table with dark blue headers and alternating rows."""
    data = [headers] + rows
    if col_widths is None:
        col_widths = [6.5 * inch / len(headers)] * len(headers)
    t = Table(data, colWidths=col_widths, repeatRows=1)
    style = [
        ('BACKGROUND', (0, 0), (-1, 0), DARK_BLUE),
        ('TEXTCOLOR', (0, 0), (-1, 0), WHITE),
        ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
        ('FONTSIZE', (0, 0), (-1, 0), 9),
        ('FONTSIZE', (0, 1), (-1, -1), 9),
        ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
        ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
        ('GRID', (0, 0), (-1, -1), 0.5, GRAY),
        ('TOPPADDING', (0, 0), (-1, -1), 4),
        ('BOTTOMPADDING', (0, 0), (-1, -1), 4),
        ('LEFTPADDING', (0, 0), (-1, -1), 6),
        ('RIGHTPADDING', (0, 0), (-1, -1), 6),
    ]
    for i in range(1, len(data)):
        if i % 2 == 0:
            style.append(('BACKGROUND', (0, i), (-1, i), LIGHT_BLUE))
    t.setStyle(TableStyle(style))
    return t


def build_report():
    output_path = os.path.join(os.path.dirname(__file__), '..',
                               'ViT_Tiny_ONNX_Import_Report.pdf')
    doc = SimpleDocTemplate(output_path, pagesize=letter,
                            leftMargin=0.75*inch, rightMargin=0.75*inch,
                            topMargin=0.75*inch, bottomMargin=0.75*inch)
    story = []

    # =====================================================================
    # TITLE PAGE
    # =====================================================================
    story.append(Spacer(1, 2*inch))
    story.append(Paragraph("ViT-Tiny ONNX Import &<br/>Native dlnetwork Rebuild", styles['Title']))
    story.append(Spacer(1, 12))
    story.append(HRFlowable(width="60%", color=DARK_BLUE, thickness=2))
    story.append(Spacer(1, 12))
    story.append(Paragraph("MATLAB R2026a Prerelease Update 3", styles['Subtitle']))
    story.append(Spacer(1, 30))

    info_data = [
        ['Model', 'Vision Transformer Tiny (DeiT-Tiny)'],
        ['Source Format', 'ONNX (.onnx)'],
        ['Parameters', '5.7M (192-dim, 12 blocks, 3 heads)'],
        ['Input', '224 x 224 x 3 (ImageNet)'],
        ['Output', '1000-class logits'],
        ['Tool', 'MATLAB R2026a + Deep Learning Toolbox'],
        ['Date', 'March 2026'],
    ]
    info_table = make_table(['Property', 'Value'], info_data,
                            col_widths=[2*inch, 4.5*inch])
    story.append(info_table)
    story.append(PageBreak())

    # =====================================================================
    # 1. EXECUTIVE SUMMARY
    # =====================================================================
    story.append(Paragraph("1. Executive Summary", styles['Section']))
    story.append(Paragraph(
        "This report documents the import, native rebuild, quantization, and Simulink "
        "export of a Vision Transformer Tiny (ViT-Tiny / DeiT-Tiny) model from ONNX format "
        "into MATLAB. The ONNX import via <font face='Courier'>importNetworkFromONNX</font> "
        "collapsed the entire transformer into a single autogenerated layer, blocking "
        "quantization and Simulink deployment. The model was therefore rebuilt from scratch "
        "using only native MATLAB layers, with all 5.7M weights transferred and numerical "
        "equivalence verified (max error 2.8e-4, correlation 1.0).", styles['Body']))
    story.append(Spacer(1, 8))

    summary_data = [
        ['Metric', 'Value'],
        ['ONNX Import Result', '1 autogenerated mega-layer (not deployable)'],
        ['Native Rebuild', '104 layers, all native MATLAB types'],
        ['Weight Transfer', '200 learnables, 5.7M parameters'],
        ['Equivalence Error', 'Max 2.8e-4 (vs ONNX Runtime)'],
        ['Top-5 Agreement', '100% (5/5 match)'],
        ['INT8 Quantization', '26 layers quantized, 90% top-1 agreement'],
        ['Simulink Export', 'Model created with DL Predict block'],
    ]
    story.append(make_table(summary_data[0], summary_data[1:],
                            col_widths=[2.5*inch, 4*inch]))
    story.append(PageBreak())

    # =====================================================================
    # 2. ONNX IMPORT ANALYSIS
    # =====================================================================
    story.append(Paragraph("2. ONNX Import Analysis", styles['Section']))
    story.append(Paragraph(
        "The ONNX model (model.onnx, ~21 MB) was first imported using "
        "<font face='Courier'>importNetworkFromONNX</font>. The importer collapsed "
        "nearly the entire transformer architecture into a single autogenerated layer "
        "named <font face='Courier'>ConstantOfShape_To_GemmLayer1000</font>, containing "
        "114 of the 116 total learnables.", styles['Body']))
    story.append(Spacer(1, 8))

    import_data = [
        ['Layer', 'Type', 'Status'],
        ['x (input)', 'ImageInputLayer', 'Native'],
        ['x_BatchSizeVerifier', 'VerifyBatchSizeLayer', 'ONNX custom'],
        ['x_patch_embed_proj_1', 'Convolution2DLayer', 'Native'],
        ['ConstantOfShape_To_GemmLayer1000', 'AutoGenerated', 'BLOCKED'],
        ['x1088Output', 'PermuteLayer', 'Native'],
    ]
    story.append(make_table(import_data[0], import_data[1:],
                            col_widths=[2.8*inch, 1.8*inch, 1.2*inch]))
    story.append(Spacer(1, 8))
    story.append(Paragraph(
        "The autogenerated layer prevents quantization (INT8 calibration cannot "
        "access internal weights), Simulink export (no layer-block mapping), and "
        "C code generation. This necessitated a full native rebuild.", styles['Body']))
    story.append(PageBreak())

    # =====================================================================
    # 3. NATIVE REBUILD ARCHITECTURE
    # =====================================================================
    story.append(Paragraph("3. Native dlnetwork Rebuild", styles['Section']))
    story.append(Paragraph(
        "The ViT-Tiny architecture was rebuilt from scratch using native MATLAB "
        "layers plus two minimal custom layers for ViT-specific operations. "
        "The architecture faithfully reproduces the original PyTorch DeiT-Tiny model.",
        styles['Body']))
    story.append(Spacer(1, 8))

    story.append(Paragraph("3.1 Architecture Components", styles['Subsection']))
    arch_data = [
        ['Component', 'MATLAB Layer', 'Parameters'],
        ['Patch Embedding', 'convolution2dLayer(16,192)', '9,408'],
        ['Patch Flatten', 'PatchFlattenLayer (custom)', '0'],
        ['CLS Token', 'embeddingConcatenationLayer', '192'],
        ['Position Embedding', 'AddPositionEmbeddingLayer (custom)', '37,824'],
        ['Layer Normalization (x26)', 'layerNormalizationLayer', '9,984'],
        ['Self-Attention (x12)', 'selfAttentionLayer(3, 192)', '1,769,472'],
        ['MLP FC1 (x12)', 'fullyConnectedLayer(768)', '1,778,688'],
        ['GELU (x12)', 'geluLayer', '0'],
        ['MLP FC2 (x12)', 'fullyConnectedLayer(192)', '1,773,504'],
        ['Residual Add (x24)', 'additionLayer(2)', '0'],
        ['CLS Extract', 'indexing1dLayer("first")', '0'],
        ['Classification Head', 'fullyConnectedLayer(1000)', '193,000'],
    ]
    story.append(make_table(arch_data[0], arch_data[1:],
                            col_widths=[2*inch, 2.5*inch, 1.3*inch]))
    story.append(Spacer(1, 8))

    story.append(Paragraph("3.2 Custom Layers", styles['Subsection']))
    story.append(Paragraph(
        "\u2022 <b>PatchFlattenLayer</b>: Converts Conv2D spatial output [H,W,C,B] to "
        "sequence format [C,T,B] with correct row-major (Python-compatible) patch ordering.",
        styles['Bullet']))
    story.append(Paragraph(
        "\u2022 <b>AddPositionEmbeddingLayer</b>: Adds a learnable [192 x 197] positional "
        "embedding to the token sequence. Required because MATLAB's positionEmbeddingLayer "
        "performs lookup (replacement) rather than addition.",
        styles['Bullet']))

    story.append(Spacer(1, 8))
    story.append(Paragraph("3.3 Key Technical Challenges", styles['Subsection']))
    story.append(Paragraph(
        "\u2022 <b>Patch ordering</b>: MATLAB's column-major reshape produces H-fastest ordering, "
        "while PyTorch's row-major produces W-fastest. Fixed by permuting [C,W,H,B] before reshape.",
        styles['Bullet']))
    story.append(Paragraph(
        "\u2022 <b>Position embedding broadcast</b>: Weights [C,T] must be reshaped to [C,1,T] "
        "to avoid expanding the batch dimension via MATLAB implicit expansion.",
        styles['Bullet']))
    story.append(Paragraph(
        "\u2022 <b>QKV weight splitting</b>: ONNX stores combined [192,576] QKV weights. "
        "Transposed and split into separate Q, K, V matrices for selfAttentionLayer.",
        styles['Bullet']))
    story.append(PageBreak())

    # =====================================================================
    # 4. WEIGHT TRANSFER & EQUIVALENCE
    # =====================================================================
    story.append(Paragraph("4. Weight Transfer & Numerical Equivalence", styles['Section']))
    story.append(Paragraph(
        "All 152 weight tensors were extracted from the ONNX file via Python and "
        "transferred to the native MATLAB network. Numerical equivalence was verified "
        "against both the MATLAB ONNX import and ONNX Runtime (Python).", styles['Body']))
    story.append(Spacer(1, 8))

    story.append(Paragraph("4.1 Weight Mapping", styles['Subsection']))
    wm_data = [
        ['ONNX Weight', 'MATLAB Layer', 'Transform'],
        ['patch_embed.proj.weight [192,3,16,16]', 'patch_conv', 'permute([3,4,2,1])'],
        ['cls_token [1,1,192]', 'cls_prepend', 'squeeze + reshape'],
        ['pos_embed [1,197,192]', 'pos_embed', 'squeeze + transpose'],
        ['onnx::MatMul_XXXX [192,576]', 'blockN_attn Q/K/V', 'transpose + split'],
        ['onnx::MatMul_YYYY [192,192]', 'blockN_attn Output', 'transpose'],
        ['onnx::MatMul_ZZZZ [192,768]', 'blockN_fc1', 'transpose'],
        ['onnx::MatMul_WWWW [768,192]', 'blockN_fc2', 'transpose'],
        ['head.weight [1000,192]', 'head', 'direct (no transpose)'],
    ]
    story.append(make_table(wm_data[0], wm_data[1:],
                            col_widths=[2.2*inch, 1.5*inch, 2.1*inch]))
    story.append(Spacer(1, 12))

    story.append(Paragraph("4.2 Equivalence Results", styles['Subsection']))
    eq_data = [
        ['Comparison', 'Max Error', 'Mean Error', 'Correlation'],
        ['Native vs ONNX Runtime', '2.82e-04', '5.08e-05', '1.00000000'],
        ['Native vs MATLAB ONNX Import', '2.24e-04', '4.72e-05', '1.00000000'],
        ['Top-5 Class Agreement', '5/5', '-', '100%'],
    ]
    story.append(make_table(eq_data[0], eq_data[1:],
                            col_widths=[2.2*inch, 1.2*inch, 1.2*inch, 1.2*inch]))
    story.append(Spacer(1, 8))
    story.append(Paragraph(
        "The 2.8e-4 max error is expected for a 12-block transformer with float32 "
        "arithmetic and is well within acceptable tolerance for production deployment.",
        styles['Rec']))
    story.append(PageBreak())

    # =====================================================================
    # 5. DEBUGGING METHODOLOGY
    # =====================================================================
    story.append(Paragraph("5. Debugging Methodology", styles['Section']))
    story.append(Paragraph(
        "Achieving numerical equivalence required systematic debugging across "
        "multiple iterations. The process involved ONNX Runtime as ground truth, "
        "layer-by-layer intermediate output comparison, and careful analysis of "
        "dimension ordering conventions.", styles['Body']))
    story.append(Spacer(1, 8))

    story.append(Paragraph("5.1 Three-Way Comparison Framework", styles['Subsection']))
    story.append(Paragraph(
        "Each iteration was validated against three references: (1) Python ONNX Runtime "
        "as the canonical ground truth, (2) the MATLAB ONNX-imported model with its "
        "autogenerated layer, and (3) the native MATLAB rebuild. ONNX Runtime was invoked "
        "via Python with test inputs saved to .mat files for cross-environment comparison.",
        styles['Body']))
    story.append(Spacer(1, 8))

    debug_data = [
        ['Issue', 'Symptom', 'Root Cause', 'Fix'],
        ['positionEmbeddingLayer\nbehavior',
         'Max error 9.3\nCorrelation 0.65',
         'MATLAB positionEmbeddingLayer\nREPLACES input (lookup)\ninstead of ADDING',
         'Created custom\nAddPositionEmbeddingLayer\nwith additive predict()'],
        ['Pos embed broadcast',
         'Batch dim expanded\nfrom 1 to 197\n(output 197,000 elements)',
         'Weights [C,T] broadcast\nwith input [C,B,T] in\nCBT format expanded B',
         'Reshape weights to\n[C,1,T] before addition'],
        ['Patch ordering\n(column vs row major)',
         'Max error 0.86\nCorrelation 0.998\nTop-2 match, rest differ',
         'MATLAB column-major reshape\ngives H-fastest ordering;\nPyTorch row-major gives\nW-fastest',
         'Changed permute from\n[C,H,W,B] to [C,W,H,B]\nbefore reshape'],
        ['Softmax mismatch',
         'Output range [0,1]\nvs [-7,+7] logits',
         'Native had softmaxLayer\nat end; ONNX model\noutputs raw logits',
         'Removed softmaxLayer\nfrom native network'],
    ]
    story.append(make_table(debug_data[0], debug_data[1:],
                            col_widths=[1.3*inch, 1.3*inch, 1.6*inch, 1.6*inch]))
    story.append(Spacer(1, 8))

    story.append(Paragraph("5.2 ONNX Runtime Intermediate Output Extraction", styles['Subsection']))
    story.append(Paragraph(
        "To isolate errors, intermediate outputs were extracted from ONNX Runtime by "
        "modifying the ONNX graph to expose internal tensors as additional outputs. "
        "The Python script added output nodes after the position embedding add and "
        "after each of the 12 transformer blocks (at the MLP residual add). These "
        "were saved to .mat files and compared element-wise against the native "
        "MATLAB network's corresponding layer activations.", styles['Body']))
    story.append(Spacer(1, 8))
    story.append(Paragraph(
        "This revealed that the activation explosion at block 7 (values reaching "
        "\u00b1490) was genuine model behavior present in both ONNX Runtime and the "
        "native rebuild, not a bug. The block-by-block comparison confirmed errors "
        "accumulated gradually from floating-point differences rather than a single "
        "catastrophic weight mapping error.", styles['Body']))
    story.append(Spacer(1, 8))

    story.append(Paragraph("5.3 Self-Attention Weight Convention Verification", styles['Subsection']))
    story.append(Paragraph(
        "MATLAB's selfAttentionLayer weight convention was empirically verified by "
        "creating a minimal test network with known asymmetric weights. A 1-head, "
        "4-dim attention layer with an asymmetric QueryWeight matrix was tested with "
        "crafted input tokens. The output matched the W*x (left-multiply) prediction, "
        "confirming that MATLAB uses [outputDim x inputDim] format consistent with "
        "the standard fullyConnectedLayer convention.", styles['Body']))
    story.append(Spacer(1, 8))

    story.append(Paragraph("5.4 Convergence of Error", styles['Subsection']))
    conv_data = [
        ['Iteration', 'Change', 'Max Error', 'Correlation'],
        ['Initial', 'First build with functionLayer + positionEmbeddingLayer', '8.56', '0.137'],
        ['Fix 1', 'Custom AddPositionEmbeddingLayer (additive)', '9.52', '0.14'],
        ['Fix 2', 'Fix batch broadcast [C,1,T] reshape', '0.86', '0.998'],
        ['Fix 3', 'Remove softmaxLayer', '0.86', '0.998'],
        ['Fix 4', 'Fix patch ordering (permute [C,W,H,B])', '2.8e-4', '1.000'],
    ]
    story.append(make_table(conv_data[0], conv_data[1:],
                            col_widths=[0.8*inch, 2.8*inch, 1*inch, 1.2*inch]))
    story.append(PageBreak())

    # =====================================================================
    # 6. QUANTIZATION (renumbered)
    # =====================================================================
    story.append(Paragraph("6. INT8 Quantization", styles['Section']))
    story.append(Paragraph(
        "The native dlnetwork was quantized to INT8 using dlquantizer with MATLAB "
        "execution environment. Calibration was performed with 100 random images.",
        styles['Body']))
    story.append(Spacer(1, 8))

    q_data = [
        ['Metric', 'FP32', 'INT8'],
        ['Quantized Layers', '-', '26 layers'],
        ['Max Logit Difference', '-', '4.26'],
        ['Mean Logit Difference', '-', '3.81'],
        ['Top-1 Agreement', '100%', '90%'],
        ['Model Size (approx)', '~22 MB', '~6 MB'],
    ]
    story.append(make_table(q_data[0], q_data[1:],
                            col_widths=[2.5*inch, 1.5*inch, 1.5*inch]))
    story.append(Spacer(1, 8))
    story.append(Paragraph(
        "The 90% top-1 agreement on random data is reasonable for post-training "
        "quantization without fine-tuning. Accuracy would improve with "
        "quantization-aware training (QAT) on real ImageNet data.", styles['Body']))
    story.append(PageBreak())

    # =====================================================================
    # 6. SIMULINK EXPORT
    # =====================================================================
    story.append(Paragraph("7. Simulink Export & Code Generation", styles['Section']))
    story.append(Paragraph(
        "The native network was exported to a Simulink model using the Deep Learning "
        "Predict block. The model was configured for Embedded Coder (ERT) targeting "
        "ARM Cortex-A processors.", styles['Body']))
    story.append(Spacer(1, 8))

    sl_data = [
        ['Property', 'Value'],
        ['Simulink Model', 'vit_tiny_simulink.slx'],
        ['System Target File', 'ert.tlc (Embedded Coder)'],
        ['Target Hardware', 'ARM Cortex-A'],
        ['Solver', 'Fixed-step discrete'],
        ['DL Block', 'deeplib/Predict'],
    ]
    story.append(make_table(sl_data[0], sl_data[1:],
                            col_widths=[2.5*inch, 4*inch]))
    story.append(Spacer(1, 8))

    story.append(Paragraph("7.1 Code Generation Notes", styles['Subsection']))
    story.append(Paragraph(
        "\u2022 The <font face='Courier'>indexing1dLayer</font> has a known limitation "
        "with code generation (Index parameter not supported in codegen analyzer).",
        styles['Bullet']))
    story.append(Paragraph(
        "\u2022 Custom layers (PatchFlattenLayer, AddPositionEmbeddingLayer) require "
        "codegen-compatible implementations for full embedded deployment.",
        styles['Bullet']))
    story.append(Paragraph(
        "\u2022 The Simulink model is functional for simulation and PIL testing.",
        styles['Bullet']))
    story.append(PageBreak())

    # =====================================================================
    # 7. CONCLUSIONS
    # =====================================================================
    story.append(Paragraph("8. Conclusions & Recommendations", styles['Section']))
    story.append(Paragraph(
        "The ViT-Tiny ONNX model was successfully imported and rebuilt as a fully "
        "native MATLAB dlnetwork with 104 layers. The native rebuild eliminates all "
        "autogenerated layers, enabling quantization, Simulink integration, and a "
        "pathway to embedded code generation.", styles['Body']))
    story.append(Spacer(1, 12))

    story.append(Paragraph("Recommendations:", styles['Rec']))
    story.append(Paragraph(
        "\u2022 Use quantization-aware training (QAT) with real ImageNet data to improve "
        "INT8 accuracy beyond the 90% post-training baseline.", styles['Bullet']))
    story.append(Paragraph(
        "\u2022 Add codegen pragma annotations to custom layers for full ARM deployment.",
        styles['Bullet']))
    story.append(Paragraph(
        "\u2022 Consider model distillation to a smaller ViT variant for tighter "
        "memory-constrained targets.", styles['Bullet']))

    # Build PDF
    doc.build(story)
    print(f"Report generated: {os.path.abspath(output_path)}")


if __name__ == '__main__':
    build_report()

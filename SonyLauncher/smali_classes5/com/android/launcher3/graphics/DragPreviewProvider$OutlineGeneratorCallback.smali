.class Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;
.super Ljava/lang/Object;
.source "DragPreviewProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/DragPreviewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutlineGeneratorCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsIcon:Z

.field private final mPreviewSnapshot:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .line 194
    iput-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mPreviewSnapshot:Landroid/graphics/Bitmap;

    .line 196
    iget-object v0, p1, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mContext:Landroid/content/Context;

    .line 197
    iget-object p1, p1, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/BubbleTextView;

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mIsIcon:Z

    .line 198
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget-object v2, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mPreviewSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/graphics/DragPreviewProvider;->convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 203
    .local v1, "preview":Landroid/graphics/Bitmap;
    iget-boolean v2, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mIsIcon:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 205
    .local v2, "size":I
    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 211
    .end local v2    # "size":I
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v2, v2, [B

    .line 212
    .local v2, "pixels":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 213
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 214
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 216
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 217
    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbc

    if-ge v6, v7, :cond_1

    .line 218
    aput-byte v3, v2, v5

    .line 216
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 222
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 223
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 225
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 226
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    .line 229
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    iget-object v8, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget v8, v8, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    int-to-float v8, v8

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 230
    const/4 v7, 0x2

    new-array v13, v7, [I

    .line 231
    .local v13, "outerBlurOffset":[I
    invoke-virtual {v1, v5, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 233
    .local v14, "thickOuterBlur":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    iget-object v9, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/launcher3/R$dimen;->blur_size_thin_outline:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    sget-object v10, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v9, v10}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 233
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 236
    new-array v15, v7, [I

    .line 237
    .local v15, "brightOutlineOffset":[I
    invoke-virtual {v1, v5, v15}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 240
    .local v12, "brightOutline":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    const/high16 v8, -0x1000000

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 242
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    iget-object v9, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget v9, v9, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    int-to-float v9, v9

    sget-object v10, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v9, v10}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 243
    new-array v11, v7, [I

    .line 244
    .local v11, "thickInnerBlurOffset":[I
    invoke-virtual {v1, v5, v11}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 247
    .local v10, "thickInnerBlur":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 248
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 249
    invoke-virtual {v6, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    aget v7, v11, v3

    neg-int v7, v7

    int-to-float v7, v7

    const/16 v16, 0x1

    aget v8, v11, v16

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v1, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    const/4 v8, 0x0

    const/16 v17, 0x0

    aget v7, v11, v3

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move/from16 v19, v7

    move-object v7, v6

    move/from16 v18, v9

    const/4 v3, 0x0

    move/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10    # "thickInnerBlur":Landroid/graphics/Bitmap;
    .local v17, "thickInnerBlur":Landroid/graphics/Bitmap;
    move/from16 v10, v19

    move-object/from16 v19, v11

    .end local v11    # "thickInnerBlurOffset":[I
    .local v19, "thickInnerBlurOffset":[I
    move/from16 v11, v18

    move-object/from16 v20, v12

    .end local v12    # "brightOutline":Landroid/graphics/Bitmap;
    .local v20, "brightOutline":Landroid/graphics/Bitmap;
    move-object v12, v5

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 253
    const/4 v9, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v10, v7

    aget v7, v19, v16

    neg-int v7, v7

    int-to-float v11, v7

    move-object v7, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 256
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 257
    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 259
    aget v7, v19, v8

    int-to-float v7, v7

    aget v9, v19, v16

    int-to-float v9, v9

    move-object/from16 v10, v17

    .end local v17    # "thickInnerBlur":Landroid/graphics/Bitmap;
    .restart local v10    # "thickInnerBlur":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v10, v7, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 261
    aget v7, v13, v8

    int-to-float v7, v7

    aget v9, v13, v16

    int-to-float v9, v9

    invoke-virtual {v6, v14, v7, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 264
    aget v7, v15, v8

    int-to-float v7, v7

    aget v8, v15, v16

    int-to-float v8, v8

    move-object/from16 v9, v20

    .end local v20    # "brightOutline":Landroid/graphics/Bitmap;
    .local v9, "brightOutline":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v9, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    iget-object v3, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iput-object v1, v3, Lcom/android/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    .line 273
    return-void
.end method

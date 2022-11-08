.class public Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;
.super Ljava/lang/Object;
.source "DatabaseWidgetPreviewLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetPreviewLoader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreviewBoxCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    .line 65
    .local v0, "previewCornerRadius":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 66
    move v1, v0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->widget_preview_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mPreviewBoxCornerRadius:F

    .line 68
    return-void
.end method

.method private drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;-><init>(I)V

    .line 239
    .local v1, "builder":Lcom/android/launcher3/icons/ShadowGenerator$Builder;
    sget v2, Lcom/android/launcher3/R$dimen;->widget_preview_shadow_blur:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    .line 240
    iget v2, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mPreviewBoxCornerRadius:F

    iput v2, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    .line 241
    sget v2, Lcom/android/launcher3/R$dimen;->widget_preview_key_shadow_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 243
    iget-object v2, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v3, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    iget v4, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    int-to-float v5, p2

    iget v6, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    sub-float/2addr v5, v6

    int-to-float v6, p3

    iget v7, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    sub-float/2addr v6, v7

    iget v7, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    sub-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 246
    invoke-virtual {v1, p1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v2, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    return-object v2
.end method

.method private generatePreview(Lcom/android/launcher3/model/WidgetItem;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .line 95
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateShortcutPreview(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private generateShortcutPreview(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "info"    # Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 253
    .local v0, "iconSize":I
    iget-object v1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->widget_preview_shortcut_padding:I

    .line 254
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 256
    .local v7, "padding":I
    mul-int/lit8 v1, v7, 0x2

    add-int v8, v0, v1

    .line 257
    .local v8, "size":I
    if-lt p3, v8, :cond_0

    if-lt p2, v8, :cond_0

    .line 260
    new-instance v9, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-object v2, p0

    move v3, v8

    move-object v4, p1

    move v5, v7

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)V

    invoke-static {v8, v8, v9}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 258
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Max size is too small for preview"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 277
    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 278
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 280
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "info"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p2, "maxPreviewWidth"    # I
    .param p3, "preScaledWidthOut"    # [I

    .line 113
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-string v1, "WidgetPreviewLoader"

    if-gez p2, :cond_0

    const v0, 0x7fffffff

    move v14, v0

    .end local p2    # "maxPreviewWidth":I
    .local v0, "maxPreviewWidth":I
    goto :goto_0

    .end local v0    # "maxPreviewWidth":I
    .restart local p2    # "maxPreviewWidth":I
    :cond_0
    move/from16 v14, p2

    .line 115
    .end local p2    # "maxPreviewWidth":I
    .local v14, "maxPreviewWidth":I
    :goto_0
    const/4 v2, 0x0

    .line 116
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget v0, v13, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->previewImage:I

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 118
    :try_start_0
    iget-object v0, v12, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v0, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    goto :goto_1

    .line 119
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading widget preview for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v2, 0x0

    .line 125
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    if-eqz v2, :cond_1

    .line 126
    invoke-direct {v12, v2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    goto :goto_2

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v13, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->previewImage:I

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for provider: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v13, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_2

    .line 116
    :cond_2
    move-object v0, v2

    .line 135
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    move v15, v2

    .line 136
    .local v15, "widgetPreviewExists":Z
    iget v11, v13, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    .line 137
    .local v11, "spanX":I
    iget v10, v13, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    .line 142
    .local v10, "spanY":I
    iget-object v2, v12, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 144
    .local v9, "dp":Lcom/android/launcher3/DeviceProfile;
    if-eqz v15, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_4

    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_4

    .line 146
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 147
    .local v2, "previewWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "previewHeight":I
    goto :goto_4

    .line 149
    .end local v2    # "previewWidth":I
    .end local v4    # "previewHeight":I
    :cond_4
    iget-object v2, v12, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    iget-object v4, v13, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v2, v4, v9, v11, v10}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetPaddedSizePx(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v2

    .line 151
    .local v2, "widgetSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 152
    .local v4, "previewWidth":I
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    move v2, v4

    move v4, v5

    .line 155
    .local v2, "previewWidth":I
    .local v4, "previewHeight":I
    :goto_4
    if-eqz p3, :cond_5

    .line 156
    aput v2, p3, v3

    .line 160
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    if-le v2, v14, :cond_6

    .line 161
    int-to-float v5, v14

    int-to-float v6, v2

    div-float/2addr v5, v6

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    move/from16 v16, v5

    .line 162
    .local v16, "scale":F
    cmpl-float v3, v16, v3

    if-eqz v3, :cond_7

    .line 163
    int-to-float v3, v2

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 164
    int-to-float v3, v4

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v8, v2

    move v7, v4

    goto :goto_6

    .line 162
    :cond_7
    move v8, v2

    move v7, v4

    .line 167
    .end local v2    # "previewWidth":I
    .end local v4    # "previewHeight":I
    .local v7, "previewHeight":I
    .local v8, "previewWidth":I
    :goto_6
    move v5, v8

    .line 168
    .local v5, "previewWidthF":I
    move v6, v7

    .line 169
    .local v6, "previewHeightF":I
    move-object v4, v0

    .line 171
    .local v4, "drawableF":Landroid/graphics/drawable/Drawable;
    new-instance v3, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object/from16 p2, v0

    move-object v0, v3

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local p2, "drawable":Landroid/graphics/drawable/Drawable;
    move v3, v15

    move v12, v7

    .end local v7    # "previewHeight":I
    .local v12, "previewHeight":I
    move v7, v11

    move v13, v8

    .end local v8    # "previewWidth":I
    .local v13, "previewWidth":I
    move v8, v10

    move-object/from16 v17, v9

    .end local v9    # "dp":Lcom/android/launcher3/DeviceProfile;
    .local v17, "dp":Lcom/android/launcher3/DeviceProfile;
    move-object/from16 v9, p1

    move/from16 v18, v10

    .end local v10    # "spanY":I
    .local v18, "spanY":I
    move-object/from16 v10, v17

    move/from16 v19, v11

    .end local v11    # "spanX":I
    .local v19, "spanX":I
    move/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;F)V

    invoke-static {v13, v12, v0}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$generateShortcutPreview$2$com-android-launcher3-widget-DatabaseWidgetPreviewLoader(ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "size"    # I
    .param p2, "info"    # Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    .param p3, "padding"    # I
    .param p4, "iconSize"    # I
    .param p5, "c"    # Landroid/graphics/Canvas;

    .line 261
    invoke-direct {p0, p5, p1, p1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v0

    .line 264
    .local v0, "li":Lcom/android/launcher3/icons/LauncherIcons;
    iget-object v1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 266
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    .line 265
    invoke-virtual {p2, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    .line 268
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    .line 270
    add-int v2, p3, p4

    add-int v3, p3, p4

    invoke-virtual {v1, p3, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    invoke-virtual {v1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    return-void
.end method

.method synthetic lambda$generateWidgetPreview$1$com-android-launcher3-widget-DatabaseWidgetPreviewLoader(ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLandroid/graphics/Canvas;)V
    .locals 20
    .param p1, "widgetPreviewExists"    # Z
    .param p2, "drawableF"    # Landroid/graphics/drawable/Drawable;
    .param p3, "previewWidthF"    # I
    .param p4, "previewHeightF"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "info"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p8, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p9, "scale"    # F
    .param p10, "c"    # Landroid/graphics/Canvas;

    .line 173
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v14, p10

    if-eqz p1, :cond_0

    .line 174
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v9, p8

    goto/16 :goto_5

    .line 180
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    move-object v15, v0

    .line 182
    .local v15, "p":Landroid/graphics/Paint;
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    .line 183
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v4

    const/4 v10, 0x0

    invoke-direct {v0, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 186
    .local v0, "boxRect":Landroid/graphics/RectF;
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    const/4 v8, -0x1

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v8, v1, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 190
    .local v8, "roundedCorner":F
    invoke-virtual {v14, v0, v8, v8, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 191
    .end local v8    # "roundedCorner":F
    move-object v13, v0

    goto :goto_0

    .line 192
    .end local v0    # "boxRect":Landroid/graphics/RectF;
    :cond_1
    invoke-direct {v1, v14, v3, v4}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;

    move-result-object v0

    move-object v13, v0

    .line 195
    .local v13, "boxRect":Landroid/graphics/RectF;
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object v0, v1, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/android/launcher3/R$dimen;->widget_preview_cell_divider_width:I

    .line 197
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 196
    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 200
    iget v0, v13, Landroid/graphics/RectF;->left:F

    .line 201
    .local v0, "t":F
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v8

    int-to-float v9, v5

    div-float v16, v8, v9

    .line 202
    .local v16, "tileSize":F
    const/4 v8, 0x1

    move v12, v8

    .local v12, "i":I
    :goto_1
    if-ge v12, v5, :cond_2

    .line 203
    add-float v0, v0, v16

    .line 204
    const/4 v10, 0x0

    int-to-float v11, v4

    move-object/from16 v8, p10

    move v9, v0

    move/from16 v17, v11

    move v11, v0

    move/from16 v18, v12

    .end local v12    # "i":I
    .local v18, "i":I
    move/from16 v12, v17

    move-object v2, v13

    .end local v13    # "boxRect":Landroid/graphics/RectF;
    .local v2, "boxRect":Landroid/graphics/RectF;
    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    add-int/lit8 v12, v18, 0x1

    move-object v13, v2

    move-object/from16 v2, p2

    .end local v18    # "i":I
    .restart local v12    # "i":I
    goto :goto_1

    .end local v2    # "boxRect":Landroid/graphics/RectF;
    .restart local v13    # "boxRect":Landroid/graphics/RectF;
    :cond_2
    move/from16 v18, v12

    move-object v2, v13

    .line 207
    .end local v12    # "i":I
    .end local v13    # "boxRect":Landroid/graphics/RectF;
    .restart local v2    # "boxRect":Landroid/graphics/RectF;
    iget v0, v2, Landroid/graphics/RectF;->top:F

    .line 208
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    int-to-float v9, v6

    div-float v16, v8, v9

    .line 209
    const/4 v8, 0x1

    move/from16 v19, v8

    move v8, v0

    move/from16 v0, v19

    .local v0, "i":I
    .local v8, "t":F
    :goto_2
    if-ge v0, v6, :cond_3

    .line 210
    add-float v17, v8, v16

    .line 211
    .end local v8    # "t":F
    .local v17, "t":F
    const/4 v9, 0x0

    int-to-float v11, v3

    move-object/from16 v8, p10

    move/from16 v10, v17

    move/from16 v12, v17

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v17

    goto :goto_2

    .line 216
    .end local v0    # "i":I
    .end local v17    # "t":F
    .restart local v8    # "t":F
    :cond_3
    :try_start_0
    iget-object v0, v1, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iget-object v9, v7, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 217
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget v10, v7, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher3/icons/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 218
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 219
    move-object/from16 v9, p8

    :try_start_1
    iget v10, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 220
    .local v10, "appIconSize":I
    int-to-float v11, v10

    mul-float v11, v11, p9

    .line 221
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 220
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-int v11, v11

    .line 223
    .local v11, "iconSize":I
    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v0, v12

    .line 224
    sub-int v12, v3, v11

    div-int/lit8 v12, v12, 0x2

    .line 225
    .local v12, "hoffset":I
    sub-int v13, v4, v11

    div-int/lit8 v13, v13, 0x2
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .local v13, "yoffset":I
    add-int v1, v12, v11

    move-object/from16 v17, v2

    .end local v2    # "boxRect":Landroid/graphics/RectF;
    .local v17, "boxRect":Landroid/graphics/RectF;
    add-int v2, v13, v11

    :try_start_2
    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 229
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "appIconSize":I
    .end local v11    # "iconSize":I
    .end local v12    # "hoffset":I
    .end local v13    # "yoffset":I
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v17    # "boxRect":Landroid/graphics/RectF;
    .restart local v2    # "boxRect":Landroid/graphics/RectF;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 218
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v9, p8

    move-object/from16 v17, v2

    .line 230
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "boxRect":Landroid/graphics/RectF;
    .restart local v17    # "boxRect":Landroid/graphics/RectF;
    :goto_3
    goto :goto_5

    .line 229
    .end local v17    # "boxRect":Landroid/graphics/RectF;
    .restart local v2    # "boxRect":Landroid/graphics/RectF;
    :catch_2
    move-exception v0

    move-object/from16 v9, p8

    :goto_4
    move-object/from16 v17, v2

    .line 232
    .end local v2    # "boxRect":Landroid/graphics/RectF;
    .end local v8    # "t":F
    .end local v15    # "p":Landroid/graphics/Paint;
    .end local v16    # "tileSize":F
    :goto_5
    return-void
.end method

.method synthetic lambda$loadPreview$0$com-android-launcher3-widget-DatabaseWidgetPreviewLoader(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "previewSize"    # Landroid/util/Size;

    .line 83
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generatePreview(Lcom/android/launcher3/model/WidgetItem;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadPreview(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;Ljava/util/function/Consumer;)Lcom/android/launcher3/icons/cache/HandlerRunnable;
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "previewSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/WidgetItem;",
            "Landroid/util/Size;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/launcher3/icons/cache/HandlerRunnable;"
        }
    .end annotation

    .line 81
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Bitmap;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 82
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    new-instance v2, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)V

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-direct {v1, v0, v2, v3, p3}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 86
    .local v1, "request":Lcom/android/launcher3/icons/cache/HandlerRunnable;, "Lcom/android/launcher3/icons/cache/HandlerRunnable<Landroid/graphics/Bitmap;>;"
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 87
    return-object v1
.end method

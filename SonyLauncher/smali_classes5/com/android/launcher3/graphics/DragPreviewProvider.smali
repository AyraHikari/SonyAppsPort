.class public Lcom/android/launcher3/graphics/DragPreviewProvider;
.super Ljava/lang/Object;
.source "DragPreviewProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;
    }
.end annotation


# instance fields
.field public final blurSizeOutline:I

.field public generatedDragOutline:Landroid/graphics/Bitmap;

.field private mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mView:Landroid/view/View;

.field public final previewPadding:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    .line 69
    nop

    .line 70
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->blur_size_medium_outline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    .line 71
    iput v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    .line 72
    return-void
.end method

.method protected static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    :goto_1
    return-object v0
.end method


# virtual methods
.method protected convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .line 185
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    const/4 v1, 0x0

    .line 103
    .local v1, "width":I
    const/4 v2, 0x0

    .line 105
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 106
    .local v0, "scale":F
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v4, v3, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v4, :cond_1

    .line 107
    check-cast v3, Lcom/android/launcher3/dragndrop/DraggableView;

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v3, v4}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 108
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 109
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 112
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 115
    :goto_0
    new-instance v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int v5, v1, v4

    add-int/2addr v4, v2

    new-instance v6, Lcom/android/launcher3/graphics/DragPreviewProvider$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/DragPreviewProvider;F)V

    .line 116
    invoke-static {v5, v4, v6}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    return-object v3
.end method

.method protected drawDragView(Landroid/graphics/Canvas;F)V
    .locals 6
    .param p1, "destCanvas"    # Landroid/graphics/Canvas;
    .param p2, "scale"    # F

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 79
    .local v0, "saveCount":I
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 81
    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v2, :cond_1

    .line 82
    check-cast v1, Lcom/android/launcher3/dragndrop/DraggableView;

    .line 83
    .local v1, "dv":Lcom/android/launcher3/dragndrop/DraggableView;
    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DraggableView;->prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v2

    .line 84
    .local v2, "t":Lcom/android/launcher3/util/SafeCloseable;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 85
    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Lcom/android/launcher3/util/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v3

    .line 90
    .end local v1    # "dv":Lcom/android/launcher3/dragndrop/DraggableView;
    .end local v2    # "t":Lcom/android/launcher3/util/SafeCloseable;
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 91
    return-void
.end method

.method public final generateDragOutline(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .line 137
    new-instance v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;-><init>(Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    .line 138
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 127
    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F
    .locals 6
    .param p1, "preview"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outPos"    # [I

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 154
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v0

    .line 155
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 158
    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v1

    div-float/2addr v0, v1

    .line 161
    :cond_0
    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 161
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, v1

    .line 163
    const/4 v1, 0x1

    aget v2, p2, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, v1

    .line 165
    return v0
.end method

.method public getScaleAndPosition(Landroid/view/View;[I)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outPos"    # [I

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 171
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v0

    .line 172
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 175
    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v1

    div-float/2addr v0, v1

    .line 178
    :cond_0
    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 178
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, v1

    .line 180
    const/4 v1, 0x1

    aget v2, p2, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, v1

    .line 181
    return v0
.end method

.method synthetic lambda$createDrawable$0$com-android-launcher3-graphics-DragPreviewProvider(FLandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "c"    # Landroid/graphics/Canvas;

    .line 117
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;F)V

    return-void
.end method

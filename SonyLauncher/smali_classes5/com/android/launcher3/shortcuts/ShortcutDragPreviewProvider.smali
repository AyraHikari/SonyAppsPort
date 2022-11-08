.class public Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "ShortcutDragPreviewProvider.java"


# instance fields
.field private final mPositionShift:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "shift"    # Landroid/graphics/Point;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    .line 42
    iput-object p2, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mPositionShift:Landroid/graphics/Point;

    .line 43
    return-void
.end method

.method private createDragBitmapLegacy()Landroid/graphics/Bitmap;
    .locals 8

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 63
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 64
    .local v2, "size":I
    iget v3, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v4, v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 68
    .local v3, "b":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v4, "canvas":Landroid/graphics/Canvas;
    iget v5, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    int-to-float v5, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 71
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 72
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    return-object v3
.end method

.method private drawDragViewOnBackground(Landroid/graphics/Canvas;F)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "size"    # F

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 80
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 82
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method


# virtual methods
.method public createDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 47
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 49
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 50
    .local v0, "size":I
    new-instance v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget v2, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v3, v0

    new-instance v4, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;I)V

    .line 51
    invoke-static {v2, v3, v4}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    return-object v1

    .line 56
    .end local v0    # "size":I
    :cond_0
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {p0}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->createDragBitmapLegacy()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F
    .locals 9
    .param p1, "preview"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outPos"    # [I

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 89
    .local v0, "context":Lcom/android/launcher3/views/ActivityContext;
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 90
    .local v1, "iconSize":I
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v2

    .line 92
    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    .line 93
    .local v3, "iconLeft":I
    iget-object v4, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v3, v4, v3

    .line 97
    :cond_0
    const/4 v4, 0x0

    aget v5, p2, v4

    int-to-float v6, v3

    mul-float/2addr v6, v2

    int-to-float v7, v1

    mul-float/2addr v7, v2

    .line 98
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mPositionShift:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 97
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p2, v4

    .line 100
    const/4 v4, 0x1

    aget v5, p2, v4

    iget-object v6, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mPositionShift:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p2, v4

    .line 102
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v4, v4

    .line 103
    .local v4, "size":F
    int-to-float v5, v1

    mul-float/2addr v5, v2

    div-float/2addr v5, v4

    return v5
.end method

.method synthetic lambda$createDrawable$0$com-android-launcher3-shortcuts-ShortcutDragPreviewProvider(ILandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "c"    # Landroid/graphics/Canvas;

    .line 54
    int-to-float v0, p1

    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->drawDragViewOnBackground(Landroid/graphics/Canvas;F)V

    return-void
.end method

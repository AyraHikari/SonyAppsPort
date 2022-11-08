.class public abstract Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "NavigableAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;


# instance fields
.field protected final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mChildrenFocused:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mScaleForReorderBounce:F

.field private mScaleToFit:F

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTranslationForCentering:Landroid/graphics/PointF;

.field private final mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

.field private final mTranslationForReorderBounce:Landroid/graphics/PointF;

.field private final mTranslationForReorderPreview:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    .line 50
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    .line 52
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    .line 54
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    .line 55
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    .line 56
    iput v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTempRect:Landroid/graphics/Rect;

    .line 67
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 68
    return-void
.end method

.method private dispatchChildFocus(Z)V
    .locals 0
    .param p1, "childIsFocused"    # Z

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setSelected(Z)V

    .line 164
    return-void
.end method

.method private updateScale()V
    .locals 2

    .line 208
    iget v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    iget v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    mul-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setScaleX(F)V

    .line 209
    iget v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    iget v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    mul-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setScaleY(F)V

    .line 210
    return-void
.end method

.method private updateTranslation()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setTranslationX(F)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setTranslationY(F)V

    .line 175
    return-void
.end method


# virtual methods
.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 152
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->clearChildFocus(Landroid/view/View;)V

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->dispatchChildFocus(Z)V

    .line 154
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 78
    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->requestFocus()Z

    .line 82
    return v1

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 158
    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    return v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    goto :goto_0

    .line 73
    :cond_0
    const/high16 v0, 0x60000

    .line 72
    :goto_0
    return v0
.end method

.method public getReorderBounceOffset(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/PointF;

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 194
    return-void
.end method

.method public getReorderBounceScale()F
    .locals 1

    .line 218
    iget v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    return v0
.end method

.method public getReorderPreviewOffset(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/PointF;

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 205
    return-void
.end method

.method public getScaleToFit()F
    .locals 1

    .line 227
    iget v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 167
    return-object p0
.end method

.method public getViewType()I
    .locals 1

    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "grid"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 250
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 252
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 255
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_1

    .line 256
    iget-object v1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v1, v2, p2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 260
    :goto_0
    return-void
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 237
    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 238
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 240
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 241
    iget-object v2, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    .line 136
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->dispatchChildFocus(Z)V

    .line 138
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 139
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 89
    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 90
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 91
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 98
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    .line 101
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    .local v1, "focusableChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 104
    .local v2, "childrenCount":I
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->shouldAllowDirectClick()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    .line 111
    iput-boolean v3, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    .line 112
    return v0

    .line 106
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    .line 107
    goto :goto_1

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 118
    return v0

    .line 122
    .end local v1    # "focusableChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "childrenCount":I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 143
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 144
    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->dispatchChildFocus(Z)V

    .line 145
    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 148
    :cond_1
    return-void
.end method

.method public setReorderBounceOffset(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 189
    invoke-direct {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateTranslation()V

    .line 190
    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 213
    iput p1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    .line 214
    invoke-direct {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateScale()V

    .line 215
    return-void
.end method

.method public setReorderPreviewOffset(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 199
    invoke-direct {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateTranslation()V

    .line 200
    return-void
.end method

.method public setScaleToFit(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 222
    iput p1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    .line 223
    invoke-direct {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateScale()V

    .line 224
    return-void
.end method

.method public setTranslationForCentering(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateTranslation()V

    .line 180
    return-void
.end method

.method public setTranslationForMoveFromCenterAnimation(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 184
    invoke-direct {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateTranslation()V

    .line 185
    return-void
.end method

.method protected abstract shouldAllowDirectClick()Z
.end method

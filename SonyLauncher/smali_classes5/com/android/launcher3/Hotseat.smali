.class public Lcom/android/launcher3/Hotseat;
.super Lcom/android/launcher3/CellLayout;
.source "Hotseat.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field private mHasVerticalHotseat:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mOnVisibilityAggregatedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mQsb:Landroid/view/View;

.field private final mQsbHeight:I

.field private mSendTouchToWorkspace:Z

.field private mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->search_container_hotseat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/android/launcher3/Hotseat;->mQsbHeight:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->addView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method private updateBackground()V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    .line 226
    sget v0, Lcom/android/launcher3/R$drawable;->hotseat_bg_vertical:I

    goto :goto_0

    .line 227
    :cond_0
    sget v0, Lcom/android/launcher3/R$drawable;->hotseat_bg_horizontal:I

    :goto_0
    nop

    .line 230
    .local v0, "bgResId":I
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/launcher/util/ResourceUtils;->isNullResource(Landroid/content/res/Resources;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const/4 v1, 0x0

    .local v1, "bgResIdChecked":I
    goto :goto_1

    .line 234
    .end local v1    # "bgResIdChecked":I
    :cond_1
    move v1, v0

    .line 237
    .restart local v1    # "bgResIdChecked":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Hotseat;->setBackgroundResource(I)V

    .line 238
    return-void
.end method


# virtual methods
.method public getCellXFromOrder(I)I
    .locals 1
    .param p1, "rank"    # I

    .line 76
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public getCellYFromOrder(I)I
    .locals 2
    .param p1, "rank"    # I

    .line 83
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIconsAlpha()F
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getQsb()Landroid/view/View;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 139
    .local v0, "yThreshold":I
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Hotseat;->mSendTouchToWorkspace:Z

    .line 141
    return v1

    .line 143
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 188
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->onLayout(ZIIII)V

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 192
    .local v0, "qsbWidth":I
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 194
    .local v1, "qsbSpace":I
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getPaddingRight()I

    move-result v2

    sub-int v2, p4, v2

    add-int/2addr v2, v1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    :goto_0
    move v1, v2

    .line 196
    .local v1, "left":I
    goto :goto_1

    .line 197
    .end local v1    # "left":I
    :cond_1
    sub-int v1, p4, p2

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 199
    .restart local v1    # "left":I
    :goto_1
    add-int v2, v1, v0

    .line 201
    .local v2, "right":I
    sub-int v3, p5, p3

    iget-object v4, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getQsbOffsetY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 202
    .local v3, "bottom":I
    iget v4, p0, Lcom/android/launcher3/Hotseat;->mQsbHeight:I

    sub-int v4, v3, v4

    .line 203
    .local v4, "top":I
    iget-object v5, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    invoke-virtual {v5, v1, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 204
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 178
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->onMeasure(II)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->qsbWidth:I

    .line 182
    .local v0, "qsbWidth":I
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/Hotseat;->mQsbHeight:I

    .line 183
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 182
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 184
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 149
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mSendTouchToWorkspace:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 151
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 154
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/launcher3/Hotseat;->mSendTouchToWorkspace:Z

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 159
    .end local v0    # "action":I
    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 164
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onVisibilityAggregated(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mOnVisibilityAggregatedCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 169
    :cond_0
    return-void
.end method

.method public resetLayout(Z)V
    .locals 3
    .param p1, "hasVerticalHotseat"    # Z

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->removeAllViewsInLayout()V

    .line 88
    iput-boolean p1, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 90
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->resetCellSize(Lcom/android/launcher3/DeviceProfile;)V

    .line 91
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 92
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/Hotseat;->setGridSize(II)V

    goto :goto_0

    .line 94
    :cond_0
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/Hotseat;->setGridSize(II)V

    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/Hotseat;->updateBackground()V

    .line 97
    return-void
.end method

.method public setIconsAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 211
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 104
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 107
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    .line 111
    :cond_0
    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/Hotseat;->mQsb:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 118
    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 120
    :cond_2
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    :goto_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    .line 124
    .local v2, "padding":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/launcher3/Hotseat;->setPadding(IIII)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 127
    return-void
.end method

.method public setOnVisibilityAggregatedCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/launcher3/Hotseat;->mOnVisibilityAggregatedCallback:Ljava/util/function/Consumer;

    .line 174
    return-void
.end method

.method public setWorkspace(Lcom/android/launcher3/Workspace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace<",
            "*>;)V"
        }
    .end annotation

    .line 130
    .local p1, "w":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iput-object p1, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 131
    return-void
.end method

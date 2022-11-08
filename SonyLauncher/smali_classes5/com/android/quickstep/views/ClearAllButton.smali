.class public Lcom/android/quickstep/views/ClearAllButton;
.super Landroid/widget/Button;
.source "ClearAllButton.java"


# static fields
.field public static final DISMISS_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/ClearAllButton;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISIBILITY_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/ClearAllButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private mContentAlpha:F

.field private mDismissAlpha:F

.field private mFullscreenProgress:F

.field private mFullscreenTranslationPrimary:F

.field private mGridProgress:F

.field private mGridScrollOffset:F

.field private mGridTranslationPrimary:F

.field private mIsRtl:Z

.field private mNormalTranslationPrimary:F

.field private mScrollAlpha:F

.field private mScrollOffsetPrimary:F

.field private mSidePadding:I

.field private mSplitSelectScrollOffsetPrimary:F

.field private mVisibilityAlpha:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmDismissAlpha(Lcom/android/quickstep/views/ClearAllButton;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisibilityAlpha(Lcom/android/quickstep/views/ClearAllButton;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/android/quickstep/views/ClearAllButton$1;

    const-string v1, "visibilityAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/ClearAllButton$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/ClearAllButton;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    .line 43
    new-instance v0, Lcom/android/quickstep/views/ClearAllButton$2;

    const-string v1, "dismissAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/ClearAllButton$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/ClearAllButton;->DISMISS_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollAlpha:F

    .line 58
    iput v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mContentAlpha:F

    .line 59
    iput v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    .line 60
    iput v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    .line 61
    iput v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenProgress:F

    .line 62
    iput v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridProgress:F

    .line 76
    invoke-virtual {p0}, Lcom/android/quickstep/views/ClearAllButton;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    .line 77
    invoke-static {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    iput-object v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 78
    return-void
.end method

.method private applyPrimaryTranslation()V
    .locals 5

    .line 217
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    .line 218
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-nez v0, :cond_0

    .line 219
    return-void

    .line 222
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    .line 223
    .local v1, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v2

    const/4 v3, 0x0

    .line 224
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getOriginalTranslationY()F

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/ClearAllButton;->mNormalTranslationPrimary:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenTranslationPrimary:F

    .line 225
    invoke-direct {p0, v4}, Lcom/android/quickstep/views/ClearAllButton;->getFullscreenTrans(F)F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridTranslationPrimary:F

    .line 226
    invoke-direct {p0, v4}, Lcom/android/quickstep/views/ClearAllButton;->getGridTrans(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 224
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 223
    invoke-virtual {v2, p0, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 227
    return-void
.end method

.method private applySecondaryTranslation()V
    .locals 5

    .line 230
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    .line 231
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-nez v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    .line 236
    .local v1, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v2

    const/4 v3, 0x0

    .line 237
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getOriginalTranslationY()F

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 236
    invoke-virtual {v2, p0, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 238
    return-void
.end method

.method private getFullscreenTrans(F)F
    .locals 2
    .param p1, "endTranslation"    # F

    .line 241
    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method private getGridTrans(F)F
    .locals 2
    .param p1, "endTranslation"    # F

    .line 245
    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method private getOriginalTranslationY()F
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 253
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    .line 254
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    int-to-float v1, v1

    goto :goto_0

    .line 255
    :cond_0
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 253
    :goto_0
    return v1
.end method

.method private getRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/quickstep/views/ClearAllButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    return-object v0
.end method

.method private updateAlpha()V
    .locals 3

    .line 152
    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollAlpha:F

    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mContentAlpha:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    mul-float/2addr v0, v1

    .line 153
    .local v0, "alpha":F
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/ClearAllButton;->setAlpha(F)V

    .line 154
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/ClearAllButton;->setClickable(Z)V

    .line 155
    return-void
.end method


# virtual methods
.method public getOffsetAdjustment(ZZ)F
    .locals 1
    .param p1, "fullscreenEnabled"    # Z
    .param p2, "gridEnabled"    # Z

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/ClearAllButton;->getScrollAdjustment(ZZ)F

    move-result v0

    return v0
.end method

.method public getScrollAdjustment(ZZ)F
    .locals 3
    .param p1, "fullscreenEnabled"    # Z
    .param p2, "gridEnabled"    # Z

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "scrollAdjustment":F
    if-eqz p1, :cond_0

    .line 182
    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenTranslationPrimary:F

    add-float/2addr v0, v1

    .line 184
    :cond_0
    if-eqz p2, :cond_1

    .line 185
    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridTranslationPrimary:F

    iget v2, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridScrollOffset:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 187
    :cond_1
    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollOffsetPrimary:F

    add-float/2addr v0, v1

    .line 188
    iget v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mSplitSelectScrollOffsetPrimary:F

    add-float/2addr v0, v1

    .line 189
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 83
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    .line 84
    .local v0, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getClearAllSidePadding(Landroid/view/View;Z)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mSidePadding:I

    .line 85
    return-void
.end method

.method public onRecentsViewScroll(IZ)V
    .locals 10
    .param p1, "scroll"    # I
    .param p2, "gridEnabled"    # Z

    .line 124
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    .line 125
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-nez v0, :cond_0

    .line 126
    return-void

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    .line 130
    .local v1, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    invoke-virtual {p0}, Lcom/android/quickstep/views/ClearAllButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/ClearAllButton;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v2

    int-to-float v2, v2

    .line 131
    .local v2, "orientationSize":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_1

    .line 132
    return-void

    .line 135
    :cond_1
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getClearAllScroll()I

    move-result v4

    .line 136
    .local v4, "clearAllScroll":I
    sub-int v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 137
    .local v5, "adjustedScrollFromEdge":I
    int-to-float v6, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 138
    .local v6, "shift":F
    iget-boolean v7, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    if-eqz v7, :cond_2

    neg-float v7, v6

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    iput v7, p0, Lcom/android/quickstep/views/ClearAllButton;->mNormalTranslationPrimary:F

    .line 139
    if-nez p2, :cond_3

    .line 140
    iget v8, p0, Lcom/android/quickstep/views/ClearAllButton;->mSidePadding:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/android/quickstep/views/ClearAllButton;->mNormalTranslationPrimary:F

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    .line 143
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applySecondaryTranslation()V

    .line 144
    nop

    .line 145
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPageSpacing()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getClearAllExtraPageSpacing()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 146
    .local v7, "clearAllSpacing":F
    iget-boolean v8, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    if-eqz v8, :cond_4

    neg-float v8, v7

    goto :goto_1

    :cond_4
    move v8, v7

    :goto_1
    move v7, v8

    .line 147
    int-to-float v8, v4

    add-float/2addr v8, v7

    int-to-float v9, p1

    sub-float/2addr v8, v9

    div-float/2addr v8, v7

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollAlpha:F

    .line 148
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->updateAlpha()V

    .line 149
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 93
    invoke-super {p0, p1}, Landroid/widget/Button;->onRtlPropertiesChanged(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/quickstep/views/ClearAllButton;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/quickstep/views/ClearAllButton;->mIsRtl:Z

    .line 95
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 103
    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mContentAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 104
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mContentAlpha:F

    .line 105
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->updateAlpha()V

    .line 107
    :cond_0
    return-void
.end method

.method public setDismissAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 117
    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 118
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mDismissAlpha:F

    .line 119
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->updateAlpha()V

    .line 121
    :cond_0
    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 202
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenProgress:F

    .line 203
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    .line 204
    return-void
.end method

.method public setFullscreenTranslationPrimary(F)V
    .locals 0
    .param p1, "fullscreenTranslationPrimary"    # F

    .line 158
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mFullscreenTranslationPrimary:F

    .line 159
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    .line 160
    return-void
.end method

.method public setGridProgress(F)V
    .locals 0
    .param p1, "gridProgress"    # F

    .line 212
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridProgress:F

    .line 213
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    .line 214
    return-void
.end method

.method public setGridScrollOffset(F)V
    .locals 0
    .param p1, "gridScrollOffset"    # F

    .line 168
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridScrollOffset:F

    .line 169
    return-void
.end method

.method public setGridTranslationPrimary(F)V
    .locals 0
    .param p1, "gridTranslationPrimary"    # F

    .line 163
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mGridTranslationPrimary:F

    .line 164
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->applyPrimaryTranslation()V

    .line 165
    return-void
.end method

.method public setScrollOffsetPrimary(F)V
    .locals 0
    .param p1, "scrollOffsetPrimary"    # F

    .line 172
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mScrollOffsetPrimary:F

    .line 173
    return-void
.end method

.method public setSplitSelectScrollOffsetPrimary(F)V
    .locals 0
    .param p1, "splitSelectScrollOffsetPrimary"    # F

    .line 176
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mSplitSelectScrollOffsetPrimary:F

    .line 177
    return-void
.end method

.method public setVisibilityAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 110
    iget v0, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 111
    iput p1, p0, Lcom/android/quickstep/views/ClearAllButton;->mVisibilityAlpha:F

    .line 112
    invoke-direct {p0}, Lcom/android/quickstep/views/ClearAllButton;->updateAlpha()V

    .line 114
    :cond_0
    return-void
.end method

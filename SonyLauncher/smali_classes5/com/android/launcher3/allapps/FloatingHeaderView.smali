.class public Lcom/android/launcher3/allapps/FloatingHeaderView;
.super Landroid/widget/LinearLayout;
.source "FloatingHeaderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/systemui/plugins/AllAppsRow$OnHeightUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/AllAppsRow;",
        ">;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/systemui/plugins/AllAppsRow$OnHeightUpdatedListener;"
    }
.end annotation


# instance fields
.field private mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mCollapsed:Z

.field private mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

.field private mForwardToRecyclerView:Z

.field private final mHeaderBottomAdjustment:I

.field private final mHeaderClip:Landroid/graphics/Rect;

.field public mHeaderCollapsed:Z

.field private final mHeaderProtectionSupported:Z

.field private final mHeaderTopAdjustment:I

.field private mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field protected mMaxTranslation:I

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field protected final mPluginRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/plugins/AllAppsRow;",
            "Lcom/android/launcher3/allapps/PluginHeaderRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mRVClip:Landroid/graphics/Rect;

.field private mSearchRV:Lcom/android/launcher3/allapps/SearchRecyclerView;

.field protected mSnappedScrolledY:I

.field protected mTabLayout:Landroid/view/ViewGroup;

.field protected mTabsHidden:Z

.field private final mTempOffset:Landroid/graphics/Point;

.field private mTranslationY:I

.field private mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimator(Lcom/android/launcher3/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRV(Lcom/android/launcher3/allapps/FloatingHeaderView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmoved(Lcom/android/launcher3/allapps/FloatingHeaderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->moved(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mRVClip:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderClip:Landroid/graphics/Rect;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 53
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    .line 54
    new-instance v0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/FloatingHeaderView$1;-><init>(Lcom/android/launcher3/allapps/FloatingHeaderView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    .line 102
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCollapsed:Z

    .line 106
    sget-object v0, Lcom/android/launcher3/allapps/FloatingHeaderRow;->NO_ROWS:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    .line 110
    sget-object v0, Lcom/android/launcher3/allapps/FloatingHeaderRow;->NO_ROWS:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_header_top_adjustment:I

    .line 120
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderTopAdjustment:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_header_bottom_adjustment:I

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderBottomAdjustment:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$bool;->config_header_protection_supported:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderProtectionSupported:Z

    .line 127
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private calcOffset(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "p"    # Landroid/graphics/Point;

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 406
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 407
    return-void
.end method

.method private canSnapAt(I)Z
    .locals 2
    .param p1, "currentScrollY"    # I

    .line 278
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moved(I)V
    .locals 3
    .param p1, "currentScrollY"    # I

    .line 282
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 283
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    if-gt p1, v0, :cond_0

    .line 284
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->canSnapAt(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    goto :goto_0

    .line 288
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    .line 290
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    goto :goto_1

    .line 292
    :cond_2
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    sub-int v0, p1, v0

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 295
    if-ltz v0, :cond_3

    .line 296
    iput v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 297
    sub-int v0, p1, v2

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    goto :goto_1

    .line 298
    :cond_3
    neg-int v1, v2

    if-gt v0, v1, :cond_4

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    .line 300
    neg-int v0, v2

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    .line 303
    :cond_4
    :goto_1
    return-void
.end method

.method private recreateAllRowsArray()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 162
    .local v0, "pluginCount":I
    if-nez v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    goto :goto_2

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v1, v1

    .line 166
    .local v1, "count":I
    add-int v2, v1, v0

    new-array v2, v2, [Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    .line 167
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iget-object v4, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/PluginHeaderRow;

    .line 172
    .local v3, "row":Lcom/android/launcher3/allapps/PluginHeaderRow;
    iget-object v4, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    aput-object v3, v4, v1

    .line 173
    nop

    .end local v3    # "row":Lcom/android/launcher3/allapps/PluginHeaderRow;
    add-int/lit8 v1, v1, 0x1

    .line 174
    goto :goto_1

    .line 176
    .end local v1    # "count":I
    :cond_2
    :goto_2
    return-void
.end method

.method private updateExpectedHeight()V
    .locals 6

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    .line 256
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCollapsed:Z

    if-eqz v1, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 260
    .local v3, "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    iget v4, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    invoke-interface {v3}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->getExpectedHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    .line 259
    .end local v3    # "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-nez v0, :cond_2

    .line 263
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderBottomAdjustment:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    .line 265
    :cond_2
    return-void
.end method


# virtual methods
.method protected applyVerticalMove()V
    .locals 7

    .line 306
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 307
    .local v0, "uncappedTranslationY":I
    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 309
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCollapsed:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 316
    .local v5, "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    invoke-interface {v5, v0, v3}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->setVerticalScroll(IZ)V

    .line 315
    .end local v5    # "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 311
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 312
    .restart local v5    # "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    const/4 v6, 0x1

    invoke-interface {v5, v3, v6}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->setVerticalScroll(IZ)V

    .line 311
    .end local v5    # "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderTopAdjustment:I

    sub-int/2addr v1, v2

    .line 323
    .local v1, "clipTop":I
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz v2, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingBottom()I

    move-result v2

    iget v4, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderBottomAdjustment:I

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 326
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mRVClip:Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz v4, :cond_4

    move v3, v1

    :cond_4
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 327
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderClip:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 329
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderClip:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 330
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_5

    .line 331
    iget-object v3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mRVClip:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 333
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_6

    .line 334
    iget-object v3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mRVClip:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 336
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSearchRV:Lcom/android/launcher3/allapps/SearchRecyclerView;

    if-eqz v2, :cond_7

    .line 337
    iget-object v3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mRVClip:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/SearchRecyclerView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 339
    :cond_7
    return-void
.end method

.method public findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/launcher3/allapps/FloatingHeaderRow;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 426
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 427
    .local v3, "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    invoke-interface {v3}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->getTypeClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 428
    return-object v3

    .line 426
    .end local v3    # "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 5

    .line 211
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 213
    .local v3, "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    invoke-interface {v3}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->hasVisibleContent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    invoke-interface {v3}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 212
    .end local v3    # "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTranslation()I
    .locals 2

    .line 268
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_search_bar_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 270
    :cond_0
    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 273
    :cond_1
    return v0
.end method

.method public getPeripheralProtectionHeight()I
    .locals 3

    .line 438
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderProtectionSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 439
    return v1

    .line 444
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    add-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 445
    :cond_2
    :goto_0
    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isHeaderProtectionSupported()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderProtectionSupported:Z

    return v0
.end method

.method isSetUp()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 375
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->applyVerticalMove()V

    .line 377
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 149
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 150
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v1, Lcom/android/systemui/plugins/AllAppsRow;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 152
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 157
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 158
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 132
    sget v0, Lcom/android/launcher3/R$id;->tabs:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/FloatingHeaderRow;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getChildCount()I

    move-result v1

    .line 137
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 139
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/allapps/FloatingHeaderRow;

    if-eqz v4, :cond_0

    .line 140
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    .line 144
    iput-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    .line 145
    return-void
.end method

.method public onHeightUpdated()V
    .locals 2

    .line 189
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    .line 190
    .local v0, "oldMaxHeight":I
    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->updateExpectedHeight()V

    .line 192
    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCollapsed:Z

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    .line 194
    .local v1, "parent":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<*>;"
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setupHeader()V

    .line 198
    .end local v1    # "parent":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<*>;"
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 381
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->calcOffset(Landroid/graphics/Point;)V

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 385
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/AllAppsRow;Landroid/content/Context;)V
    .locals 3
    .param p1, "allAppsRowPlugin"    # Lcom/android/systemui/plugins/AllAppsRow;
    .param p2, "context"    # Landroid/content/Context;

    .line 180
    new-instance v0, Lcom/android/launcher3/allapps/PluginHeaderRow;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/allapps/PluginHeaderRow;-><init>(Lcom/android/systemui/plugins/AllAppsRow;Lcom/android/launcher3/allapps/FloatingHeaderView;)V

    .line 181
    .local v0, "headerRow":Lcom/android/launcher3/allapps/PluginHeaderRow;
    iget-object v1, v0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->addView(Landroid/view/View;I)V

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->recreateAllRowsArray()V

    .line 184
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/AllAppsRow;->setOnHeightUpdatedListener(Lcom/android/systemui/plugins/AllAppsRow$OnHeightUpdatedListener;)V

    .line 185
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/android/systemui/plugins/AllAppsRow;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onPluginConnected(Lcom/android/systemui/plugins/AllAppsRow;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/AllAppsRow;)V
    .locals 2
    .param p1, "plugin"    # Lcom/android/systemui/plugins/AllAppsRow;

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/PluginHeaderRow;

    .line 203
    .local v0, "row":Lcom/android/launcher3/allapps/PluginHeaderRow;
    iget-object v1, v0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->removeView(Landroid/view/View;)V

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->recreateAllRowsArray()V

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onHeightUpdated()V

    .line 207
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/android/systemui/plugins/AllAppsRow;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onPluginDisconnected(Lcom/android/systemui/plugins/AllAppsRow;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 390
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->calcOffset(Landroid/graphics/Point;)V

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 395
    return v0

    .line 397
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 398
    throw v0

    .line 400
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 355
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    aput v3, v2, v0

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 357
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 359
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 361
    :cond_1
    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->applyVerticalMove()V

    .line 364
    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    .line 365
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 367
    return-void
.end method

.method setActiveRV(I)V
    .locals 2
    .param p1, "rvType"    # I

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 248
    :cond_0
    nop

    .line 249
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    goto :goto_0

    .line 250
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSearchRV:Lcom/android/launcher3/allapps/SearchRecyclerView;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 251
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 252
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 1
    .param p1, "collapse"    # Z

    .line 345
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCollapsed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 347
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCollapsed:Z

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onHeightUpdated()V

    .line 349
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 421
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    .line 422
    .local v0, "leftRightPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setPadding(IIII)V

    .line 423
    return-void
.end method

.method setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/SearchRecyclerView;IZ)V
    .locals 6
    .param p1, "mainRV"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .param p2, "workRV"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .param p3, "searchRV"    # Lcom/android/launcher3/allapps/SearchRecyclerView;
    .param p4, "activeRV"    # I
    .param p5, "tabsHidden"    # Z

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 225
    .local v4, "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    iget-object v5, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-interface {v4, p0, v5, p5}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V

    .line 224
    .end local v4    # "row":Lcom/android/launcher3/allapps/FloatingHeaderRow;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->updateExpectedHeight()V

    .line 229
    iput-boolean p5, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    if-eqz p5, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 232
    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 233
    iput-object p3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSearchRV:Lcom/android/launcher3/allapps/SearchRecyclerView;

    .line 234
    invoke-virtual {p0, p4}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setActiveRV(I)V

    .line 235
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    .line 236
    return-void
.end method

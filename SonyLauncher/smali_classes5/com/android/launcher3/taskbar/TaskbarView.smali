.class public Lcom/android/launcher3/taskbar/TaskbarView;
.super Landroid/widget/FrameLayout;
.source "TaskbarView.java"

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;
.implements Lcom/android/launcher3/Insettable;


# static fields
.field private static final TASKBAR_BACKGROUND_LUMINANCE:F = 0.3f


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

.field private mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private final mIconLayoutBounds:Landroid/graphics/Rect;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mIconTouchSize:I

.field private final mItemMarginLeftRight:I

.field private final mItemPadding:I

.field private mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private final mTempOutLocation:[I

.field public mThemeIconsBackground:I

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/TaskbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTouchEnabled:Z

    .line 97
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 100
    .local v2, "resources":Landroid/content/res/Resources;
    sget v3, Lcom/android/launcher3/R$dimen;->taskbar_icon_touch_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    .line 102
    sget v4, Lcom/android/launcher3/R$dimen;->taskbar_icon_spacing:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 103
    .local v4, "actualMargin":I
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 106
    .local v1, "actualIconSize":I
    sub-int v5, v3, v1

    div-int/2addr v5, v0

    sub-int v5, v4, v5

    iput v5, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    .line 107
    sub-int v5, v3, v1

    div-int/2addr v5, v0

    iput v5, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemPadding:I

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->setWillNotDraw(Z)V

    .line 112
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->calculateThemeIconsBackground()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mThemeIconsBackground:I

    .line 114
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_IN_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/android/launcher3/views/AllAppsButton;

    invoke-direct {v0, p1}, Lcom/android/launcher3/views/AllAppsButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    .line 116
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/views/AllAppsButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/android/launcher3/views/AllAppsButton;->setPadding(IIII)V

    .line 120
    :cond_0
    return-void
.end method

.method private calculateThemeIconsBackground()I
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 131
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->getColorWithGivenLuminance(IF)I

    move-result v1

    return v1

    .line 134
    :cond_0
    return v0
.end method

.method private getColorWithGivenLuminance(IF)I
    .locals 2
    .param p1, "color"    # I
    .param p2, "luminance"    # F

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 124
    .local v0, "colorHSL":[F
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 125
    const/4 v1, 0x2

    aput p2, v0, v1

    .line 126
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    return v1
.end method

.method private inflate(I)Landroid/view/View;
    .locals 2
    .param p1, "layoutResId"    # I

    .line 398
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private removeAndRecycle(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->removeView(Landroid/view/View;)V

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getSourceLayoutResId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    .line 156
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    return-void
.end method


# virtual methods
.method public areIconsVisible()Z
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 1
    .param p1, "child"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 381
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->invalidate()V

    .line 382
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 305
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTouchEnabled:Z

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x1

    return v0

    .line 308
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public drawFolderLeaveBehindForIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 0
    .param p1, "child"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 374
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 375
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->invalidate()V

    .line 376
    return-void
.end method

.method public getAllAppsButtonView()Landroid/view/View;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    return-object v0
.end method

.method public varargs getFirstMatch([Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 429
    .local p1, "matchers":[Ljava/util/function/Predicate;, "[Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 430
    .local v2, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 431
    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 432
    .local v4, "item":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v5, :cond_0

    .line 434
    goto :goto_2

    .line 436
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 437
    .local v5, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-interface {v2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 438
    return-object v4

    .line 430
    .end local v4    # "item":Landroid/view/View;
    .end local v5    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 429
    .end local v2    # "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v3    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    return-object v0
.end method

.method public getIconLayoutBounds()Landroid/graphics/Rect;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getIconViews()[Landroid/view/View;
    .locals 4

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildCount()I

    move-result v0

    .line 356
    .local v0, "count":I
    new-array v1, v0, [Landroid/view/View;

    .line 357
    .local v1, "icons":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 358
    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method protected init(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    .line 138
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    .line 139
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getIconOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getIconOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getBackgroundOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->getAllAppsButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/AllAppsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_0
    return-void
.end method

.method public isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getLocationOnScreen([I)V

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 343
    .local v0, "xInOurCoordinates":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTempOutLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v1, v3

    .line 344
    .local v1, "yInOurCoorindates":I
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    :cond_0
    return v2
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 3
    .param p1, "op"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 417
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 418
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v2, v1}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    return-void

    .line 416
    .end local v1    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 388
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mLeaveBehindFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawLeaveBehind(Landroid/graphics/Canvas;)V

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 395
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 275
    move-object v0, p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildCount()I

    move-result v1

    .line 276
    .local v1, "count":I
    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    .line 277
    .local v2, "spaceNeeded":I
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getHotseatEndOffset(Landroid/content/Context;)I

    move-result v3

    .line 278
    .local v3, "navSpaceNeeded":I
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->isLayoutRtl()Z

    move-result v4

    .line 279
    .local v4, "layoutRtl":Z
    sub-int v5, p4, p2

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p4, v5

    .line 280
    .local v5, "iconEnd":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    .line 281
    sub-int v8, v5, v2

    if-le v3, v8, :cond_1

    move v6, v7

    goto :goto_0

    .line 282
    :cond_0
    sub-int v8, p4, v3

    if-le v5, v8, :cond_1

    move v6, v7

    :cond_1
    :goto_0
    nop

    .line 283
    .local v6, "needMoreSpaceForNav":Z
    if-eqz v6, :cond_3

    .line 284
    if-eqz v4, :cond_2

    .line 285
    sub-int v7, v5, v2

    sub-int v7, v3, v7

    goto :goto_1

    .line 286
    :cond_2
    sub-int v7, p4, v3

    sub-int/2addr v7, v5

    :goto_1
    nop

    .line 287
    .local v7, "offset":I
    add-int/2addr v5, v7

    .line 290
    .end local v7    # "offset":I
    :cond_3
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 291
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    sub-int v8, p5, p3

    iget v9, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 292
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 293
    move v7, v1

    .local v7, "i":I
    :goto_2
    if-lez v7, :cond_4

    .line 294
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 295
    .local v8, "child":Landroid/view/View;
    iget v9, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    sub-int/2addr v5, v9

    .line 296
    iget v9, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    sub-int v9, v5, v9

    .line 297
    .local v9, "iconStart":I
    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v5, v11}, Landroid/view/View;->layout(IIII)V

    .line 298
    iget v10, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemMarginLeftRight:I

    sub-int v5, v9, v10

    .line 293
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "iconStart":I
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 300
    .end local v7    # "i":I
    :cond_4
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 301
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 313
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTouchEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 314
    return v1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 318
    return v1

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mControllerCallbacks:Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 323
    .local v0, "oldAction":I
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 324
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 324
    return v1

    .line 326
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 327
    throw v1

    .line 329
    .end local v0    # "oldAction":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setClickAndLongClickListenersForIcon(Landroid/view/View;)V
    .locals 1
    .param p1, "icon"    # Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 271
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 404
    return-void
.end method

.method public setThemedIconsBackgroundColor(I)V
    .locals 6
    .param p1, "color"    # I

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 255
    .local v3, "icon":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;

    if-eqz v4, :cond_0

    .line 256
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;

    .line 257
    .local v4, "textView":Lcom/android/launcher3/views/DoubleShadowBubbleTextView;
    invoke-virtual {v4}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 258
    invoke-virtual {v4}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/icons/ThemedIconDrawable;

    if-eqz v5, :cond_0

    .line 259
    invoke-virtual {v4}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/icons/ThemedIconDrawable;

    invoke-virtual {v5, p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->changeBackgroundColor(I)V

    .line 254
    .end local v3    # "icon":Landroid/view/View;
    .end local v4    # "textView":Lcom/android/launcher3/views/DoubleShadowBubbleTextView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_1
    return-void
.end method

.method public setTouchesEnabled(Z)V
    .locals 0
    .param p1, "touchEnabled"    # Z

    .line 333
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mTouchEnabled:Z

    .line 334
    return-void
.end method

.method protected updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 10
    .param p1, "hotseatItemInfos"    # [Lcom/android/launcher3/model/data/ItemInfo;

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "nextViewIndex":I
    const/4 v1, 0x0

    .line 166
    .local v1, "numViewsAnimated":I
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarView;->removeView(Landroid/view/View;)V

    .line 170
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_9

    .line 171
    aget-object v3, p1, v2

    .line 172
    .local v3, "hotseatItemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    if-nez v3, :cond_1

    .line 173
    goto/16 :goto_4

    .line 178
    :cond_1
    const/4 v5, 0x0

    .line 179
    .local v5, "isFolder":Z
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->isPredictedItem()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    sget v6, Lcom/android/launcher3/R$layout;->taskbar_predicted_app_icon:I

    .local v6, "expectedLayoutResId":I
    goto :goto_1

    .line 181
    .end local v6    # "expectedLayoutResId":I
    :cond_2
    instance-of v6, v3, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v6, :cond_3

    .line 182
    sget v6, Lcom/android/launcher3/R$layout;->folder_icon:I

    .line 183
    .restart local v6    # "expectedLayoutResId":I
    const/4 v5, 0x1

    goto :goto_1

    .line 185
    .end local v6    # "expectedLayoutResId":I
    :cond_3
    sget v6, Lcom/android/launcher3/R$layout;->taskbar_app_icon:I

    .line 188
    .restart local v6    # "expectedLayoutResId":I
    :goto_1
    const/4 v7, 0x0

    .line 189
    .local v7, "hotseatView":Landroid/view/View;
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 193
    invoke-virtual {v7}, Landroid/view/View;->getSourceLayoutResId()I

    move-result v8

    if-ne v8, v6, :cond_4

    if-eqz v5, :cond_5

    .line 194
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v3, :cond_5

    .line 198
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/launcher3/taskbar/TaskbarView;->removeAndRecycle(Landroid/view/View;)V

    .line 199
    const/4 v7, 0x0

    goto :goto_2

    .line 206
    :cond_5
    if-nez v7, :cond_7

    .line 207
    if-eqz v5, :cond_6

    .line 208
    move-object v8, v3

    check-cast v8, Lcom/android/launcher3/model/data/FolderInfo;

    .line 209
    .local v8, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v6, v9, p0, v8}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v9

    .line 211
    .local v9, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v9, v4}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 212
    move-object v4, v9

    .line 213
    .end local v7    # "hotseatView":Landroid/view/View;
    .end local v8    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v9    # "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    .local v4, "hotseatView":Landroid/view/View;
    move-object v7, v4

    goto :goto_3

    .line 214
    .end local v4    # "hotseatView":Landroid/view/View;
    .restart local v7    # "hotseatView":Landroid/view/View;
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/launcher3/taskbar/TaskbarView;->inflate(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    .line 216
    :goto_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mIconTouchSize:I

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mItemPadding:I

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 218
    invoke-virtual {p0, v7, v0, v4}, Lcom/android/launcher3/taskbar/TaskbarView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    instance-of v4, v7, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_8

    instance-of v4, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v4, :cond_8

    .line 224
    move-object v4, v7

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    .line 225
    .local v4, "btv":Lcom/android/launcher3/BubbleTextView;
    move-object v8, v3

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 227
    .local v8, "workspaceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    move-object v9, v3

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v4, v9}, Lcom/android/launcher3/BubbleTextView;->shouldAnimateIconChange(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v9

    .line 228
    .local v9, "animate":Z
    invoke-virtual {v4, v8, v9, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    .line 229
    if-eqz v9, :cond_8

    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 233
    .end local v4    # "btv":Lcom/android/launcher3/BubbleTextView;
    .end local v8    # "workspaceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v9    # "animate":Z
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/launcher3/taskbar/TaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 170
    .end local v3    # "hotseatItemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v5    # "isFolder":Z
    .end local v6    # "expectedLayoutResId":I
    .end local v7    # "hotseatView":Landroid/view/View;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 237
    .end local v2    # "i":I
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarView;->removeAndRecycle(Landroid/view/View;)V

    goto :goto_5

    .line 241
    :cond_a
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    if-eqz v2, :cond_c

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildCount()I

    move-result v4

    :goto_6
    move v2, v4

    .line 243
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mAllAppsButton:Lcom/android/launcher3/views/AllAppsButton;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/taskbar/TaskbarView;->addView(Landroid/view/View;I)V

    .line 246
    .end local v2    # "index":I
    :cond_c
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->calculateThemeIconsBackground()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarView;->mThemeIconsBackground:I

    .line 247
    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarView;->setThemedIconsBackgroundColor(I)V

    .line 248
    return-void
.end method

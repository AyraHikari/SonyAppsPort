.class public abstract Lcom/android/launcher3/allapps/BaseAllAppsContainerView;
.super Lcom/android/launcher3/views/SpringRelativeLayout;
.source "BaseAllAppsContainerView.java"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
.implements Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ":",
        "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
        ">",
        "Lcom/android/launcher3/views/SpringRelativeLayout;",
        "Lcom/android/launcher3/DragSource;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
        "Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;",
        "Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;"
    }
.end annotation


# static fields
.field protected static final BUNDLE_KEY_CURRENT_PAGE:Ljava/lang/String; = "launcher.allapps.current_page"

.field public static final FLING_VELOCITY_MULTIPLIER:F = 1200.0f

.field public static final PULL_MULTIPLIER:F = 0.02f

.field private static final SORT_DIALOG_TAG:Ljava/lang/String; = "sort-apps-dialog"


# instance fields
.field protected final mAH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<",
            "TT;>.AdapterHolder;>;"
        }
    .end annotation
.end field

.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

.field private mBottomSheetBackground:Landroid/view/View;

.field private mBottomSheetHandleArea:Landroid/view/View;

.field protected final mFastScrollerOffset:Landroid/graphics/Point;

.field private final mHandler:Landroid/os/Handler;

.field private mHasWorkApps:Z

.field protected mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

.field private mHeaderBottomAdjustment:I

.field private mHeaderColor:I

.field private mHeaderMenuButtonView:Landroid/widget/ImageButton;

.field private final mHeaderPaint:Landroid/graphics/Paint;

.field private final mHeaderProtectionColor:I

.field protected final mHeaderThreshold:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsRearrange:Z

.field private final mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation
.end field

.field private mMenuButtonView:Landroid/widget/ImageButton;

.field private mNavBarScrimHeight:I

.field private final mNavBarScrimPaint:Landroid/graphics/Paint;

.field protected final mPersonalMatcher:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mRearrangeHeader:Landroid/view/View;

.field private final mScrimColor:I

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mSearchMode:Z

.field private mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

.field private mTabPosition:I

.field private mTabsProtectionAlpha:I

.field protected mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field protected mUsingTabs:Z

.field private mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

.field private final mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;


# direct methods
.method public static synthetic $r8$lambda$shmfKvPG6nMxH0d_bXJ75GVVVak(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onAppsUpdated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAllAppsStore(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsets(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainAdapterProvider(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollListener(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkManager(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/WorkProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetMenuButtonVisibility(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setMenuButtonVisibility(Landroid/view/View;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 173
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    .line 123
    nop

    .line 124
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    .line 126
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AllAppsStore;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 128
    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$1;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V

    iput-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 138
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mNavBarScrimHeight:I

    .line 148
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mIsRearrange:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mSearchMode:Z

    .line 157
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    .line 169
    iput v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTabPosition:I

    .line 174
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    .line 177
    sget v4, Lcom/android/launcher3/R$attr;->allAppsScrimColor:I

    invoke-static {p1, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mScrimColor:I

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$dimen;->dynamic_grid_cell_border_spacing:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderThreshold:F

    .line 180
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$dimen;->all_apps_header_bottom_adjustment:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderBottomAdjustment:I

    .line 182
    sget v4, Lcom/android/launcher3/R$attr;->allappsHeaderProtectionColor:I

    invoke-static {p1, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderProtectionColor:I

    .line 184
    new-instance v4, Lcom/android/launcher3/allapps/WorkProfileManager;

    const-class v5, Landroid/os/UserManager;

    .line 185
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 187
    invoke-static {v3}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object v7, v3

    check-cast v7, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v7}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    invoke-direct {v4, v5, p0, v6, v7}, Lcom/android/launcher3/allapps/WorkProfileManager;-><init>(Landroid/os/UserManager;Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Landroid/content/SharedPreferences;Lcom/android/launcher3/DeviceProfile;)V

    iput-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    .line 188
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    const/4 v5, 0x0

    aput-object v5, v4, v2

    aput-object v5, v4, v1

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    .line 189
    new-instance v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-direct {v5, p0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;I)V

    invoke-interface {v4, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;I)V

    invoke-interface {v4, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-direct {v1, p0, v6}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;I)V

    invoke-interface {v4, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    .line 194
    sget v2, Lcom/android/launcher3/R$attr;->allAppsNavBarScrimColor:I

    invoke-static {p1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 197
    check-cast v3, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;

    invoke-interface {v3, p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHandler:Landroid/os/Handler;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/BaseAllAppsContainerView;
    .param p1, "x1"    # I

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->absorbSwipeUpVelocity(I)V

    return-void
.end method

.method private applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "grid"    # Lcom/android/launcher3/DeviceProfile;

    .line 603
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mNavBarScrimHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 604
    .local v0, "bottomPadding":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/DeviceProfile;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 611
    return-void
.end method

.method private getActiveAppsRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 2

    .line 378
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isPersonalTab()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0

    .line 379
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method private getAppsRecyclerViewContainer()Landroid/view/View;
    .locals 1

    .line 390
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/launcher3/R$id;->apps_list_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private hideKeyboard()V
    .locals 4

    .line 1096
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1097
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 1100
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    .line 1099
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1101
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1102
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1106
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private isDescendantViewVisible(I)Z
    .locals 3
    .param p1, "viewId"    # I

    .line 677
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 678
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 680
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 682
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$applyAdapterSideAndBottomPaddings$4(Lcom/android/launcher3/DeviceProfile;ILcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;)V
    .locals 3
    .param p0, "grid"    # Lcom/android/launcher3/DeviceProfile;
    .param p1, "bottomPadding"    # I
    .param p2, "adapterHolder"    # Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    .line 605
    iget-object v0, p2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setAppsPerRow(I)V

    .line 606
    iget-object v0, p2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 607
    iget-object v0, p2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget-object v1, p2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 609
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 610
    return-void
.end method

.method static synthetic lambda$onFinishInflate$1(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$setupHeader$6(ILcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;)V
    .locals 1
    .param p0, "padding"    # I
    .param p1, "adapterHolder"    # Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    .line 741
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 742
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 743
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 746
    :cond_0
    return-void
.end method

.method private onAppsUpdated()V
    .locals 2

    .line 278
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->getMatcher()Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHasWorkApps:Z

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->rebindAdapters()V

    .line 281
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHasWorkApps:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    .line 285
    :cond_0
    return-void
.end method

.method private setDeviceManagementResources()V
    .locals 3

    .line 614
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    sget v0, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 616
    .local v0, "personalTab":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 618
    sget v1, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 619
    .local v1, "workTab":Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 621
    .end local v0    # "personalTab":Landroid/widget/Button;
    .end local v1    # "workTab":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private setMenuButtonColor(Landroid/widget/ImageButton;)V
    .locals 2
    .param p1, "menuButton"    # Landroid/widget/ImageButton;

    .line 1057
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    sget v1, Lcom/android/launcher3/R$attr;->isMainColorDark:I

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->all_apps_menu_icon_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 1059
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->all_apps_menu_icon_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1060
    :goto_1
    nop

    .line 1061
    .local v0, "colorRes":I
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1062
    return-void
.end method

.method private setMenuButtonVisibility(Landroid/view/View;)V
    .locals 2
    .param p1, "menuButton"    # Landroid/view/View;

    .line 1086
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    if-nez p1, :cond_0

    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_1

    return-void

    .line 1088
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mSearchMode:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTabPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1091
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1089
    :cond_3
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    :goto_1
    return-void
.end method

.method private setupSortAppsPopupMenu()V
    .locals 3

    .line 929
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeaderMenuButtonView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .local v0, "menuButton":Landroid/widget/ImageButton;
    goto :goto_0

    .line 932
    .end local v0    # "menuButton":Landroid/widget/ImageButton;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getMenuButtonView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 934
    .restart local v0    # "menuButton":Landroid/widget/ImageButton;
    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 935
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setMenuButtonColor(Landroid/widget/ImageButton;)V

    .line 936
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$4;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method private updateSearchResultsVisibility()V
    .locals 3

    .line 590
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isSearching()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/SearchRecyclerView;->setVisibility(I)V

    .line 592
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/SearchRecyclerView;->setVisibility(I)V

    .line 595
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->isSetUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setActiveRV(I)V

    .line 600
    :cond_1
    return-void
.end method


# virtual methods
.method public addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;FF)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "velocity"    # F
    .param p3, "progress"    # F

    .line 759
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;FF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 770
    return-void
.end method

.method protected abstract createAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;",
            "Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;",
            "[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 5

    .line 1113
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    .line 1114
    .local v1, "holder":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1115
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1117
    :cond_0
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-eqz v2, :cond_1

    .line 1118
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    .line 1119
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v4, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 1121
    :cond_1
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->ownOrderAppsList:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    if-eqz v2, :cond_2

    .line 1122
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->ownOrderAppsList:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v2, v3}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    .line 1123
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v3, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->ownOrderAppsList:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 1125
    .end local v1    # "holder":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    :cond_2
    goto :goto_0

    .line 1126
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 1127
    return-void
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 512
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getNavBarScrimHeight(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mNavBarScrimHeight:I

    .line 513
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V

    .line 514
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 519
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 521
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mNavBarScrimHeight:I

    if-lez v0, :cond_0

    .line 522
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mNavBarScrimHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 525
    :cond_0
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    .local p1, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AllAppsContainerView"

    const-string v2, "restoreInstanceState viewId = 0"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget v0, Lcom/android/launcher3/R$id;->work_tab_state_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 222
    .local v0, "state":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 223
    const/4 v1, 0x0

    const-string v2, "launcher.allapps.current_page"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 224
    .local v1, "currentPage":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->setCurrentPage(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->rebindAdapters()V

    goto :goto_1

    .line 228
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->reset(Z)V

    .line 232
    .end local v1    # "currentPage":I
    :cond_1
    :goto_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getCurrentPage()I

    move-result v1

    const-string v2, "launcher.allapps.current_page"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    sget v1, Lcom/android/launcher3/R$id;->work_tab_state_id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    return-void
.end method

.method public drawOnScrim(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 798
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->isHeaderProtectionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAlpha()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 803
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mScrimColor:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeaderBottom()I

    move-result v0

    .line 805
    .local v0, "bottom":I
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-nez v1, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingBottom()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderBottomAdjustment:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 808
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 809
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPeripheralProtectionHeight()I

    move-result v1

    .line 810
    .local v1, "tabsHeight":I
    iget v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTabsProtectionAlpha:I

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 811
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAlpha()F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTabsProtectionAlpha:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 812
    const/4 v5, 0x0

    int-to-float v6, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v7, v2

    add-int v2, v0, v1

    int-to-float v8, v2

    iget-object v9, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 815
    .end local v0    # "bottom":I
    .end local v1    # "tabsHeight":I
    :cond_2
    return-void
.end method

.method public getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 1

    .line 370
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveAppsRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1046
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    return-object v0
.end method

.method public getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 1

    .line 252
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 709
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 714
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const/4 v0, 0x2

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getNextPage()I

    move-result v0

    .line 714
    :goto_0
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 353
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    .line 354
    .local v0, "cache":Lcom/android/launcher3/model/StringCache;
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v1, :cond_3

    .line 355
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isPersonalTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    goto :goto_0

    .line 358
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    .line 356
    :goto_0
    return-object v1

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isPersonalTab()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->all_apps_button_personal_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->all_apps_button_work_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    :goto_1
    return-object v1

    .line 365
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->all_apps_button_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 782
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 783
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 784
    return-void
.end method

.method public getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;
    .locals 1

    .line 704
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    return-object v0
.end method

.method public getHeaderBottom()I
    .locals 1

    .line 849
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getHeaderColor(F)I
    .locals 2
    .param p1, "blendRatio"    # F

    .line 841
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mScrimColor:I

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderProtectionColor:I

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getHeaderMenuButtonView()Landroid/view/View;
    .locals 1

    .line 1053
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderMenuButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 413
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    return-object v0
.end method

.method public getMenuButtonView()Landroid/view/View;
    .locals 1

    .line 1050
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mMenuButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected getNavBarScrimHeight(Landroid/view/WindowInsets;)I
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 507
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getOwnOrderApps()Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;
    .locals 2

    .line 700
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->ownOrderAppsList:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    return-object v0
.end method

.method public getRearrangeHeaderView()Landroid/view/View;
    .locals 1

    .line 726
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mRearrangeHeader:Landroid/view/View;

    return-object v0
.end method

.method public getScrollBar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 2

    .line 721
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveAppsRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    .line 722
    .local v0, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;
    .locals 1

    .line 395
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    return-object v0
.end method

.method public getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation

    .line 696
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method public getTabPosition()I
    .locals 1

    .line 1109
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTabPosition:I

    return v0
.end method

.method public getVisibleContainerView()Landroid/view/View;
    .locals 1

    .line 856
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getWorkManager()Lcom/android/launcher3/allapps/WorkProfileManager;
    .locals 1

    .line 256
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    return-object v0
.end method

.method public hideSortAppsPopupMenu()V
    .locals 1

    .line 1065
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1068
    :cond_0
    return-void
.end method

.method public hideSortModeDialog()V
    .locals 2

    .line 1071
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1072
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "sort-apps-dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;

    .line 1073
    .local v0, "dialogFragment":Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;
    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {v0}, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;->dismissAllowingStateLoss()V

    .line 1076
    :cond_0
    return-void
.end method

.method public invalidateHeader()V
    .locals 1

    .line 821
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->isHeaderProtectionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    invoke-virtual {v0}, Lcom/android/launcher3/views/ScrimView;->invalidate()V

    .line 824
    :cond_0
    return-void
.end method

.method public isHeaderVisible()Z
    .locals 1

    .line 750
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInOwnOrderEditMode()Z
    .locals 2

    .line 1038
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isEditMode()Z

    move-result v0

    return v0
.end method

.method public isInSearchMode()Z
    .locals 1

    .line 1042
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mSearchMode:Z

    return v0
.end method

.method protected isPersonalTab()Z
    .locals 1

    .line 399
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getNextPage()I

    move-result v0

    if-nez v0, :cond_0

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

.method public isPersonalTabVisible()Z
    .locals 1

    .line 687
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    sget v0, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isDescendantViewVisible(I)Z

    move-result v0

    return v0
.end method

.method public isRearrange()Z
    .locals 1

    .line 1130
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mIsRearrange:Z

    return v0
.end method

.method protected isSearching()Z
    .locals 1

    .line 628
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isWorkTabVisible()Z
    .locals 1

    .line 692
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    sget v0, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isDescendantViewVisible(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onFinishInflate$0$com-android-launcher3-allapps-BaseAllAppsContainerView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 445
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->requestFocus()Z

    .line 448
    :cond_0
    return-void
.end method

.method synthetic lambda$rebindAdapters$2$com-android-launcher3-allapps-BaseAllAppsContainerView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 561
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->snapToPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_TAP_ON_PERSONAL_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 563
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 566
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 565
    invoke-static {v0, v1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    .line 567
    return-void
.end method

.method synthetic lambda$rebindAdapters$3$com-android-launcher3-allapps-BaseAllAppsContainerView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 570
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->snapToPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_TAP_ON_WORK_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 572
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 575
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 574
    invoke-static {v0, v1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    .line 576
    return-void
.end method

.method synthetic lambda$replaceAppsRVContainer$5$com-android-launcher3-allapps-BaseAllAppsContainerView()V
    .locals 2

    .line 651
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    return-void
.end method

.method synthetic lambda$setupSortAppsPopupMenu$7$com-android-launcher3-allapps-BaseAllAppsContainerView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "adapter"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 953
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 954
    .local v0, "itemId":I
    sget v1, Lcom/android/launcher3/R$id;->all_apps_menu_rearrange:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 955
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->hideKeyboard()V

    .line 956
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setOwnOrderEditMode(Z)V

    goto :goto_0

    .line 957
    :cond_0
    sget v1, Lcom/android/launcher3/R$id;->all_apps_menu_exit:I

    if-ne v0, v1, :cond_1

    .line 958
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setOwnOrderEditMode(Z)V

    goto :goto_0

    .line 959
    :cond_1
    sget v1, Lcom/android/launcher3/R$id;->all_apps_menu_sort:I

    if-ne v0, v1, :cond_2

    .line 960
    nop

    .line 961
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getSortMode()Lcom/sonymobile/launcher/allapps/SortMode;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;->newInstance(Lcom/sonymobile/launcher/allapps/SortMode;)Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;

    move-result-object v1

    .line 962
    .local v1, "dialog":Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;
    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 963
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const-string v4, "sort-apps-dialog"

    invoke-virtual {v3, v1, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 964
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 966
    .end local v1    # "dialog":Lcom/sonymobile/launcher/allapps/SortModeDialogFragment;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    :goto_0
    return v2
.end method

.method synthetic lambda$setupSortAppsPopupMenu$8$com-android-launcher3-allapps-BaseAllAppsContainerView(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 6
    .param p1, "menuButton"    # Landroid/widget/ImageButton;
    .param p2, "view"    # Landroid/view/View;

    .line 938
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$style;->BaseLauncherTheme:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 939
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 940
    .local v0, "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$menu;->all_apps_menu:I

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 941
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 943
    .local v1, "adapter":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    sget v3, Lcom/android/launcher3/R$id;->all_apps_menu_rearrange:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isOwnOrder()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    .line 943
    :goto_0
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 946
    sget v3, Lcom/android/launcher3/R$id;->all_apps_menu_exit:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 948
    sget v3, Lcom/android/launcher3/R$id;->all_apps_menu_sort:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mSearchMode:Z

    if-nez v4, :cond_1

    move v2, v5

    :cond_1
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 951
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 969
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 970
    return-void
.end method

.method public onActivePageChanged(I)V
    .locals 1
    .param p1, "currentActivePage"    # I

    .line 664
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->bindFastScrollbar()V

    .line 667
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->reset(Z)V

    .line 669
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager;->onActivePageChanged(I)V

    .line 671
    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTabPosition:I

    .line 672
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setupSortAppsPopupMenu()V

    .line 673
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 5
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 261
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    .line 262
    .local v1, "holder":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setAppsPerRow(I)V

    .line 263
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v3, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 267
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 269
    .end local v1    # "holder":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->updateBackground(Lcom/android/launcher3/DeviceProfile;)V

    .line 271
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 469
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->removeItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 472
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 440
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->onFinishInflate()V

    .line 444
    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 450
    sget v0, Lcom/android/launcher3/R$id;->all_apps_header:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/FloatingHeaderView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    .line 451
    sget v0, Lcom/android/launcher3/R$id;->search_results_list_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/SearchRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->rebindAdapters(Z)V

    .line 456
    sget v0, Lcom/android/launcher3/R$id;->bottom_sheet_background:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    .line 457
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->updateBackground(Lcom/android/launcher3/DeviceProfile;)V

    .line 459
    sget v0, Lcom/android/launcher3/R$id;->bottom_sheet_handle_area:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mBottomSheetHandleArea:Landroid/view/View;

    .line 461
    sget v0, Lcom/android/launcher3/R$id;->all_apps_menu_button:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mMenuButtonView:Landroid/widget/ImageButton;

    .line 462
    sget v0, Lcom/android/launcher3/R$id;->ownorder_rearrange_header:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mRearrangeHeader:Landroid/view/View;

    .line 463
    sget v1, Lcom/android/launcher3/R$id;->rearrange_header_menu_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderMenuButtonView:Landroid/widget/ImageButton;

    .line 464
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setupSortAppsPopupMenu()V

    .line 465
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 313
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    .line 315
    .local v0, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_0

    .line 319
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 322
    .end local v0    # "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result v0

    return v0

    .line 325
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPull(FF)V
    .locals 2
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 774
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    const v0, 0x3ca3d70a    # 0.02f

    mul-float v1, p1, v0

    mul-float/2addr v0, p2

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->absorbPullDeltaDistance(FF)V

    .line 778
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 330
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    .line 332
    .local v0, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_0

    .line 336
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 340
    .end local v0    # "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 341
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    .line 342
    return v1

    .line 344
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    return v1

    .line 348
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected rebindAdapters()V
    .locals 1

    .line 528
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->rebindAdapters(Z)V

    .line 529
    return-void
.end method

.method protected rebindAdapters(Z)V
    .locals 6
    .param p1, "force"    # Z

    .line 532
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->updateSearchResultsVisibility()V

    .line 534
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->shouldShowTabs()Z

    move-result v0

    .line 535
    .local v0, "showTabs":Z
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 536
    return-void

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isSearching()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    .line 541
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->detachWorkModeSwitch()V

    .line 542
    return-void

    .line 548
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->replaceAppsRVContainer(Z)Landroid/view/View;

    .line 549
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    .line 551
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 552
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 554
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v1, :cond_2

    .line 555
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    .line 556
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/WorkProfileManager;->getMatcher()Ljava/util/function/Predicate;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    .line 557
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    sget v2, Lcom/android/launcher3/R$id;->apps_list_view_work:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setId(I)V

    .line 558
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setActiveMarker(I)V

    .line 559
    sget v1, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V

    .line 560
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    sget v1, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V

    .line 569
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setDeviceManagementResources()V

    .line 578
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onActivePageChanged(I)V

    goto :goto_0

    .line 580
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    sget v2, Lcom/android/launcher3/R$id;->apps_list_view:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    .line 581
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iput-object v5, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 583
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setupHeader()V

    .line 585
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 586
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 587
    return-void
.end method

.method protected replaceAppsRVContainer(Z)Landroid/view/View;
    .locals 7
    .param p1, "showTabs"    # Z

    .line 632
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    .line 633
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    .line 634
    .local v1, "adapterHolder":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    iget-object v3, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v3, :cond_0

    .line 635
    iget-object v3, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 636
    iget-object v3, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 632
    .end local v1    # "adapterHolder":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/View;

    move-result-object v0

    .line 640
    .local v0, "oldView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 641
    .local v1, "index":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->removeView(Landroid/view/View;)V

    .line 642
    if-eqz p1, :cond_2

    sget v3, Lcom/android/launcher3/R$layout;->all_apps_tabs:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/android/launcher3/R$layout;->all_apps_rv_layout:I

    .line 643
    .local v3, "layout":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 644
    .local v4, "newView":Landroid/view/View;
    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->addView(Landroid/view/View;I)V

    .line 645
    if-eqz p1, :cond_3

    .line 646
    move-object v2, v4

    check-cast v2, Lcom/android/launcher3/allapps/AllAppsPagedView;

    iput-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    .line 647
    invoke-virtual {v2, p0}, Lcom/android/launcher3/allapps/AllAppsPagedView;->initParentViews(Landroid/view/View;)V

    .line 648
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsPagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V

    .line 649
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkProfileManager;->attachWorkModeSwitch()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 650
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v2

    new-instance v5, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V

    invoke-virtual {v2, v5}, Lcom/android/launcher3/allapps/WorkModeSwitch;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 654
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/WorkProfileManager;->detachWorkModeSwitch()V

    .line 655
    iput-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    .line 656
    iput v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTabPosition:I

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getMenuButtonView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setMenuButtonVisibility(Landroid/view/View;)V

    .line 659
    :cond_4
    :goto_2
    return-object v4
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 420
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 420
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isHeaderVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    .line 429
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->updateHeaderScroll(I)V

    .line 431
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setOwnOrderEditMode(Z)V

    .line 434
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->hideSortModeDialog()V

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->hideSortAppsPopupMenu()V

    .line 436
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 476
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 477
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 479
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 482
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 483
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 484
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v3, v4, v3}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setPadding(IIII)V

    goto :goto_0

    .line 489
    :cond_0
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->allAppsTopPadding:I

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setPadding(IIII)V

    .line 493
    :goto_0
    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 495
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$2;-><init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method public setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 246
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    .line 247
    .local v1, "holder":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    iget-object v2, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 248
    .end local v1    # "holder":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method public setOwnOrderEditMode(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 999
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 1000
    .local v0, "adapter":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setEditMode(Z)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setEditMode(Z)V

    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeaderMenuButtonView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setMenuButtonColor(Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 1005
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mMenuButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setMenuButtonColor(Landroid/widget/ImageButton;)V

    .line 1007
    :goto_0
    if-eqz p1, :cond_1

    .line 1008
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setupSortAppsPopupMenu()V

    .line 1009
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mRearrangeHeader:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 1011
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 1012
    .local v1, "currentSystemUiVisibility":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    and-int/lit16 v3, v1, -0x2001

    .line 1013
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1015
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    const v3, 0x1010435

    invoke-static {v2, v3}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    .line 1016
    .local v2, "accentColor":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1017
    .end local v1    # "currentSystemUiVisibility":I
    .end local v2    # "accentColor":I
    goto :goto_2

    .line 1018
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mRearrangeHeader:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/R$attr;->isMainColorDark:I

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    .line 1020
    .local v1, "isDarkTheme":Z
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mMenuButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    const/4 v3, -0x1

    goto :goto_1

    :cond_2
    const/high16 v3, -0x1000000

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1021
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v3, v2, Lcom/android/launcher3/Launcher;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 1022
    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1023
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mIsRearrange:Z

    if-eqz v2, :cond_3

    .line 1024
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 1025
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 1026
    .local v2, "currentSystemUiVisibility":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    or-int/lit16 v4, v2, 0x2000

    .line 1027
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1031
    .end local v2    # "currentSystemUiVisibility":I
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    const v3, 0x1010451

    invoke-static {v2, v3}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    .line 1032
    .local v2, "statusBarColor":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1034
    .end local v1    # "isDarkTheme":Z
    .end local v2    # "statusBarColor":I
    :goto_2
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mIsRearrange:Z

    .line 1035
    return-void
.end method

.method public setScrimView(Lcom/android/launcher3/views/ScrimView;)V
    .locals 0
    .param p1, "scrimView"    # Lcom/android/launcher3/views/ScrimView;

    .line 793
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    .line 794
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1079
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mSearchMode:Z

    if-eq v0, p1, :cond_0

    .line 1080
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mSearchMode:Z

    .line 1081
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getMenuButtonView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setMenuButtonVisibility(Landroid/view/View;)V

    .line 1083
    :cond_0
    return-void
.end method

.method public setSortMode(Lcom/sonymobile/launcher/allapps/SortMode;)V
    .locals 5
    .param p1, "sortMode"    # Lcom/sonymobile/launcher/allapps/SortMode;

    .line 981
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 984
    .local v0, "adapter":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 985
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 986
    invoke-virtual {p1}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xperia_sort_mode"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 987
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 989
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setSortMode(Lcom/sonymobile/launcher/allapps/SortMode;)Z

    .line 991
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setOwnOrderEditMode(Z)V

    .line 995
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getApps()Lcom/sonymobile/launcher/allapps/AppsList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/sonymobile/launcher/allapps/AppsList;)V

    .line 996
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .line 788
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->setTranslationY(F)V

    .line 789
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->invalidateHeader()V

    .line 790
    return-void
.end method

.method setupHeader()V
    .locals 9

    .line 730
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setVisibility(I)V

    .line 731
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    const/4 v2, 0x1

    xor-int/lit8 v8, v0, 0x1

    .line 732
    .local v8, "tabsHidden":Z
    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    .line 733
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v4, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    .line 734
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v5, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x2

    .line 735
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/allapps/SearchRecyclerView;

    .line 736
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getCurrentPage()I

    move-result v7

    .line 732
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/SearchRecyclerView;IZ)V

    .line 739
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getMaxTranslation()I

    move-result v0

    .line 740
    .local v0, "padding":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 747
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 291
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 293
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 294
    return v2

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mBottomSheetHandleArea:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    return v2

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    .line 300
    .local v1, "rv":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    if-nez v1, :cond_2

    .line 301
    return v2

    .line 303
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 304
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v2

    if-ltz v2, :cond_3

    .line 305
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    const/4 v2, 0x0

    return v2

    .line 308
    :cond_3
    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    return v2
.end method

.method protected shouldShowTabs()Z
    .locals 1

    .line 624
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHasWorkApps:Z

    return v0
.end method

.method public switchToTab(I)V
    .locals 1
    .param p1, "tab"    # I

    .line 407
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsPagedView;->setCurrentPage(I)V

    .line 410
    :cond_0
    return-void
.end method

.method protected updateBackground(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 274
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    return-void
.end method

.method protected updateHeaderScroll(I)V
    .locals 6
    .param p1, "scrolledOffset"    # I

    .line 827
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>;"
    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderThreshold:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 828
    .local v0, "prog":F
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeaderColor(F)I

    move-result v3

    .line 829
    .local v3, "headerColor":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPeripheralProtectionHeight()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 830
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget v4, v4, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    add-int/2addr v4, p1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderThreshold:F

    div-float/2addr v4, v5

    invoke-static {v4, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    nop

    .line 833
    .local v1, "tabsAlpha":I
    iget v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderColor:I

    if-ne v3, v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTabsProtectionAlpha:I

    if-eq v2, v1, :cond_2

    .line 834
    :cond_1
    iput v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mHeaderColor:I

    .line 835
    iput v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mTabsProtectionAlpha:I

    .line 836
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->invalidateHeader()V

    .line 838
    :cond_2
    return-void
.end method

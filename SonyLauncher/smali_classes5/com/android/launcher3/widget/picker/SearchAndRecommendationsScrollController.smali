.class final Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;
.super Ljava/lang/Object;
.source "SearchAndRecommendationsScrollController.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;
    }
.end annotation


# static fields
.field private static final INTERCEPT_PROXY:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;

.field private static final SCROLL_OFFSET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_PROXY:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;


# instance fields
.field final mContainer:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

.field private mCurrentEmptySpaceView:Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

.field private mCurrentRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

.field private mHeaderHeight:I

.field final mHeaderTitle:Landroid/widget/TextView;

.field private mLastScroll:F

.field private mOffsetAnimator:Landroid/animation/Animator;

.field final mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

.field private mScrollOffset:F

.field final mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

.field final mSearchBarContainer:Landroid/view/View;

.field private mShouldForwardToRecyclerView:Z

.field final mTabBar:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$SzfH84ipcDSadVsnOVdqum_CVYc(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->updateHeaderScroll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmScrollOffset(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mScrollOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmScrollOffset(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mScrollOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHeaderScroll(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->updateHeaderScroll()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$1;

    const-string v1, "scrollAnimOffset"

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->SCROLL_OFFSET:Landroid/util/FloatProperty;

    .line 57
    new-instance v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->INTERCEPT_PROXY:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;

    .line 58
    new-instance v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->TOUCH_PROXY:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;)V
    .locals 1
    .param p1, "searchAndRecommendationContainer"    # Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mLastScroll:F

    .line 71
    iput v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mScrollOffset:F

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mShouldForwardToRecyclerView:Z

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mContainer:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    .line 81
    sget v0, Lcom/android/launcher3/R$id;->search_bar_container:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBarContainer:Landroid/view/View;

    .line 82
    sget v0, Lcom/android/launcher3/R$id;->widgets_search_bar:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    .line 83
    sget v0, Lcom/android/launcher3/R$id;->title:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mHeaderTitle:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/android/launcher3/R$id;->recommended_widget_table:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    .line 85
    sget v0, Lcom/android/launcher3/R$id;->tabs:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mTabBar:Landroid/view/View;

    .line 87
    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->setSearchAndRecommendationScrollController(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;)V

    .line 88
    return-void
.end method

.method private findCurrentEmptyView()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentEmptySpaceView:Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    if-eqz v0, :cond_0

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->setOnYChangeCallback(Ljava/lang/Runnable;)V

    .line 205
    iput-object v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentEmptySpaceView:Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getChildCount()I

    move-result v0

    .line 208
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 209
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 210
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    if-eqz v3, :cond_1

    .line 211
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    iput-object v3, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentEmptySpaceView:Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->getHeaderHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->setFixedHeight(I)Z

    .line 213
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentEmptySpaceView:Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    new-instance v4, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->setOnYChangeCallback(Ljava/lang/Runnable;)V

    .line 214
    return-void

    .line 208
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private getCurrentScroll()F
    .locals 2

    .line 121
    iget v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mScrollOffset:F

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentEmptySpaceView:Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->getY()F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method private proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "method"    # Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mContainer:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 179
    .local v0, "dx":F
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mContainer:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 180
    .local v1, "dy":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-interface {p2, v2, p1}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;->proxyEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 182
    return v2

    .line 184
    :catchall_0
    move-exception v2

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 185
    throw v2
.end method

.method private updateHeaderScroll()V
    .locals 4

    .line 106
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->getCurrentScroll()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mLastScroll:F

    .line 107
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    iget v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mLastScroll:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setTranslationY(F)V

    .line 110
    iget v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mLastScroll:F

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 111
    .local v0, "searchYDisplacement":F
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBarContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mTabBar:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 114
    iget v2, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mLastScroll:F

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBarContainer:Landroid/view/View;

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    .line 114
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 116
    .local v1, "tabsDisplacement":F
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mTabBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 118
    .end local v1    # "tabsDisplacement":F
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeaderHeight()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mHeaderHeight:I

    return v0
.end method

.method synthetic lambda$reset$0$com-android-launcher3-widget-picker-SearchAndRecommendationsScrollController()V
    .locals 1

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mOffsetAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 190
    instance-of v0, p1, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->findCurrentEmptyView()V

    .line 193
    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentEmptySpaceView:Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    if-ne p1, v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->findCurrentEmptyView()V

    .line 200
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 167
    sget-object v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->INTERCEPT_PROXY:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mShouldForwardToRecyclerView:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 174
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mShouldForwardToRecyclerView:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->TOUCH_PROXY:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$MotionEventProxyMethod;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mOffsetAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mOffsetAnimator:Landroid/animation/Animator;

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mScrollOffset:F

    .line 153
    if-nez p1, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->updateHeaderScroll()V

    goto :goto_0

    .line 156
    :cond_1
    iget v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mLastScroll:F

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->getCurrentScroll()F

    move-result v2

    sub-float/2addr v1, v2

    .line 157
    .local v1, "startValue":F
    sget-object v2, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->SCROLL_OFFSET:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mOffsetAnimator:Landroid/animation/Animator;

    .line 158
    new-instance v2, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mOffsetAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 161
    .end local v1    # "startValue":F
    :goto_0
    return-void
.end method

.method public setCurrentRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V
    .locals 2
    .param p1, "currentRecyclerView"    # Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 92
    .local v1, "animateReset":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 95
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 96
    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 97
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->findCurrentEmptyView()V

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->reset(Z)V

    .line 99
    return-void
.end method

.method public updateHeaderHeight()Z
    .locals 4

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "hasSizeUpdated":Z
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mContainer:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;->getMeasuredHeight()I

    move-result v1

    .line 133
    .local v1, "headerHeight":I
    iget v2, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mHeaderHeight:I

    if-eq v1, v2, :cond_0

    .line 134
    iput v1, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mHeaderHeight:I

    .line 135
    const/4 v0, 0x1

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mCurrentEmptySpaceView:Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mHeaderHeight:I

    .line 139
    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->setFixedHeight(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const/4 v0, 0x1

    .line 142
    :cond_1
    return v0
.end method

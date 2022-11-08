.class public Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.super Lcom/android/launcher3/widget/BaseWidgetSheet;
.source "WidgetsFullSheet.java"

# interfaces
.implements Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
.implements Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;
.implements Lcom/android/launcher3/widget/picker/search/SearchModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_OPEN_DURATION:J = 0x10bL

.field private static final EDUCATION_DIALOG_DELAY_MS:J = 0x1f4L

.field private static final EDUCATION_TIP_DELAY_MS:J = 0xc8L

.field private static final FADE_IN_DURATION:J = 0x96L

.field private static final KEY_WIDGETS_EDUCATION_DIALOG_SEEN:Ljava/lang/String; = "launcher.widgets_education_dialog_seen"

.field private static final RECOMMENDATION_TABLE_HEIGHT_RATIO:F = 0.75f

.field private static final VERTICAL_START_POSITION:F = 0.3f


# instance fields
.field private final mAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

.field private final mCurrentUser:Landroid/os/UserHandle;

.field private mCurrentWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

.field private final mHasWorkProfile:Z

.field private mIsInSearchMode:Z

.field private mIsNoWidgetsViewNeeded:Z

.field private mLatestEducationalTip:Lcom/android/launcher3/views/ArrowTipView;

.field private final mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

.field private mMaxSpansPerRow:I

.field private mNoWidgetsView:Landroid/widget/TextView;

.field private final mPrimaryWidgetsFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

.field private final mShowEducationTipTask:Ljava/lang/Runnable;

.field private final mTabsHeight:I

.field private final mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

.field private mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

.field private final mWidgetSheetContentHorizontalPadding:I

.field private final mWorkWidgetsFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TFGa1zDxobIXl5E1FY9NLAGhotI(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdapters(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBindScrollbarInSearchMode(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInSearchMode(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxSpansPerRow(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpansPerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryWidgetsFilter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mPrimaryWidgetsFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchScrollController(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowEducationTipTask(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkWidgetsFilter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWorkWidgetsFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/BaseWidgetSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance v0, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v0}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 102
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 103
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentUser:Landroid/os/UserHandle;

    .line 104
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mPrimaryWidgetsFilter:Ljava/util/function/Predicate;

    .line 106
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWorkWidgetsFilter:Ljava/util/function/Predicate;

    .line 110
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    .line 128
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    .line 139
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    .line 162
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpansPerRow:I

    .line 168
    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2}, Landroid/content/pm/LauncherApps;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    .line 169
    new-instance v5, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-direct {v5, p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    new-instance v5, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-direct {v5, p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    new-instance v4, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 174
    .local v1, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    .line 175
    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_header_pill_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 176
    :cond_1
    nop

    :goto_1
    iput v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabsHeight:I

    .line 177
    sget v2, Lcom/android/launcher3/R$dimen;->widget_cell_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v5

    iput v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetSheetContentHorizontalPadding:I

    .line 180
    sget-object v2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    const-class v3, Landroid/os/UserManager;

    .line 181
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 180
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationTip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 254
    invoke-virtual {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->bindFastScrollbar()V

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    if-eq v0, p1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->reset()V

    .line 259
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->resetExpandedHeaders()V

    .line 260
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->setCurrentRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 263
    :cond_0
    return-void
.end method

.method private getViewToShowEducationTip()Landroid/view/View;
    .locals 5

    .line 704
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    .line 705
    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 707
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 706
    return-object v0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    iget-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v2, :cond_1

    .line 711
    const/4 v2, 0x2

    goto :goto_0

    .line 712
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    if-nez v2, :cond_2

    .line 713
    move v2, v1

    goto :goto_0

    .line 714
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getCurrentPage()I

    move-result v2

    .line 710
    :goto_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 715
    .local v0, "adapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v2

    .line 717
    invoke-virtual {v2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v2

    .line 716
    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v3

    .line 718
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda9;

    invoke-direct {v4, v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    invoke-interface {v2, v4}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda10;-><init>()V

    .line 720
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 721
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    .line 722
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    .line 723
    .local v2, "viewHolderForTip":Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    if-eqz v2, :cond_3

    .line 724
    iget-object v3, v2, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 727
    :cond_3
    return-object v3
.end method

.method public static getWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 644
    sget v0, Lcom/android/launcher3/R$id;->primary_widgets_list_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-object v0
.end method

.method static synthetic lambda$getViewToShowEducationTip$6(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 720
    instance-of v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    return v0
.end method

.method private static measureHeightWithVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x0

    return v0

    .line 675
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 676
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private open(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .line 572
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/views/BaseDragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 575
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setTranslationShift(F)V

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v5, 0x0

    aput v0, v2, v5

    .line 578
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v3, v5

    .line 577
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 579
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x10b

    .line 580
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10c000e

    .line 581
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$3;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setTranslationShift(F)V

    .line 595
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->post(Ljava/lang/Runnable;)Z

    .line 597
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 284
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->reset(Z)V

    .line 289
    return-void
.end method

.method private resetExpandedHeaders()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->resetExpandedHeader()V

    .line 532
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->resetExpandedHeader()V

    .line 533
    return-void
.end method

.method private setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "bottomPadding"    # I

    .line 349
    nop

    .line 350
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 351
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    .line 352
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    .line 349
    invoke-virtual {p1, v0, v1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 354
    return-void
.end method

.method private static setContentViewChildHorizontalMargin(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "horizontalMarginInPx"    # I

    .line 378
    nop

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 380
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 381
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 382
    return-void
.end method

.method private static setContentViewChildHorizontalPadding(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "horizontalPaddingInPx"    # I

    .line 385
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 385
    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 387
    return-void
.end method

.method private setDeviceManagementResources()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    sget v0, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 236
    .local v0, "personalTab":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    sget v1, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 239
    .local v1, "workTab":Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .end local v0    # "personalTab":Landroid/widget/Button;
    .end local v1    # "workTab":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private setUpEducationViewsIfNeeded()V
    .locals 3

    .line 745
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationTip()Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 760
    :cond_1
    :goto_0
    return-void
.end method

.method private setViewVisibilityBasedOnSearch(Z)V
    .locals 4
    .param p1, "isInSearchMode"    # Z

    .line 509
    iput-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    .line 510
    const/4 v0, 0x2

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 511
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v2, v2, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setVisibility(I)V

    .line 512
    iget-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->setVisibility(I)V

    .line 514
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v2, v2, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mTabBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setVisibility(I)V

    .line 518
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    .line 520
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setVisibility(I)V

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 526
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    .line 528
    :goto_1
    return-void
.end method

.method public static show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
    .locals 4
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "animate"    # Z

    .line 633
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->widgets_full_sheet:I

    .line 634
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 635
    .local v0, "sheet":Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachToContainer()V

    .line 636
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsOpen:Z

    .line 637
    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->open(Z)V

    .line 638
    return-object v0
.end method

.method private showEducationDialog()Lcom/android/launcher3/views/WidgetsEduView;
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 733
    const-string v1, "launcher.widgets_education_dialog_seen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 734
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/views/WidgetsEduView;->showEducationDialog(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/views/WidgetsEduView;

    move-result-object v0

    return-object v0
.end method

.method private updateMaxSpansPerRow()Z
    .locals 5

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 410
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    :goto_0
    nop

    .line 413
    .local v0, "content":Landroid/view/View;
    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWidgetSheetContentHorizontalPadding:I

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->computeMaxHorizontalSpans(Landroid/view/View;I)I

    move-result v2

    .line 415
    .local v2, "maxHorizontalSpans":I
    iget v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpansPerRow:I

    if-eq v3, v2, :cond_3

    .line 416
    iput v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpansPerRow:I

    .line 417
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpansPerRow:I

    invoke-virtual {v1, v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPerRow(I)V

    .line 419
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpansPerRow:I

    invoke-virtual {v1, v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPerRow(I)V

    .line 421
    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v1

    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpansPerRow:I

    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPerRow(I)V

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 426
    return v3

    .line 428
    :cond_3
    return v1
.end method

.method private updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V
    .locals 5
    .param p1, "adapterHolder"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 267
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v0

    .line 268
    .local v0, "isWidgetAvailable":Z
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setVisibility(I)V

    .line 270
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmAdapterType(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    sget v4, Lcom/android/launcher3/R$string;->no_search_results:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 272
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmAdapterType(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 273
    invoke-virtual {v1}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 274
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    sget v4, Lcom/android/launcher3/R$string;->no_widgets_available:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 279
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    return-void
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 3
    .param p1, "distanceToMove"    # F
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "target"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 650
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    neg-float v2, p1

    invoke-virtual {p3, v0, v1, v2, p2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 651
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p3, v0, v1, p2}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 652
    return-void
.end method

.method public enterSearchMode()V
    .locals 2

    .line 484
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 485
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 487
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_SEARCHED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 488
    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    .line 492
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onSearchResults(Ljava/util/List;)V

    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    .line 495
    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->snapToPage(I)Z

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 499
    return-void
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 305
    iget-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsOpen:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/launcher3/R$string;->widgets_list:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/launcher3/R$string;->widgets_list_closed:I

    .line 304
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderViewHeight()I
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mHeaderTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->measureHeightWithVerticalMargins(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBarContainer:Landroid/view/View;

    .line 667
    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->measureHeightWithVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 666
    return v0
.end method

.method public getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .locals 2

    .line 293
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    return-object v0

    .line 296
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    return-object v0

    .line 297
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 601
    const-wide/16 v0, 0x10b

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->handleClose(ZJ)V

    .line 602
    return-void
.end method

.method protected hasSeenEducationDialog()Z
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 740
    const-string v1, "launcher.widgets_education_dialog_seen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 739
    :cond_1
    return v2
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 606
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-widget-picker-WidgetsFullSheet(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentUser:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$1$com-android-launcher3-widget-picker-WidgetsFullSheet(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentUser:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0
.end method

.method synthetic lambda$new$2$com-android-launcher3-widget-picker-WidgetsFullSheet()V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationTip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getViewToShowEducationTip()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->showEducationTipOnViewIfPossible(Landroid/view/View;)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLatestEducationalTip:Lcom/android/launcher3/views/ArrowTipView;

    .line 134
    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 137
    :cond_1
    return-void
.end method

.method synthetic lambda$onFinishInflate$3$com-android-launcher3-widget-picker-WidgetsFullSheet(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->snapToPage(I)Z

    return-void
.end method

.method synthetic lambda$onFinishInflate$4$com-android-launcher3-widget-picker-WidgetsFullSheet(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->snapToPage(I)Z

    return-void
.end method

.method synthetic lambda$open$5$com-android-launcher3-widget-picker-WidgetsFullSheet()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 591
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 592
    return-void
.end method

.method synthetic lambda$setUpEducationViewsIfNeeded$7$com-android-launcher3-widget-picker-WidgetsFullSheet()V
    .locals 1

    .line 749
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationTip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->requestLayout()V

    .line 755
    :cond_0
    return-void
.end method

.method synthetic lambda$setUpEducationViewsIfNeeded$8$com-android-launcher3-widget-picker-WidgetsFullSheet()V
    .locals 2

    .line 747
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->showEducationDialog()Lcom/android/launcher3/views/WidgetsEduView;

    move-result-object v0

    .line 748
    .local v0, "eduDialog":Lcom/android/launcher3/views/WidgetsEduView;
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/WidgetsEduView;->addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    .line 756
    return-void
.end method

.method public notifyWidgetProvidersChanged()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 448
    return-void
.end method

.method public onActivePageChanged(I)V
    .locals 2
    .param p1, "currentActivePage"    # I

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 246
    .local v0, "currentAdapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 247
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v1

    .line 249
    .local v1, "currentRecyclerView":Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    .line 250
    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 251
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 310
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onAttachedToWindow()V

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->addProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->notifyWidgetProvidersChanged()V

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 314
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 690
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->reset()V

    .line 692
    const/4 v0, 0x1

    return v0

    .line 694
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onCloseComplete()V
    .locals 2

    .line 656
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onCloseComplete()V

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 658
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLatestEducationalTip:Lcom/android/launcher3/views/ArrowTipView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ArrowTipView;->close(Z)V

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    .line 662
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 682
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 683
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->reset()V

    .line 686
    :cond_0
    return-void
.end method

.method protected onContentHorizontalMarginChanged(I)V
    .locals 2
    .param p1, "contentHorizontalMarginInPx"    # I

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mContainer:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalMargin(Landroid/view/View;I)V

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 362
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    .line 361
    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 366
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    .line 365
    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    .line 368
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    .line 369
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    .line 368
    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    .line 373
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    .line 372
    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    .line 375
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoIntercept:Z

    .line 614
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    .line 615
    .local v0, "scroller":Lcom/android/launcher3/views/RecyclerViewFastScroller;
    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    iput-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoIntercept:Z

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoIntercept:Z

    .line 622
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v1}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->isSearchBarFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v2, v2, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBarContainer:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v1}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->clearSearchBarFocus()V

    .line 628
    .end local v0    # "scroller":Lcom/android/launcher3/views/RecyclerViewFastScroller;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 318
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onDetachedFromWindow()V

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 322
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    .line 324
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 326
    :cond_0
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 699
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onDragStart(ZF)V

    .line 700
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 701
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 190
    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onFinishInflate()V

    .line 191
    sget v0, Lcom/android/launcher3/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 194
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/launcher3/R$layout;->widgets_full_sheet_paged_view:I

    goto :goto_0

    .line 195
    :cond_0
    sget v1, Lcom/android/launcher3/R$layout;->widgets_full_sheet_recyclerview:I

    :goto_0
    nop

    .line 196
    .local v1, "contentLayoutRes":I
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 198
    sget v2, Lcom/android/launcher3/R$id;->fast_scroller:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 199
    .local v2, "fastScroller":Lcom/android/launcher3/views/RecyclerViewFastScroller;
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    sget v6, Lcom/android/launcher3/R$id;->primary_widgets_list_view:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 200
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    sget v6, Lcom/android/launcher3/R$id;->search_widgets_list_view:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 201
    iget-boolean v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v4, :cond_1

    .line 202
    sget v4, Lcom/android/launcher3/R$id;->widgets_view_pager:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    iput-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    .line 203
    invoke-virtual {v4, p0}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->initParentViews(Landroid/view/View;)V

    .line 204
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V

    .line 205
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setActiveMarker(I)V

    .line 206
    sget v4, Lcom/android/launcher3/R$id;->tab_personal:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    .line 207
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget v4, Lcom/android/launcher3/R$id;->tab_work:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    .line 209
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    sget v4, Lcom/android/launcher3/R$id;->work_widgets_list_view:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 211
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setDeviceManagementResources()V

    goto :goto_1

    .line 213
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    .line 216
    :goto_1
    sget v3, Lcom/android/launcher3/R$id;->no_widgets_text:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    .line 217
    new-instance v3, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    sget v4, Lcom/android/launcher3/R$id;->search_and_recommendations_container:I

    .line 218
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;

    invoke-direct {v3, v4}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;-><init>(Lcom/android/launcher3/widget/picker/SearchAndRecommendationsView;)V

    iput-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    .line 219
    sget v4, Lcom/android/launcher3/R$id;->primary_widgets_list_view:I

    .line 220
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 219
    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->setCurrentRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    .line 221
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v3, v3, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 222
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v3, v3, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    .line 227
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v3, v3, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/Launcher;

    .line 228
    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v4

    .line 227
    invoke-interface {v3, v4, p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->initialize(Lcom/android/launcher3/popup/PopupDataProvider;Lcom/android/launcher3/widget/picker/search/SearchModeListener;)V

    .line 230
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setUpEducationViewsIfNeeded()V

    .line 231
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 433
    sub-int v0, p4, p2

    .line 434
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 437
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 438
    .local v2, "contentWidth":I
    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 439
    .local v3, "contentLeft":I
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int v6, v3, v2

    invoke-virtual {v4, v3, v5, v6, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 442
    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTranslationShift:F

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setTranslationShift(F)V

    .line 443
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->doMeasure(II)V

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->updateHeaderHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->doMeasure(II)V

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateMaxSpansPerRow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->doMeasure(II)V

    .line 400
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->updateHeaderHeight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->doMeasure(II)V

    .line 404
    :cond_1
    return-void
.end method

.method public onRecommendedWidgetsBound()V
    .locals 8

    .line 537
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 538
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 541
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getRecommendedWidgets()Ljava/util/List;

    move-result-object v0

    .line 542
    .local v0, "recommendedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    .line 543
    .local v1, "table":Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 544
    const/4 v2, 0x0

    .line 545
    .local v2, "noWidgetsViewHeight":F
    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsNoWidgetsViewNeeded:Z

    if-eqz v3, :cond_1

    .line 547
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 548
    .local v3, "noWidgetsViewTextBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    .line 549
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    .line 550
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 549
    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 551
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v2, v4

    .line 553
    .end local v3    # "noWidgetsViewTextBounds":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    .line 554
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/Launcher;

    .line 556
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 553
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->doMeasure(II)V

    .line 558
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabsHeight:I

    sub-int/2addr v3, v4

    .line 559
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getHeaderViewHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    .line 562
    .local v3, "maxTableHeight":F
    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpansPerRow:I

    .line 563
    invoke-static {v0, v4}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsIntoTableWithoutReordering(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 565
    .local v4, "recommendedWidgetsInTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-virtual {v1, v4, v3}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setRecommendedWidgets(Ljava/util/List;F)V

    .line 566
    .end local v2    # "noWidgetsViewHeight":F
    .end local v3    # "maxTableHeight":F
    .end local v4    # "recommendedWidgetsInTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    goto :goto_0

    .line 567
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setVisibility(I)V

    .line 569
    :goto_0
    return-void
.end method

.method public onSearchResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 503
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgetsOnSearch(Ljava/util/List;)V

    .line 504
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    .line 505
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->scrollToTop()V

    .line 506
    return-void
.end method

.method public onWidgetsBound()V
    .locals 6

    .line 452
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 453
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 456
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object v0

    .line 458
    .local v0, "allWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 459
    .local v1, "primaryUserAdapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    .line 461
    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 462
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->setVisibility(I)V

    .line 463
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollController:Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    iget-object v3, v3, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->mTabBar:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    .line 465
    .local v3, "workUserAdapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    invoke-static {v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    .line 466
    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;->getCurrentPage()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onActivePageChanged(I)V

    .line 467
    .end local v3    # "workUserAdapterHolder":Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    goto :goto_0

    .line 468
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    .line 472
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 473
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    .line 474
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    move-result-object v3

    .line 475
    invoke-virtual {v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v4

    .line 476
    .local v2, "isNoWidgetsViewNeeded":Z
    :goto_2
    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsNoWidgetsViewNeeded:Z

    if-eq v3, v2, :cond_4

    .line 477
    iput-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsNoWidgetsViewNeeded:Z

    .line 478
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    .line 480
    :cond_4
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 330
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setInsets(Landroid/graphics/Rect;)V

    .line 331
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNavBarScrimHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 332
    .local v0, "bottomPadding":I
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 333
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 334
    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->-$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 339
    if-lez v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setupNavBarColor()V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->clearNavBarColor()V

    .line 345
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->requestLayout()V

    .line 346
    return-void
.end method

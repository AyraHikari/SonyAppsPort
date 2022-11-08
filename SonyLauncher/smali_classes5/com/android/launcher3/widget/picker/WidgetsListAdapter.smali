.class public Lcom/android/launcher3/widget/picker/WidgetsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WidgetsListAdapter.java"

# interfaces
.implements Lcom/android/launcher3/widget/picker/OnHeaderClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/android/launcher3/widget/picker/OnHeaderClickListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsListAdapter"

.field private static final VIEW_TYPE_WIDGETS_HEADER:I

.field private static final VIEW_TYPE_WIDGETS_LIST:I

.field private static final VIEW_TYPE_WIDGETS_SEARCH_HEADER:I

.field private static final VIEW_TYPE_WIDGETS_SPACE:I


# instance fields
.field private final mAllEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDiffReporter:Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;

.field private mFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderAndSelectedContentFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSpanSize:I

.field private mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRowComparator:Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

.field private final mSpacingBetweenEntries:I

.field private final mViewHolderBinders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/recyclerview/ViewHolderBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSpacingBetweenEntries(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mSpacingBetweenEntries:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 83
    sget v0, Lcom/android/launcher3/R$id;->view_type_widgets_space:I

    sput v0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_SPACE:I

    .line 84
    sget v0, Lcom/android/launcher3/R$id;->view_type_widgets_list:I

    sput v0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_LIST:I

    .line 85
    sget v0, Lcom/android/launcher3/R$id;->view_type_widgets_header:I

    sput v0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_HEADER:I

    .line 86
    sget v0, Lcom/android/launcher3/R$id;->view_type_widgets_search_header:I

    sput v0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_SEARCH_HEADER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/icons/IconCache;Ljava/util/function/IntSupplier;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p4, "emptySpaceHeightProvider"    # Ljava/util/function/IntSupplier;
    .param p5, "iconClickListener"    # Landroid/view/View$OnClickListener;
    .param p6, "iconLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 111
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mViewHolderBinders:Landroid/util/SparseArray;

    .line 91
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    invoke-direct {v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRowComparator:Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 98
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mHeaderAndSelectedContentFilter:Ljava/util/function/Predicate;

    .line 103
    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mFilter:Ljava/util/function/Predicate;

    .line 107
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mMaxSpanSize:I

    .line 112
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mContext:Landroid/content/Context;

    .line 113
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;

    invoke-direct {v1, p3, p0}, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;-><init>(Lcom/android/launcher3/icons/IconCache;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mDiffReporter:Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;

    .line 114
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

    invoke-direct {v1, p1}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, "listDrawableFactory":Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;
    sget v2, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_LIST:I

    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    invoke-direct {v3, p2, p5, p6, v1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;-><init>(Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget v2, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_HEADER:I

    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

    invoke-direct {v3, p2, p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;-><init>(Landroid/view/LayoutInflater;Lcom/android/launcher3/widget/picker/OnHeaderClickListener;Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget v2, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_SEARCH_HEADER:I

    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;

    invoke-direct {v3, p2, p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;-><init>(Landroid/view/LayoutInflater;Lcom/android/launcher3/widget/picker/OnHeaderClickListener;Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget v2, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_SPACE:I

    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;

    invoke-direct {v3, p4}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;-><init>(Ljava/util/function/IntSupplier;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    nop

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$dimen;->widget_list_entry_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mSpacingBetweenEntries:I

    .line 138
    return-void
.end method

.method private getOffsetForPosition(Ljava/util/OptionalInt;)Ljava/util/OptionalInt;
    .locals 3
    .param p1, "positionOptional"    # Ljava/util/OptionalInt;

    .line 374
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 377
    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    return-object v1

    .line 379
    :cond_1
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 380
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v2

    return-object v2

    .line 382
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    invoke-static {v2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v2

    return-object v2

    .line 374
    .end local v0    # "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method private getPositionForPackageUserKey(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/OptionalInt;
    .locals 2
    .param p1, "key"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 364
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 365
    invoke-interface {v0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v0

    .line 363
    return-object v0
.end method

.method private static isHeaderForPackageUserKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .param p1, "key"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 252
    instance-of v0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry$Header;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->matchesKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$shouldClearVisibleEntries$4(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 435
    instance-of v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    return v0
.end method

.method static synthetic lambda$shouldClearVisibleEntries$5(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 1
    .param p0, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 436
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    return-object v0
.end method

.method static synthetic lambda$shouldClearVisibleEntries$6(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 1
    .param p0, "entry"    # Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 438
    invoke-static {p0}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$shouldClearVisibleEntries$7(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 0
    .param p0, "entry"    # Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 439
    return-object p0
.end method

.method private static matchesKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z
    .locals 3
    .param p0, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .param p1, "key"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 257
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    iget v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 260
    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 258
    :goto_0
    return v0
.end method

.method private scrollToPositionAndMaintainOffset(Ljava/util/OptionalInt;Ljava/util/OptionalInt;)V
    .locals 4
    .param p1, "positionOptional"    # Ljava/util/OptionalInt;
    .param p2, "offsetOptional"    # Ljava/util/OptionalInt;

    .line 397
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    .line 400
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 401
    .local v1, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    if-nez v1, :cond_1

    return-void

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    .line 404
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 409
    return-void

    .line 414
    :cond_2
    const/4 v2, 0x0

    .line 416
    invoke-virtual {p2, v2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 414
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 417
    return-void

    .line 397
    .end local v0    # "position":I
    .end local v1    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_3
    :goto_0
    return-void
.end method

.method private shouldClearVisibleEntries()Z
    .locals 7

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    .line 434
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 435
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda1;-><init>()V

    .line 436
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda3;-><init>()V

    .line 437
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 440
    .local v0, "packagesInfo":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/model/data/PackageItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 441
    .local v2, "visibleEntry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    iget-object v3, v2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v3

    .line 442
    .local v3, "key":Lcom/android/launcher3/util/PackageUserKey;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 443
    .local v4, "packageItemInfo":Lcom/android/launcher3/model/data/PackageItemInfo;
    if-eqz v4, :cond_0

    iget-object v5, v2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, v4, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 444
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 445
    const/4 v1, 0x1

    return v1

    .line 447
    .end local v2    # "visibleEntry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .end local v3    # "key":Lcom/android/launcher3/util/PackageUserKey;
    .end local v4    # "packageItemInfo":Lcom/android/launcher3/model/data/PackageItemInfo;
    :cond_0
    goto :goto_0

    .line 448
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private updateVisibleEntries()V
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;

    .line 214
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getPositionForPackageUserKey(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/OptionalInt;

    move-result-object v0

    .line 215
    .local v0, "previousPositionForPackageUserKey":Ljava/util/OptionalInt;
    nop

    .line 216
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getOffsetForPosition(Ljava/util/OptionalInt;)Ljava/util/OptionalInt;

    move-result-object v1

    .line 218
    .local v1, "topForPackageUserKey":Ljava/util/OptionalInt;
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V

    .line 219
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V

    .line 222
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 234
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 236
    .local v2, "newVisibleEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mDiffReporter:Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRowComparator:Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->process(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;)V

    .line 238
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;

    if-eqz v3, :cond_0

    .line 241
    nop

    .line 242
    invoke-direct {p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getPositionForPackageUserKey(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/OptionalInt;

    move-result-object v3

    .line 243
    .local v3, "positionForPackageUserKey":Ljava/util/OptionalInt;
    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->scrollToPositionAndMaintainOffset(Ljava/util/OptionalInt;Ljava/util/OptionalInt;)V

    .line 244
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;

    .line 246
    .end local v3    # "positionForPackageUserKey":Ljava/util/OptionalInt;
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "pos"    # I

    .line 317
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    iget-object v1, v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/PackageItemInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 317
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "pos"    # I

    .line 324
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 325
    .local v0, "entry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    instance-of v1, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v1, :cond_0

    .line 326
    sget v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_LIST:I

    return v1

    .line 327
    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    if-eqz v1, :cond_1

    .line 328
    sget v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_HEADER:I

    return v1

    .line 329
    :cond_1
    instance-of v1, v0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    if-eqz v1, :cond_2

    .line 330
    sget v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_SEARCH_HEADER:I

    return v1

    .line 331
    :cond_2
    instance-of v1, v0, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;

    if-eqz v1, :cond_3

    .line 332
    sget v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->VIEW_TYPE_WIDGETS_SPACE:I

    return v1

    .line 334
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewHolderBinder not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSectionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    return-object v0
.end method

.method public hasVisibleEntries()Z
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method synthetic lambda$getPositionForPackageUserKey$3$com-android-launcher3-widget-picker-WidgetsListAdapter(Lcom/android/launcher3/util/PackageUserKey;I)Z
    .locals 1
    .param p1, "key"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p2, "index"    # I

    .line 364
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->isHeaderForPackageUserKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-widget-picker-WidgetsListAdapter(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 99
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 101
    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 99
    :goto_1
    return v0
.end method

.method synthetic lambda$updateVisibleEntries$1$com-android-launcher3-widget-picker-WidgetsListAdapter(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mFilter:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mHeaderAndSelectedContentFilter:Ljava/util/function/Predicate;

    .line 220
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 219
    :goto_1
    return v0
.end method

.method synthetic lambda$updateVisibleEntries$2$com-android-launcher3-widget-picker-WidgetsListAdapter(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .locals 2
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 223
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry$Header;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 224
    invoke-static {p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->matchesKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry$Header;

    invoke-interface {v0}, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry$Header;->withWidgetListShown()Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v0, :cond_1

    .line 230
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mMaxSpanSize:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->withMaxSpanSize(I)Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    move-result-object v0

    return-object v0

    .line 232
    :cond_1
    return-object p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 158
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 275
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 276
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mViewHolderBinders:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/recyclerview/ViewHolderBinder;

    .line 281
    .local v0, "viewHolderBinder":Lcom/android/launcher3/recyclerview/ViewHolderBinder;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 284
    .local v1, "entry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 285
    .local v3, "listPos":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne p2, v4, :cond_1

    .line 286
    or-int/lit8 v3, v3, 0x2

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2, v3, p3}, Lcom/android/launcher3/recyclerview/ViewHolderBinder;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V

    .line 289
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/android/launcher3/R$id;->tag_widget_entry:I

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 290
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mViewHolderBinders:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/recyclerview/ViewHolderBinder;

    invoke-interface {v0, p1}, Lcom/android/launcher3/recyclerview/ViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public onHeaderClicked(ZLcom/android/launcher3/util/PackageUserKey;)V
    .locals 2
    .param p1, "showWidgets"    # Z
    .param p2, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 340
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    if-eqz p1, :cond_1

    .line 343
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 344
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 345
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_APP_EXPANDED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    .line 347
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 352
    :goto_0
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;

    .line 354
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->updateVisibleEntries()V

    .line 355
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mViewHolderBinders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/recyclerview/ViewHolderBinder;

    invoke-interface {v0, p1}, Lcom/android/launcher3/recyclerview/ViewHolderBinder;->unbindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 304
    return-void
.end method

.method public resetExpandedHeader()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 269
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->updateVisibleEntries()V

    .line 271
    :cond_0
    return-void
.end method

.method public setFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mFilter:Ljava/util/function/Predicate;

    .line 167
    return-void
.end method

.method public setMaxHorizontalSpansPerRow(I)V
    .locals 0
    .param p1, "maxHorizontalSpans"    # I

    .line 424
    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mMaxSpanSize:I

    .line 425
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->updateVisibleEntries()V

    .line 426
    return-void
.end method

.method public setWidgets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p1, "tempEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;

    invoke-direct {v1}, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRowComparator:Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 197
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->shouldClearVisibleEntries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->updateVisibleEntries()V

    .line 201
    return-void
.end method

.method public setWidgetsOnSearch(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "searchResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    .line 208
    return-void
.end method

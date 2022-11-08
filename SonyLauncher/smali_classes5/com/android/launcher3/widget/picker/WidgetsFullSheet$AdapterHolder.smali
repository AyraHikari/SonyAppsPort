.class final Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
.super Ljava/lang/Object;
.source "WidgetsFullSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdapterHolder"
.end annotation


# static fields
.field static final PRIMARY:I = 0x0

.field static final SEARCH:I = 0x2

.field static final WORK:I = 0x1


# instance fields
.field private final mAdapterType:I

.field private final mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

.field private final mWidgetsListItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;


# direct methods
.method public static synthetic $r8$lambda$yt3XBqzdUfKiqWZrNBd0PUZB40E(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->getEmptySpaceHeight()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdapterType(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mAdapterType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidgetsListAdapter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidgetsRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-object p0
.end method

.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V
    .locals 10
    .param p2, "adapterType"    # I

    .line 774
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput p2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mAdapterType:I

    .line 777
    invoke-virtual {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 778
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    .line 779
    .local v8, "apps":Lcom/android/launcher3/LauncherAppState;
    new-instance v9, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    .line 781
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 782
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    move-object v0, v9

    move-object v1, v7

    move-object v5, p1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/icons/IconCache;Ljava/util/function/IntSupplier;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v9, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    .line 786
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setHasStableIds(Z)V

    .line 787
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 792
    :pswitch_0
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->-$$Nest$fgetmWorkWidgetsFilter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setFilter(Ljava/util/function/Predicate;)V

    .line 793
    goto :goto_0

    .line 789
    :pswitch_1
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->-$$Nest$fgetmPrimaryWidgetsFilter(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setFilter(Ljava/util/function/Predicate;)V

    .line 790
    nop

    .line 797
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 800
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 801
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEmptySpaceHeight()I
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->-$$Nest$fgetmSearchScrollController(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/SearchAndRecommendationsScrollController;->getHeaderHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 808
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    .line 809
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 810
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 811
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setHeaderViewDimensionsProvider(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;)V

    .line 812
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 813
    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$200(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/views/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v1

    .line 812
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 817
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mAdapterType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->-$$Nest$fgetmBindScrollbarInSearchMode(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->-$$Nest$fgetmMaxSpansPerRow(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPerRow(I)V

    .line 821
    return-void
.end method

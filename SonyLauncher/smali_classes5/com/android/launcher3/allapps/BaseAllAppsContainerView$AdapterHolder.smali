.class public Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;
.super Ljava/lang/Object;
.source "BaseAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/BaseAllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterHolder"
.end annotation


# static fields
.field public static final MAIN:I = 0x0

.field public static final SEARCH:I = 0x2

.field public static final WORK:I = 0x1


# instance fields
.field public final mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final mPadding:Landroid/graphics/Rect;

.field mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private final mType:I

.field final ownOrderAppsList:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

.field final synthetic this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/BaseAllAppsContainerView;
    .param p2, "type"    # I

    .line 873
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    .line 874
    iput p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mType:I

    .line 875
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    .line 876
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->isSearch()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmAllAppsStore(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v2

    .line 877
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->isWork()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmWorkManager(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/WorkProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAdapterProvider()Lcom/android/launcher3/allapps/WorkAdapterProvider;

    move-result-object v3

    :cond_1
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 878
    new-instance v1, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    iget-object v2, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmAllAppsStore(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v3

    .line 879
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->isWork()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Z)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->ownOrderAppsList:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    .line 882
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->isWork()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/launcher3/allapps/BaseAdapterProvider;

    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmMainAdapterProvider(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmWorkManager(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/WorkProfileManager;

    move-result-object v3

    .line 883
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAdapterProvider()Lcom/android/launcher3/allapps/WorkAdapterProvider;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_1

    .line 884
    :cond_2
    new-array v2, v4, [Lcom/android/launcher3/allapps/BaseAdapterProvider;

    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmMainAdapterProvider(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v4

    aput-object v4, v2, v3

    :goto_1
    nop

    .line 886
    .local v2, "adapterProviders":[Lcom/android/launcher3/allapps/BaseAdapterProvider;
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->createAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 887
    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    .line 888
    invoke-virtual {v1, v3}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    .line 889
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 890
    return-void
.end method

.method private isSearch()Z
    .locals 2

    .line 923
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWork()Z
    .locals 2

    .line 919
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method applyPadding()V
    .locals 6

    .line 908
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_1

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "bottomOffset":I
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->isWork()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmWorkManager(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/WorkProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmInsets(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-static {v2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmWorkManager(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/WorkProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setPadding(IIII)V

    .line 916
    .end local v0    # "bottomOffset":I
    :cond_1
    return-void
.end method

.method setup(Landroid/view/View;Ljava/util/function/Predicate;)V
    .locals 3
    .param p1, "rv"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 893
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<TT;>.AdapterHolder;"
    .local p2, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateItemFilter(Ljava/util/function/Predicate;)V

    .line 894
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 895
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 896
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/sonymobile/launcher/allapps/AppsList;)V

    .line 897
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 898
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 899
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setHasFixedSize(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->-$$Nest$fgetmScrollListener(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 901
    new-instance v0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    .line 902
    .local v0, "focusedItemDecorator":Lcom/android/launcher3/keyboard/FocusedItemDecorator;
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 903
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 904
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 905
    return-void
.end method

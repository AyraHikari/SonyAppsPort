.class Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentEventDispatcher"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dispatchMaxLifecyclePreUpdated(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Ljava/util/List;
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "maxState"    # Landroidx/lifecycle/Lifecycle$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/lifecycle/Lifecycle$State;",
            ")",
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;",
            ">;"
        }
    .end annotation

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;>;"
    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;

    .line 820
    .local v2, "callback":Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;
    invoke-virtual {v2, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->onFragmentMaxLifecyclePreUpdated(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v2    # "callback":Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;
    goto :goto_0

    .line 822
    :cond_0
    return-object v0
.end method

.method public dispatchPostEvents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;",
            ">;)V"
        }
    .end annotation

    .line 826
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    .line 827
    .local v1, "entry":Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;
    invoke-interface {v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;->onPost()V

    .line 828
    .end local v1    # "entry":Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;
    goto :goto_0

    .line 829
    :cond_0
    return-void
.end method

.method public dispatchPreAdded(Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;",
            ">;"
        }
    .end annotation

    .line 832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;>;"
    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;

    .line 834
    .local v2, "callback":Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;
    invoke-virtual {v2, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->onFragmentPreAdded(Landroidx/fragment/app/Fragment;)Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    .end local v2    # "callback":Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;
    goto :goto_0

    .line 836
    :cond_0
    return-object v0
.end method

.method public dispatchPreRemoved(Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;",
            ">;"
        }
    .end annotation

    .line 840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;>;"
    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;

    .line 842
    .local v2, "callback":Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;
    invoke-virtual {v2, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->onFragmentPreRemoved(Landroidx/fragment/app/Fragment;)Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    .end local v2    # "callback":Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;
    goto :goto_0

    .line 844
    :cond_0
    return-object v0
.end method

.method public registerCallback(Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;

    .line 809
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    return-void
.end method

.method public unregisterCallback(Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;

    .line 813
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 814
    return-void
.end method

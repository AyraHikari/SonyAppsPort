.class Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDiffCallback"
.end annotation


# instance fields
.field private final mNewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mOldList:Ljava/util/List;

    .line 342
    iput-object p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mNewList:Ljava/util/List;

    .line 343
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isContentSame(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 2
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isSameAs(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Z

    move-result v0

    return v0
.end method

.method public getNewListSize()I
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

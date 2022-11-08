.class public Lcom/android/launcher3/util/RunnableList;
.super Ljava/lang/Object;
.source "RunnableList.java"


# instance fields
.field private mDestroyed:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/RunnableList;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 32
    if-nez p1, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/RunnableList;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public executeAllAndClear()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    .line 60
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/util/RunnableList;->mList:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 62
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public executeAllAndDestroy()V
    .locals 1

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/RunnableList;->mDestroyed:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndClear()V

    .line 52
    return-void
.end method
